FROM node:14 AS Production
ENV NODE_ENV=Production
WORKDIR /app

COPY . /app
RUN npm install 
RUN npm run build
EXPOSE 3000
CMD node index.tsx
