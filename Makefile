update:
	git pull
	#git submodule update --recursive --remote
	git submodule foreach git pull origin main
