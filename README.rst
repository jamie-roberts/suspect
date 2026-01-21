suspect
-------

Suspect is a Python package for processing MR spectroscopy data. It supports reading data from most common formats (with more on the way) and many different algorithms for core processing steps. Suspect allows researchers to build custom data processing scripts from reliable, modular building blocks and easily share their techniques with other labs around the world. This version is a fork, if you have stumbled on this from the web and are looking for the suspect package and support then go to the source https://github.com/openmrslab/suspect.

Installation (On Linux)
^^^^^^^^^^^^

# Dev installation (python 3.12 for now)

git clone https://github.com/jamie-roberts/suspect.git

cd suspect

python3 -m venv --upgrade-deps .venv

.venv/bin/pip install -r requirements.txt

.venv/bin/pip install -e .

# Or if not developing source code just install straight from github using pip

pip install git+https://github.com/jamie-roberts/suspect.git

Getting Started
^^^^^^^^^^^^^^^

Suspect is still a young package, this version is a fork and under development, if you want support go to the source https://github.com/openmrslab/suspect. Documentation for the project is available at http://suspect.readthedocs.io/en/latest/

License
^^^^^^^

Suspect is released under the MIT license
