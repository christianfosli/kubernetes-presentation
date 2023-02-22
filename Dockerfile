FROM node:lts
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm ci
COPY . .
RUN npm run build

FROM nginx:stable
COPY --from=0 /usr/src/app/dist /usr/share/nginx/html
EXPOSE 80