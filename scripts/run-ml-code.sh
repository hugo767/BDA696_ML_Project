#!/usr/bin/env bash
chmod +x ./scripts/create-venv.sh
chmod +x ./scripts/run-tests.sh
chmod +x ./python_files/ml_on_iris_dataset.py
chmod +x ./requirements.dev.txt
chmod +x ./requirements.txt

source ./scripts/create-venv.sh
pip3 install --upgrade pip

pip3 install -r requirements.dev.txt
pip3 install -r requirements.txt
pre-commit install
pip-compile --output-file=requirements.dev.txt requirements.dev.in --upgrade

./python_files/ml_on_iris_dataset.py