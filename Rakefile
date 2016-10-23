task :publish do
  sh 'bundle exec jekyll build'
  sh 'aws s3 cp --recursive _site/ s3://partnershipgarden.org/ --region us-west-2 --acl public-read'
end
