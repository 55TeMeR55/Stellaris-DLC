; ���������� https://jrsoftware.org/ishelp/index.php

; ������ ��������
#define GameName "Stellaris"                                          ; �������� ����
#define GameNameDash "Stellaris"                                          ; �������� ����
#define GameNameEXE "stellaris"                                                              ; �������� exe ����� ����
#define GameVer "3.4"                                                                     ; ������ ����
#define GameAppIdSteam "281990"                                                             ; �� ���� � �����
#define AppURL "https://steamcommunity.com/sharedfiles/filedetails/?id=2807501073"        ; ������ �� �����������
; �� �������� �������
#define AppDescription "DLC ��� Stellaris"                                     ; �������� ���������
#define Typ "DLC"                                                                    ; ��� ����������
; ����������� ������� �� ��������
#define AppVer "1"                                                                        ; ������ �����������
#define Platz "D:\$RECYCLE.BIN\Bibliothek\Dokument\GitHub"                                                    ; �����
; ���������
#define Copyright "Folk"                                                                  ; (��������)��������
#define AppPublisher "Russifiers for Humans"                                              ; (��������)�������� ����������
#define PublisherURL "https://steamcommunity.com/id/TeMeR55"                              ; (��������)������ �� ������
; ������� ����������  
#define Location Platz + "\" + GameNameDash + "-" + Typ                                       ; ����� ���������� ������
#define OriginalNameSetup Typ + "-" + GameNameDash                        ; ������������ ������������ ����������
#define AppNameAndDescript GameName + " - " + AppDescription                              ; �������� ��������� � ��������
#define ProductVerName AppNameAndDescript + " ������ " + GameVer                             ; �������� ��������� ��� ����� ������ ���� � �������

//#define AppVer GetFileVersion('Setup.exe') 
#define UnArcivProg "7zG.EXE"
#define FolderUnArcivProg "7z"
#define Arciv "dlc018.zip.001"
#define Arciv2 "dlc020.zip.001"

[Setup]
;����� ���������� ��� ��� �������� ����� ��� ����� �� �������� ������ ������. �������� ���������� ���: Warrior Kings Russificier
AppId={{4DA89010-2C05-45CD-9B4A-7785E5FFDEB7}
//--------------------------------------App's information and version--------------------------------------\\
;�������� ����������
AppName={#AppNameAndDescript}                                                   
AppVersion={#AppVer}
AppVerName={#ProductVerName}
AppCopyright={#Copyright}
AppContact={#PublisherURL}
AppComments={#Typ}
AppPublisher={#AppPublisher}
AppPublisherURL={#PublisherURL}
AppSupportURL={#AppURL}
AppUpdatesURL={#AppURL}
AppReadmeFile={#AppURL}
VersionInfoCompany={#AppPublisher}
VersionInfoCopyright={#Copyright}
VersionInfoDescription={#AppDescription}
VersionInfoOriginalFileName={#OriginalNameSetup}  
VersionInfoProductName={#ProductVerName}
VersionInfoProductTextVersion={#AppVer}
VersionInfoVersion={#AppVer}     
//--------------------------------------Options--------------------------------------\\
; ���� ����������� �������� ���, ��������� ��������� ��������� ������ ��� ��������� ����� � ���� �����
AllowNoIcons=yes
; ��� ����� � ���� �����
DefaultGroupName={#AppPublisher}
; ���� �� ���������
DefaultDirName={code:GetInstallationPath}
; �������� �����������
OutputBaseFilename={#OriginalNameSetup}
; ���� ����������� �������� ����, ��������� ����������� �� "������������ �����"
DirExistsWarning=no
; ���� ����������� �������� ���, �������� ����������� �� "�� ������������ �����"
EnableDirDoesntExistWarning=yes
;���� ����������� �������� ����, �������� �������� "������ ������������"
DisableWelcomePage=no    
;���� ����������� �������� ����, �������� �������� "������� �� ���������"
DisableFinishedPage=no
//--------------------------------------Compression--------------------------------------\\
;DiskSpanning=true
;DiskSliceSize=314572800 / ������ � ������ ������ setup1.bin
; ����� ������
Compression=lzma2/ultra64
; ���� ����������� �������� ���,�������� ������ � ���� �����(����� �������, �� ������� ������) 
SolidCompression=yes
//--------------------------------------Files--------------------------------------\\
;���� � ���� ��������
LicenseFile={#Location}\Licence.rtf
;���� � ���� ��������
InfoBeforeFile={#Location}\Description.rtf                      
;InfoAfterFile=infoafter.txt
;���� � ���� ������
SetupIconFile={#Location}\Icon.ico
;���� � ���� �����
OutputDir={#Location}\
;���� � ���� ��������
WizardImageFile={#Location}\Pic.bmp
;���� � ���� ��������
WizardSmallImageFile={#Location}\Pic.bmp

; ������� ��� ������� � ����� ������
;PrivilegesRequired=lowest
;PrivilegesRequiredOverridesAllowed=commandline

;[Types]
;Name: "full"; Description: "������ ���������"
;Name: "compact"; Description: "Compact installation"
;Name: "custom"; Description: "Custom installation"; Flags: iscustom
;Name: "13"; Description: "1.3"; 
;Name: "14"; Description: "1.4"; 
;Name: "14+"; Description: "1.4+"; 

[Components]
//Flags: fixed   dontinheritcheck
;Name: "all"; Description: "��� DLC - ������ 3.04(���������) + ������������"; Types: full; Flags: fixed
Name: "dlc"; Description: "DLC"; Flags: checkablealone; Types: full
Name: "crack"; Description: "Crack"; Flags: checkablealone; Types: full
;Name: "smalldlcAHD"; Description: "������ �������, ������� AHD(American Civil War Spritepack DLC) "; Flags: checkablealone; Types: custom
;Name: "bigdlc"; Description: "������ '�������' DLC(A House Divided � Heart Of Darkness)"; Flags: checkablealone; Types: compact
;Name: "dlc"; Description: "��� DLC - ������ 3.04(���������)"; Flags: checkablealone; Types: custom 
;Name: "RUS13"; Description: "����������� ����� 1.3"; Flags: checkablealone ; Types: custom
;Name: "ENG14"; Description: "���� 1.4"; Flags: checkablealone ; Types: custom              *�����������*
;Name: "RUS14"; Description: "����������� ����� 1.4"; Flags: checkablealone ; Types: custom
;Name: "ENGAHD"; Description: "���� 2.31(DLC A House Divided)"; Flags: checkablealone ; Types: custom
;Name: "RUS231"; Description: "����������� ����� 2.31(DLC A House Divided)"; Flags: checkablealone ; Types: custom
;Name: "ENGHOD"; Description: "���� 3.03(DLC Heart Of Darkness)"; Flags: checkablealone ; Types: custom 
;Name: "RUS303"; Description: "����������� ����� 3.03(DLC Heart Of Darkness)"; Flags: checkablealone ; Types: custom
;Name: "ENG304"; Description: "���� 3.04(DLC Heart Of Darkness)"; Flags: checkablealone ; Types: custom
;Name: "RUS304"; Description: "������ ����������� ���������� ������(3.04))"; Flags: checkablealone ; Types: compact custom

;Name: "help"; Description: "Help File"; Types: full
;Name: "readme"; Description: "Readme File"; Types: full
;Name: "readme\en"; Description: "English"; Flags: exclusive

[Files]
; ����� Components ������ ����� �� ��������������� ����� ������� �������(����� ��������� ������ ���� ���� ��� ������� ����� ����� ����������)
Source: {#Location}\{#GameName}\dlc\*; DestDir: "{app}\dlc"; Components: dlc; Flags: ignoreversion recursesubdirs createallsubdirs
Source: {#Location}\{#GameName}\crack\*; DestDir: "{app}"; Components: crack; Flags: ignoreversion recursesubdirs createallsubdirs
Source: {#Location}\{#FolderUnArcivProg}\*; DestDir: "{tmp}"; Flags: deleteafterinstall
Source: {#Location}\{#GameName}\dlc-7z\*; DestDir: "{tmp}"; Flags: deleteafterinstall
;Source: {#Location}\{#GameName}\DLC\MusicPack\*; DestDir: "{app}"; Components: all dlc smalldlcMusik; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: {#Location}\{#GameName}\DLC\SpritePack\Vanilla\*; DestDir: "{app}"; Components: all dlc smalldlc; Flags: ignoreversion recursesubdirs createallsubdirs 
;Source: {#Location}\{#GameName}\1.4ENG\*; DestDir: "{app}"; Components: all dlc bigdlc ENG14 ENGAHD ENGHOD ENG304; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: {#Location}\{#GameName}\DLC\AHouseDivided\*; DestDir: "{app}"; Components: all dlc bigdlc ENGAHD ENGHOD ENG304; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: {#Location}\{#GameName}\DLC\SpritePack\AHD\*; DestDir: "{app}"; Components: all dlc smalldlcAHD; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: {#Location}\{#GameName}\DLC\HeartOfDarkness\*; DestDir: "{app}"; Components: all dlc bigdlc ENGHOD ENG304; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: {#Location}\{#GameName}\3.03Rem\*; DestDir: "{app}"; Components: all dlc ENGHOD ENG304 ; Flags: ignoreversion recursesubdirs createallsubdirs deleteafterinstall 
;Source: {#Location}\{#GameName}\3.04ENG\*; DestDir: "{app}"; Components: all dlc ENG304; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: {#Location}\{#GameName}\3.04Rem\*; DestDir: "{app}"; Components: all dlc ENG304 ; Flags: ignoreversion recursesubdirs createallsubdirs deleteafterinstall 
;Source: {#Location}\{#GameName}\Rem\*; DestDir: "{app}"; Components:; Flags: ignoreversion recursesubdirs createallsubdirs deleteafterinstall; Tasks:Movie 
;Source: {#Location}\{#GameName}\RemDoc\*; DestDir: "{userdocs}\Paradox Interactive\Victoria II"; Components: all ENGAHD ENGHOD ENG304 ; Flags: ignoreversion recursesubdirs createallsubdirs deleteafterinstall 

;Source: {#Location}\{#GameName}\1.3RUS\*; DestDir: "{app}"; Components: all RUS13 RUS14 RUS231 RUS303 RUS304; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: {#Location}\{#GameName}\1.4RUS\*; DestDir: "{app}"; Components: all RUS14 RUS231 RUS303 RUS304; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: {#Location}\{#GameName}\2.31RUS\*; DestDir: "{app}"; Components: all RUS231 RUS303 RUS304; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: {#Location}\{#GameName}\3.03RUS\*; DestDir: "{app}"; Components: all RUS303 RUS304; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: {#Location}\{#GameName}\3.04RUS\*; DestDir: "{app}"; Components: all RUS304; Flags: ignoreversion recursesubdirs createallsubdirs

;Source: {#Location}\{#GameName}\DLL\*; DestDir: "{app}"; Components: all dlc ENGAHD RUS231 ENGHOD RUS303 ENG304 RUS304; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: "MyProg.chm"; DestDir: "{app}"; Components: help
;Source: "Readme.txt"; DestDir: "{app}"; Components: readme\en; Flags: isreadme
; Source: "Readme-German.txt"; DestName: "Liesmich.txt"; DestDir: "{app}"; Components: readme\de; Flags: isreadme
; ����������: �� ����������� "�����: �������������" ��� ����� ����� ��������� ������

[Icons]
;�����
Name: "{userprograms}\{#AppPublisher}\{#GameName}\{cm:ProgramOnTheWeb,{#ProductVerName}}"; Filename: "{#AppURL}"
;�����
Name: "{userprograms}\{#AppPublisher}\{#GameName}\{cm:UninstallProgram,{#ProductVerName}}"; Filename: "{uninstallexe}"
;�����
Name: "{userprograms}\{#AppPublisher}\{#GameName}\{#GameName}"; Filename: "{app}\{#GameNameEXE}.exe"; WorkingDir: "{app}";
;
;Name: "{userdesktop}\{#GameName}"; Filename: "{app}\{#GameNameEXE}.exe"; WorkingDir: "{app}"; Tasks: DesktopIcon;
Name: "{userdesktop}\Switcher Spacewar for {#GameName}"; Filename: "{app}\Switcher Spacewar.exe"; WorkingDir: "{app}\"; Tasks: DesktopIcon;

[Tasks]
;Name: "Register" ; Description: "������ ���������� ������ ���� {#GameName} �� FullHD(1920x1080)?" ; GroupDescription: "{cm:AdditionalIcons}";Flags: unchecked;
Name: "DesktopIcon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Run]
; �� ��������� �������� ���������� � ������� ���������� ��������
; Description: "{cm:LaunchProgram, {#GameName}}"; Filename: "{app}\{#GameNameEXE}.exe"; WorkingDir: "{app}"; Flags: postinstall skipifsilent
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\{#Arciv} -y -o""{app}\dlc\dlc018_humanoids""" 
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\{#Arciv2} -y -o""{app}\dlc\dlc020_megacorp""" 

[registry]
; �������� ����� �������� ���������� �� FullHD � ���������� ������� ��������� � �������
;Root:HKA;Subkey:SOFTWARE\WOW6432Node\Black Cactus\Warrior Kings Battles\Renderer;ValueType: dword; ValueName:default_screen_height;ValueData:00001080;Tasks:Register;
;Root:HKA;Subkey:SOFTWARE\WOW6432Node\Black Cactus\Warrior Kings Battles\Renderer;ValueType: dword; ValueName:default_screen_width;ValueData:00001920;Tasks:Register;
[UninstallDelete]
Type: files; Name: "{app}\dlc\dlc018_humanoids\dlc018.zip"
Type: files; Name: "{app}\dlc\dlc020_megacorp\dlc020.zip"
[Code]
var
  InstallationPath: string;

function GetInstallationPath(Param: string): string;
    
begin
  { ������������ ���� ����������, ��� ��� �� ���������� ��������� ��� }
  
  if InstallationPath = '' then
  begin
    if RegQueryStringValue(
         HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App {#GameAppIdSteam}',
         'InstallLocation', InstallationPath) then
    begin
      Log('Detected Steam installation: ' + InstallationPath);
    end
    // ��� ���
    //  else
    //if RegQueryStringValue(
    //     HKLM32, 'SOFTWARE\GOG.com\Games\1196955511',
    //     'path', InstallationPath) then
    //begin
    //  Log('Detected GOG installation: ' + InstallationPath);
    //end
      else
    begin
      if IsWin64 then InstallationPath := ExpandConstant('{commonpf64}')
      else InstallationPath := ExpandConstant('{commonpf32}');
      InstallationPath:=InstallationPath +'/{#GameName}';
      Log('No installation detected, using the default path: ' + InstallationPath);
    end;
  end;
  Result := InstallationPath;
end;

[Languages]
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl";
;Name: "english"; MessagesFile: "compiler:Default.isl";