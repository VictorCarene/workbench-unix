all: readme

readme: 
	echo "Project_1 for \"The Unix Workbench Week 4\"" >README.md
	echo -n "README.md was created: " >> README.md
	date >> README.md
	echo -n "The number of lines of code contained in guessinggame.sh: " >> README.md
	wc -l < ./guessinggame.sh >> README.md
