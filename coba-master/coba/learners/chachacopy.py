class ChaCha:

	def __init__(self, scheduler, searcher, budget, model_factory):
		self._scheduler = scheduler
		self._searcher = searcher
		self._budget = budget
		self._model_factory = model_factory
		self._live_models = []
		self.maybe_add_models()

	@abstractmethod
	def predict(self, example):
		pass


	def learn(self, example, label):
		for m in self.live_models():
			m.update(example, label)

		# think more here
		self.maybe_pause_models()
		self.maybe_stop_models()
		self.maybe_add_models()

	@property
	def live_models():
		return self._live_models

	def maybe_pause_models():
		topause = set(m for m in self.live_models() if self._scheduler.should_pause(m))
		self._live_models = [ m for m in self.live_models() and m not in topause ]

		for m in topause:
			m.pause()
			self.scheduler.model_paused(m)

	def maybe_stop_models():
		tostop = set(m for m in self.live_models() if self.scheduler.should_stop(m))
		self._live_models = [ m for m in self.live_models() and m not in tostop ]

		for m in self.live_models():
			m.stop()
			self.scheduler.model_stopped(m)

	def maybe_add_models():

		while len(self._live_models) < self._budget:
			config = self._searcher.next_trial()
			model = self._model_factory(config)
			self._scheduler.model_added(model)
			self._live_models.append(model)


class ChaChaSupervised(ChaCha):

	class Prediction:
		def __init__(self):
			pass

	class Label:
		def __init__(self, label):
			self.label = label


	def predict(self, example):
		return self.best_model().predict(example)


class ChaChaBandit(ChaCha):

	class Prediction:
		def __init__(self):
			pass

	class Label:

		def __init__(self, action, reward, probability):
			self.action = action
			self.reward = reward
			self.probability = probability 

	def __init__(self):
		pass



	def predict(self, example):
		
		p, n = ChaChaBandit.Prediction(), 0
		for m in self.live_models():
			p += m.predict(example)
			n += 1

		return p / n