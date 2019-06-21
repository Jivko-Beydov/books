REM npm install -g gitbook-cli

rmdir /s /q _book

call gitbook install

call gitbook build . --log=debug --debug

git clone https://github.com/SoftUni/Programming-Basics-Book-JS-BG -b gh-pages _gh-pages

xcopy /s /y _book _gh-pages

cd _gh-pages

git add .

git status

git commit -m "Book web site deployment"

git push

pause
