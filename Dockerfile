FROM alpine
RUN apk update && apk add nginx -y
EXPOSE 80
COPY index.html .
CMD ["service", "nginx", "start"]
