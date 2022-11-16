choco upgrade chocolatey
choco install googlechrome firefox make git sbt jq wget vscode mariadb wireshark nodejs typescript ruby python golang dotnet awscli -y

taskkill /f /im OneDrive.exe
%SystemRoot%\SysWOW64\OneDriveSetup.exe /uninstall

wsl --install -d Ubuntu-22.04

refreshenv

npm install -g hexo-cli
