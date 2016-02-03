echo ON
D:
cd \pe-amxion\amxion-cucumber -watir\
cucumber features\ --tags @ServiceSourceSetup --format html --out watir-salesforce.html BROWSER=chrome
