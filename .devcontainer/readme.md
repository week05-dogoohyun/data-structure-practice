# Dockerfile 있는 디렉토리에서 빌드
docker build --platform=linux/amd64 -t ubuntu-dev .

# 실행방법
docker run --platform=linux/amd64 -it ubuntu-dev