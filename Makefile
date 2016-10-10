install: clean
	cp -r fn-toggle.app /Applications/
	cp -r fn-toggle.workflow ~/Library/Services/

clean:
	rm -rf /Applications/{fn,fn-toggle}.app
	rm -rf ~/Library/Services/{fn,fn-toggle}.workflow
