#!/bin/bash

for d in */ ; do
#  d="uhafner"
	echo "Update von $d"
	cd "$d" || exit
  ### Replace HTTPS connection with SSH
  sed -i -e 's+https.*@github.com/+git@github.com:+g' .git/config

#  git checkout -b tests
#  cp -R /Users/hafner/git/hochschule/pruefungen/java2-schein-solution/.github ./
#  cp -R /Users/hafner/git/hochschule/pruefungen/java2-schein-solution/src/main/java/edu/hm/hafner/java2/schein/PostalCode.java src/main/java/edu/hm/hafner/java2/schein/
#  cp -R /Users/hafner/git/hochschule/pruefungen/java2-schein-solution/src/main/java/edu/hm/hafner/java2/schein/Country.java src/main/java/edu/hm/hafner/java2/schein/
#  cp -R /Users/hafner/git/hochschule/pruefungen/java2-schein-solution/src/test/java/edu/hm/hafner/java2/schein/PostalCodeFactoryATest.java src/test/java/edu/hm/hafner/java2/schein/
#
#  git add src/*
#  git add .github/*
#
#  git commit -a -m "Added workflow and factory tests"
#  git push origin tests
#  gh pr create --title "Gesamtauswertung" --body "Die automatisierte Auswertung der Abgabe zeigt noch vorhandene Wissenslücken auf."

#    cp -vf /Users/hafner/Development/git/java-2-assignment-5/src/main/java/edu/hm/hafner/assignment/Human.java src/main/java/edu/hm/hafner/assignment/
#    git add src/test/java/edu/hm/hafner/assignment/ScoreBoardTest.java
#    git commit -a -m "Do not close standard input."
#    git push origin master
#    git checkout master

#    git checkout -b aufgabe1-master
#    rm -vf src/main/java/edu/hm/hafner/assignment/Student*.java
#    rm -vf src/main/java/edu/hm/hafner/assignment/Team*.java
#    rm -vf src/test/java/edu/hm/hafner/assignment/Student*.java
#    rm -vf src/test/java/edu/hm/hafner/assignment/Team*.java
#    cp -vf /Users/hafner/Development/git/java-2-assignment-2/.github/workflows/autograding.yml .github/workflows/autograding.yml
#    git commit -a -m "Aufgabe 1 separiert."
#    git push --force origin aufgabe1-master
#    gh pr create --base code-review --head aufgabe1-master --title "Aufgabe 1 Grading" --body "Autograding nur für Aufgabe 1 (eigene Tests und eigene Implementierung)."
#
#    git checkout master
#    git checkout -b aufgabe2-master
#    rm -vf src/main/java/edu/hm/hafner/assignment/PasswordChecker*.java
#    rm -vf src/test/java/edu/hm/hafner/assignment/PasswordChecker*.java
#    cp -vf /Users/hafner/Development/git/java-2-assignment-2/.github/workflows/autograding.yml .github/workflows/autograding.yml
#    git commit -a -m "Aufgabe 2 separiert."
#    git push --force origin aufgabe2-master
#    gh pr create --base code-review --head aufgabe2-master --title "Aufgabe 2 Grading" --body "Autograding nur für Aufgabe 2 (eigene Tests und eigene Implementierung)."

	  ### Create a code review pull request from the initial commit in master on branch code-review
    git checkout main
    git rev-list HEAD | tail -1 | xargs git branch code-review
    git push origin code-review
    gh pr create --base code-review --head main --title "Tutoren Review" --body "Unverbindliches Feedback vom Tutor. Bitte hier ein Feedback vom Tutor @Jeremy-Cstn anfordern. (Recht oben in der Ecke bei Review auswählen.)"


#    git checkout -b muster-loesung-klassen
#    cp -vf /Users/hafner/Development/git/java-2-assignment/src/main/java/edu/hm/hafner/assignment/PasswordChecker.java src/main/java/edu/hm/hafner/assignment/
#    cp -vf /Users/hafner/Development/git/java-2-assignment/src/main/java/edu/hm/hafner/assignment/TeamBuilder.java src/main/java/edu/hm/hafner/assignment/
#    cp -vf /Users/hafner/Development/git/java-2-assignment-2/.github/workflows/autograding-2-classes.yml .github/workflows/autograding.yml
#    git commit -a -m "Musterlösung Klassen"
#    git push --force origin muster-loesung-klassen

    ### Replace student tests with my grading tests and create a PR that shows the grading results
#    git checkout master
#    git branch -D muster-loesung-tests
#    git checkout -b muster-loesung-tests
#
#    rm -vf src/test/java/edu/hm/hafner/assignment/*Test.java
#    cp -vf /Users/hafner/Development/git/java-2-assignment/src/test/java/edu/hm/hafner/assignment/PasswordCheckerAbnahmeTest.java src/test/java/edu/hm/hafner/assignment/
#    cp -vf /Users/hafner/Development/git/java-2-assignment/src/test/java/edu/hm/hafner/assignment/TeamBuilderAbnahmeTest.java src/test/java/edu/hm/hafner/assignment/
#    git add src/test/java/edu/hm/hafner/assignment/PasswordCheckerAbnahmeTest.java
#    git add src/test/java/edu/hm/hafner/assignment/TeamBuilderAbnahmeTest.java
#
#
#    git pull
#    mkdir etc
#    cp -rvf /Users/hafner/Development/git/java-2-assignment-6/etc/* etc
#    git add etc
#    git commit -a -m "CheckStyle files ergänzt."
#    git push origin master
#    gh pr create --base master --head muster-loesung-tests --title "Musterlösung Tests" --body "Ergebnisse meiner Modultests - getrennt nach Aufgabe 1 und 2. Unten in den Checks sehen Sie die Auswertung, d.h. wie viele Tests waren erfolgreich, wie viele nicht. Diese Auswertung geht mit in die Gesamtwertung ein. Die Gewichtung muss ich noch festlegen."


#  git checkout -b abnahme
#  rm  src/test/java/ArchitectureTest.java
#   cp -vf /Users/hafner/Development/git/java-2-assignment-1/src/test/java/edu/hm/hafner/assignment/ArchitectureTest.java src/test/java/edu/hm/hafner/assignment/
#  cp -vf /Users/hafner/Development/git/modularbeit-uhafner/.github/workflows/autograding.yml .github/workflows/
#  cp -vf /Users/hafner/Development/git/modularbeit-uhafner/src/test/java/* src/test/java/

#    git add src/test/java/edu/hm/hafner/assignment/ArchitectureTest.java
#  	git commit -a -m "Add architecture tests"

#    git push --set-upstream origin
	cd ..
done
