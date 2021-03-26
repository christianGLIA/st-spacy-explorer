#! usr/bin/bash

source env/bin/activate
pip3 install -r requirements.txt
python3 -m spacy download en_core_web_sm
streamlit run app.py
