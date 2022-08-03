FROM node:alpine
COPY app/ /app
WORKDIR /app
RUN npm install
RUN apk add --update python3 curl  which bash 
RUN curl -sSL https://sdk.cloud.google.com | bash 
ENV PATH $PATH:/root/google-cloud-sdk/bin
RUN gcloud version
CMD ["npm", "start"]