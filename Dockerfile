FROM nginx:alpine

ENV BACKEND_HOST=openjob-server

COPY dist /usr/share/nginx/html
COPY default.conf.template /etc/nginx/templates/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
