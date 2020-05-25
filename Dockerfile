FROM klakegg/hugo:0.71.1-onbuild AS hugo

FROM nginx:1.17.10-alpine
COPY --from=hugo /target /usr/share/nginx/html
