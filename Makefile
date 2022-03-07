build:
	docker build -t webman-loadtest .

dev:
	docker run -p 8787:8787 -it --rm --name webman-loadtest-running webman-loadtest