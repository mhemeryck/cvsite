FROM klakegg/hugo:0.71.1-onbuild AS hugo

FROM nginx:1.19.1-alpine
COPY --from=hugo /target /usr/share/nginx/html
# OVerwrite to get stub status metrics
COPY default.conf /etc/nginx/conf.d/default.conf
