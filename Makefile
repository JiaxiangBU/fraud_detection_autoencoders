SRC = $(wildcard ./*.ipynb)

all: fraud_detection_autoencoders docs

fraud_detection_autoencoders: $(SRC)
	nbdev_build_lib
	touch fraud_detection_autoencoders

docs: $(SRC)
	nbdev_build_docs
	touch docs

test:
	nbdev_test_nbs

pypi: dist
	twine upload --repository pypi dist/*

dist: clean
	python setup.py sdist bdist_wheel

clean:
	rm -rf dist