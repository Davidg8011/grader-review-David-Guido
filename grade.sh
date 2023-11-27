CPATH='.:../lib/hamcrest-core-1.3.jar:../lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'
if [[ -f ./student-submission/ListExamples.java ]]
then 
    cp -r ./TestListExamples.java ./grading-area
    cp -r ./student-submission/ListExamples.java ./grading-area

    cd grading-area/
    echo 'Finished cloning2'
    javac -cp $CPATH *.java
    echo 'Finished cloning54'
    java -cp $CPATH org.junit.runner.JUnitCore TestListExample
    echo 'Finished cloning3'
else
echo 'TestListExamples.java was not found'

fi

# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
