FROM nginx:alpine

COPY index.html style.css profile.jpg /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx","-g","daemon off;"]
