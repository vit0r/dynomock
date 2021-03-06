run-deploy: 
	find . -name '*.pyc' -delete 
	find . -name '__pycache__' -type d | xargs rm -fr	
	rm -fr *.egg *.egg-info/ dist/ build/ docs/_build/
run-linters:
	isort -rc dynomock
	black --check -v dynomock
