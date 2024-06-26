FROM amazonlinux:latest
RUN dnf update -y && dnf install -y python pip
RUN mkdir /app && chmod +x app
WORKDIR /app
COPY src .
RUN pip install --no-cache-dir -r requirement.txt
EXPOSE 8000
CMD [ "python", "app.py" ]