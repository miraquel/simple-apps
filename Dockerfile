FROM 18.19.0-buster
RUN apt-get update && apt-get install -y
WORKDIR /app
ADD . /app/
RUN npm install
CMD ["npm", "start"]