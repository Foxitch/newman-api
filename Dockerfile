FROM node:16.13

RUN npm install -g newman newman-reporter-htmlextra

WORKDIR /opt/api/

COPY . .

CMD ["./run_tests.sh"]
