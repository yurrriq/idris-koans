PKG   := koans
IDRIS ?= @idris

SRCS  := $(wildcard src/Koans/*.idr src/*.idr)

.PHONY: build

all: build

build:
	$(IDRIS) --build $(PKG).ipkg

clean:
	$(IDRIS) --clean $(PKG).ipkg

docs: $(SRCS)
	@rm -rf docs >/dev/null
	$(IDRIS) --mkdoc $(PKG).ipkg
	@mv $(PKG)_doc docs

test:
	$(IDRIS) --testpkg $(PKG).ipkg
