build:
	mdbook build

invalidate:
	 aws cloudfront create-invalidation --distribution-id E33RJHPNHZKM4J --paths "/*" --profile monkdocs 

sync:
	aws s3 sync ./book/ s3://monkdocs-296519309048 --profile monkdocs --delete

