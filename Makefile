build:
	GOOS=linux GOARCH=amd64 go build \
		-v \
		-ldflags "-X main.version=${CIRCLE_TAG}" \
		-o timetrace .

clean:
	rm timetrace
