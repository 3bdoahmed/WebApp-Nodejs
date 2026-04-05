FROM node:alpine
WORKDIR /app
COPY webapp.js .
EXPOSE 3000
CMD ["node", "webapp.js"]