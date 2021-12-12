FROM python:3.10.0b4
EXPOSE 8501
COPY requirements.txt ./requirements.txt
RUN pip3 install -r requirements.txt
RUN python -m spacy download en_core_web_sm
COPY . .
CMD streamlit run app.py
