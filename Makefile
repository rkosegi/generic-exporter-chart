# Copyright 2024 Richard Kosegi
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

VERSION = $(shell cat VERSION)
VER_PARTS   := $(subst ., ,$(VERSION))
VER_MAJOR	:= $(word 1,$(VER_PARTS))
VER_MINOR   := $(word 2,$(VER_PARTS))
VER_PATCH   := $(word 3,$(VER_PARTS))
VER_NEXT_PATCH    := $(VER_MAJOR).$(VER_MINOR).$(shell echo $$(($(VER_PATCH)+1)))

bump-patch-version:
	@echo Current: $(VERSION)
	@echo Next: $(VER_NEXT_PATCH)
	@echo "$(VER_NEXT_PATCH)" > VERSION
	sed -i 's/^appVersion: .*/appVersion: v$(VER_NEXT_PATCH)/g' chart/Chart.yaml
	sed -i 's/^version: .*/version: $(VER_NEXT_PATCH)/g' chart/Chart.yaml
	git add -- VERSION chart/Chart.yaml
	git commit -sm "Bump version to $(VER_NEXT_PATCH)"

git-tag:
	git tag -am "Release v$(VERSION)" v$(VERSION)

new-release:
	$(MAKE) bump-patch-version
	$(MAKE) git-tag

gen-docs:
	cd chart && frigate gen . > README.md

lint:
	pre-commit run --all-files

.PHONY: lint gen-docs bump-patch-version
