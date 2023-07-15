FROM racket/racket:8.8
WORKDIR /app
RUN apt install -y --no-install-recommends git
RUN git clone --depth=1 https://gitdab.com/cadence/breezewiki.git .
RUN raco pkg install --batch --auto --no-docs --skip-installed req-lib
RUN raco req -d
EXPOSE 10416
CMD ["racket", "dist.rkt"]
