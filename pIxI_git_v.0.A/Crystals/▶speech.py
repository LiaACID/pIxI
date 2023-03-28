from vosk import Model, KaldiRecognizer
import pyaudio

model = Model(r"/home/lia/Downloads/SpeechRecognition/vosk-model-small-en-us-0.15")
recognizer = KaldiRecognizer(model, 16000)

mic = pyaudio.PyAudio()
stream = mic.open(format=pyaudio.paInt16, channels=1, rate=16000, input=True, frames_per_buffer=8192)
stream.start_stream()

while True:
	data = stream.read(4096)
	
	if recognizer.AcceptWaveform(data):
		text = recognizer.Result()
		#text = recognizer.adjust_for_ambient_noise(source, duration 0,5)
		print(f"' {text[14:-3]} '")
		with open('crocodile.dat', 'w') as file:
			file.write(f"' {text[14:-3]} '")
