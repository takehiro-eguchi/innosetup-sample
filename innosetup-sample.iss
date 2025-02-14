; 定数
#define APP_NAME "InnoSetupサンプルアプリ"
#define SRC_DIR "Source"
#define SRC_IMG_DIR SRC_DIR + "\img"
#define OUT_DIR "Output"

[Setup]
AppName={#APP_NAME}
AppVerName={#APP_NAME} version 0.0
DefaultDirName={localappdata}\InnoSetup-Sample
DefaultGroupName=サンプルグループ
UninstallDisplayIcon={app}\hello.txt
Compression=lzma
SolidCompression=yes
OutputBaseFilename=innosetup-sample
VersionInfoVersion=2.11.2345.5678
VersionInfoDescription=InnoSetupサンプルアプリの初期インストーラ
SourceDir=.
SetupIconFile={#SRC_IMG_DIR}\app.ico
WizardImageFile={#SRC_IMG_DIR}\app.bmp
OutputDir={#OUT_DIR}

[Languages]
Name: jp; MessagesFile: "compiler:Languages\Japanese.isl"

[Tasks]
Name: "task1"; Description: "タスク1を実行する"; Flags: unchecked
Name: "task2_1"; Description: "タスク2-1を実行する"; GroupDescription: "タスク2：";
Name: "task2_2"; Description: "タスク2-2を実行する"; GroupDescription: "タスク2：";

[Files]
Source: "{#SRC_DIR}\hello.txt"; DestDir: "{app}"
Source: "{#SRC_DIR}\README.md"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\InnoSetupサンプルアプリ"; Filename: "{app}\hello.txt"