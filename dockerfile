FROM node:22-bullseye-slim 
WORKDIR /app
COPY packaje.json .
RUN npm install
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm","start"]
