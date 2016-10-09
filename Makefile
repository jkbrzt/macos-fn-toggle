install: clean
	cp -r fn.app /Applications/
	cp -r fn.workflow ~/Library/Services/

clean:
	rm -rf /Applications/fn.app
	rm -rf ~/Library/Services/fn.workflow
