.PHONY: run clean

run:
	./install-plugins.sh < plugins.txt
	./jenkins2.sh

clean:
	(cd home && ls -A | grep -v 'init.groovy.d' | grep -v 'jenkins.yaml' | xargs rm -rf)
	rm -rf copy.log
