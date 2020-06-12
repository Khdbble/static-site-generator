.PHONY: ssg quick clean

ssg: ssg.go
	go build ssg.go

clean:
	rm ./ssg *.html

preview: ssg
	./ssg test.md
	open test.html
