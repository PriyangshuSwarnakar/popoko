[Setup]
AppName=Popoko
AppVersion=6.1
AppPublisher=Priyangshu Swarnakar
AppPublisherURL=https://github.com/priyangshu/popoko
AppCopyright=Copyright (C) 2025 Priyangshu Swarnakar
DefaultDirName={autopf}\Popoko
DefaultGroupName=Popoko
OutputDir=installer_output
OutputBaseFilename=Popoko_v6.1_Setup
SetupIconFile=popoko.ico
UninstallDisplayIcon={app}\Popoko.exe
Compression=lzma2/ultra64
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=lowest
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "Create a &desktop shortcut"; GroupDescription: "Additional icons:"

[Files]
Source: "dist\Popoko\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "popoko.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "README.md"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\Popoko"; Filename: "{app}\Popoko.exe"; IconFilename: "{app}\popoko.ico"
Name: "{group}\Uninstall Popoko"; Filename: "{uninstallexe}"
Name: "{autodesktop}\Popoko"; Filename: "{app}\Popoko.exe"; IconFilename: "{app}\popoko.ico"; Tasks: desktopicon

[Run]
Filename: "{app}\Popoko.exe"; Description: "Launch Popoko"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: filesandordirs; Name: "{app}"
