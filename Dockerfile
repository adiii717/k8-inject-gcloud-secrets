FROM node
COPY app/ /app
WORKDIR /app
RUN npm install
CMD ["npm", "start"]