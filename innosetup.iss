[Setup]
AppName=AtomicNotes
AppVersion=0.7.6
DefaultDirName={pf}\AtomicNotes
DefaultGroupName=AtomicNotes
OutputDir=output
OutputBaseFilename=AtomicNotesInstaller
Compression=lzma
SolidCompression=yes

[Files]
Source: "build\windows\x64\runner\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\AtomicNotes"; Filename: "{app}\app.exe"
Name: "{group}\Uninstall AtomicNotes"; Filename: "{uninstallexe}"