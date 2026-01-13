@echo off
echo Installing Quarto...
curl -L https://github.com/quarto-dev/quarto-cli/releases/latest/download/quarto-windows-x64.zip -o quarto.zip
powershell -Command "Expand-Archive -Path quarto.zip -DestinationPath ."
set PATH=%CD%\quarto\bin;%PATH%
echo Quarto version:
quarto --version
echo Rendering Quarto site...
quarto render
echo Build completed successfully!