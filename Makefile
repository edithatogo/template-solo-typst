.PHONY: verify format clean

verify:
	typstyle --check .
	mkdir -p build
	typst compile --root . main.typ build/main.pdf
	qpdf --check build/main.pdf
	pdftotext build/main.pdf - | grep -q '[^[:space:]]'

format:
	typstyle -i .

clean:
	rm -rf build
