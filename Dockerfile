FROM python:3.11-slimW
WORKDIR /DonorLink
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt 
COPY . .
EXPOSE 8000
CMD [ "UVICORN" , "app.main:app" , "--host" , "0.0.0"]
