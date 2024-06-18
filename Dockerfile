FROM node:alpine as development
WORKDIR /app/
COPY . .
RUN npm install

FROM node:alpine
WORKDIR /app
COPY --from=development /app .
EXPOSE 3000
ENTRYPOINT [ "npm" ,"start" ]

