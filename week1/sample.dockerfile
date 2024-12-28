FROM nginx:1.21.0

ENV MY_ENV_VAR=my_value

EXPOSE 80

VOLUME ["/etc/nginx/conf.d"]

CMD ["nginx", "-g", "daemon off;"]
