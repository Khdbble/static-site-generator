.PHONY: ssg quick clean

ssg: ssg.go
	go build ssg.go

clean:
	rm ./ssg *.html

convert: ssg
	./ssg test.md
