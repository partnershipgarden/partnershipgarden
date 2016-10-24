
serve: 
	cd jekyll
	docker run -it -v `pwd`/jekyll:/srv/jekyll -p 4000:4000 jekyll/jekyll jekyll serve

gen:
	cd jekyll
	docker run -it -v `pwd`/jekyll:/srv/jekyll jekyll/jekyll jekyll build

publish:
	docker run -it -v `pwd`/jekyll:/code aws aws s3 --region us-east-2 cp --recursive _site/ s3://partnershipgarden.org/ --acl public-read
