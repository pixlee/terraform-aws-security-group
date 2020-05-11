.PHONY: changelog release update

changelog:
	git-chglog -o CHANGELOG.md --next-tag `semtag final -s minor -o`

update:
	./update_groups.sh

release:
	semtag final -s minor

precommit:
	pre-commit run -a -v
