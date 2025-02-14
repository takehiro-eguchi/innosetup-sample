[Setup]
AppName=InnoSetupサンプルアプリ
AppVerName=InnoSetupサンプルアプリ version 0.0
DefaultDirName={localappdata}\InnoSetup-Sample
DefaultGroupName=サンプルグループ
UninstallDisplayIcon={app}\hello.txt
Compression=lzma
SolidCompression=yes

[Languages]
Name: jp; MessagesFile: "compiler:Languages\Japanese.isl"

[Files]
Source: "hello.txt"; DestDir: "{app}"
Source: "README.md"; DestDir: "{app}"; Flags: isreadme

[Icons]
Name: "{group}\InnoSetupサンプルアプリ"; Filename: "{app}\hello.txt"