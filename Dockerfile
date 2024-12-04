# 베이스 이미지를 nginx:alpine으로 설정 (경량화 이미지)
FROM nginx:stable-alpine-slim

# 설정 파일 복사
COPY default.conf /etc/nginx/conf.d/default.conf

# 포트 8080 오픈
EXPOSE 8080

# Nginx 실행
CMD ["nginx", "-g", "daemon off;"]