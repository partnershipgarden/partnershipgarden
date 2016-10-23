build:
	docker build -t partnershipgarden.org .

serve: 
	docker run -it -p 4000:4000 -v `pwd`:/code partnershipgarden.org jekyll serve

gen:
	docker run -it partnershipgarden.org bundle exec jekyll build

publish:
	docker run -it -v `pwd`/jekyll:/code aws aws s3 --region us-east-2 cp --recursive _site/ s3://partnershipgarden.org/ --acl public-read
