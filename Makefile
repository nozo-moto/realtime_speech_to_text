run:
	python3 main.py --model ./models/output_graph.pbmm --alphabet models/alphabet.txt --lm models/lm.binary --device 0

install:
	wget https://github.com/mozilla/DeepSpeech/releases/download/v0.5.1/deepspeech-0.5.1-models.tar.gz
	tar xvfz deepspeech-0.5.1-models.tar.gz -C ./models/
	python3 -m pip install -r requirements.txt

check_device:
	python3 check_device_number.py

