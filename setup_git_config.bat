@echo off
:: Downloads .gitignore and .gitattributes from your Gists

:: Replace these with your actual raw Gist URLs
set "gist_ignore=https://gist.githubusercontent.com/aurkoroy/6200d096c63f831def7b92cdf54a43c8/raw/.gitignore"
set "gist_attr=https://gist.githubusercontent.com/aurkoroy/d18bd2bf1ffd78059b4608109cab8cd5/raw/.gitattributes"

echo Downloading .gitignore ...
powershell -Command "Invoke-WebRequest '%gist_ignore%' -OutFile '.gitignore'"

echo Downloading .gitattributes ...
powershell -Command "Invoke-WebRequest '%gist_attr%' -OutFile '.gitattributes'"

git init -b main
git-lfs install

echo Done! Files saved to %cd%
pause
