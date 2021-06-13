"""A collection of simple bandit algorithms for comparison purposes."""

import math

from collections import defaultdict
from typing import Any, Dict, Tuple, Sequence, Optional, cast, Hashable

from coba.simulations import Context, Action
from coba.statistics import OnlineVariance
from coba.learners.core import Learner, Key
from chachacopy import ChaChaBandit
# from flaml import ChaChaBandit

# create two subclasses corresponding to supervsde and bandots. Their own predict 1)champion in first
# 2) average in second menthods. CI --> lower bound; upper bound; point estimate.
# Change live models becasue of computational and resource considerations.
# Think top down. Start with the higherlevel pictures

class ChachaProxyLearner(Learner):
    """A Learner implementation that selects an action at random and learns nothing."""

    def __init__(self, chachaargs = [], chachakwargs = {}):
        self.chachaargs = chachaargs
        self.chachakwargs = chachakwargs
        self._chacha = None
    
    @property
    def chacha(self):
        
        if self._chacha is None:
            self._chacha = ChaChaBandit(*self.chachaargs, **self.chachakwargs)

        return self._chacha
    
    @property
    def family(self) -> str:
        """The family of the learner.

        See the base class for more information
        """  
        return "ChachaProxy"

    @property
    def params(self) -> Dict[str, Any]:
        """The parameters of the learner.
        
        See the base class for more information
        """
        return {}

    def predict(self, key: Key, context: Context, actions: Sequence[Action]) -> Sequence[float]:
        """Choose a random action from the action set.
        
        Args:
            key: The key identifying the interaction we are choosing for.
            context: The context we're currently in. See the base class for more information.
            actions: The actions to choose from. See the base class for more information.

        Returns:
            The probability of taking each action. See the base class for more information.
        """

        # for supervised just pick the best for bandit pick average
        return self.chacha.predict(context, actions) 

    def learn(self, key: Key, context: Context, action: Action, reward: float, probability: float) -> None:
        """Learns nothing.

        Args:
            key: The key identifying the interaction this observed reward came from.
            context: The context we're learning about. See the base class for more information.
            action: The action that was selected in the context. See the base class for more information.
            reward: The reward that was gained from the action. See the base class for more information.
            probability: The probability that the given action was taken.
        """
        self.chacha.learn(context, action, reward, probability) 
