﻿; Инструкция https://jrsoftware.org/ishelp/index.php

; Всегда меняются
#define GameName "Stellaris"                                          ; Название игры
#define GameNameDash "Stellaris"                                          ; Название игры
#define GameNameEXE "stellaris"                                                              ; Название exe файла игры
#define GameVer "3.4"                                                                     ; Версия игры
#define GameAppIdSteam "281990"                                                             ; Ид игры в стиме
; От ситуации зависит
#define AppDescription "DLC для Stellaris"                                     ; Описание программы
#define Typ "DLC"                                                                    ; Тип приложения
; Практически никогда не меняется
#define AppVer "1"                                                                        ; Версия установщика
#define Platz "D:\$RECYCLE.BIN\Bibliothek\Dokument\GitHub"                                                    ; Место
; Константы
#define Copyright "Folk"                                                                  ; (констант)Копирайт
#define AppPublisher "Russifiers for Humans"                                              ; (констант)Название инициативы
#define AppPublisherDash "Russifiers-for-Humans"                                              ; (констант)Название инициативы
#define PublisherURL "https://steamcommunity.com/id/TeMeR55"                              ; (констант)Ссылка на автора
#define AppURL "https://github.com/" + AppPublisherDash + "/" +GameNameDash + "-" + Typ +"/releases"        ; Ссылка на руководство
; Сложные переменные  
#define Location Platz + "\" + GameNameDash + "-" + Typ                                       ; Место нахождение соурса
#define OriginalNameSetup Typ + "-" + GameNameDash                        ; Оригинальное наименование приложения
#define AppNameAndDescript GameName + " - " + AppDescription                              ; Название программы и описание
#define ProductVerName AppNameAndDescript + " версии " + GameVer                             ; Название программы для какой версии игры в системе

#define UnArcivProg "7zG.EXE"
#define FolderUnArcivProg "7z"
#define Arciv "dlc018.zip.001"
#define Arciv2 "dlc020.zip.001"

[Setup]
;Номер приложения для его удаление лучше все время не забывать разный совать. Проверка уникальный для: Stellaris DLC
AppId={{4DA89010-2C05-45CD-9B4A-7785E5FFDEB7}
//--------------------------------------App's information and version--------------------------------------\\
;Свойства приложения
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
; Если установлено значение «да», программа установки отобразит флажок «Не создавать папку в меню «Пуск»
AllowNoIcons=yes
; Имя папки в меню «Пуск»
DefaultGroupName={#AppPublisher}
; Путь по умолчанию
DefaultDirName={code:GetInstallationPath}
; Название установщика
OutputBaseFilename={#OriginalNameSetup}
; Если установлено значение «нет», отключает уведомление об "Существующей папке"
DirExistsWarning=no
; Если установлено значение «да», включает уведомление об "Не существующей папке"
EnableDirDoesntExistWarning=yes
;Если установлено значение «нет», включает страницу "Мастер приветствует"
DisableWelcomePage=no    
;Если установлено значение «нет», включает страницу "Спасибо за установку"
DisableFinishedPage=no
//--------------------------------------Compression--------------------------------------\\
; Метод сжатия
Compression=lzma2/ultra64
; Если установлено значение «да»,включает сжатие в один поток(лучше сжимает, но проблем больше) 
SolidCompression=yes
LZMAUseSeparateProcess=yes
LZMADictionarySize=1048576
LZMANumFastBytes=273
//--------------------------------------Files--------------------------------------\\
;Путь к фалу Лицензии
LicenseFile={#Location}\Licence.rtf
;Путь к фалу Описание
InfoBeforeFile={#Location}\Description.rtf                      
;InfoAfterFile=infoafter.txt
;Путь к фалу Иконка
SetupIconFile={#Location}\Icon.ico
;Путь к фалу Сетап
OutputDir={#Location}\
;Путь к фалу Картинки
WizardImageFile={#Location}\Pic.bmp
;Путь к фалу Картинки
WizardSmallImageFile={#Location}\Pic.bmp

[Components]
Name: "dlc"; Description: "DLC"; Flags: checkablealone; Types: full
Name: "crack"; Description: "Crack"; Flags: checkablealone; Types: full

[Files]
; Ресурсы
Source: {#Location}\{#GameName}\dlc\*; DestDir: "{app}\dlc"; Components: dlc; Flags: ignoreversion recursesubdirs createallsubdirs
Source: {#Location}\{#GameName}\crack\*; DestDir: "{app}"; Components: crack; Flags: ignoreversion recursesubdirs createallsubdirs
Source: {#Location}\{#FolderUnArcivProg}\*; DestDir: "{tmp}"; Flags: deleteafterinstall
Source: {#Location}\{#GameName}\dlc-7z\*; DestDir: "{tmp}"; Flags: deleteafterinstall
[Icons]
;Ярлык
Name: "{userprograms}\{#AppPublisher}\{#GameName}\{cm:ProgramOnTheWeb,{#ProductVerName}}"; Filename: "{#AppURL}"
;Ярлык
Name: "{userprograms}\{#AppPublisher}\{#GameName}\{cm:UninstallProgram,{#ProductVerName}}"; Filename: "{uninstallexe}"
;Ярлык
Name: "{userprograms}\{#AppPublisher}\{#GameName}\{#GameName}"; Filename: "{app}\{#GameNameEXE}.exe"; WorkingDir: "{app}";
;Ярлык
Name: "{userdesktop}\Switcher Spacewar for {#GameName}"; Filename: "{app}\Switcher Spacewar.exe"; WorkingDir: "{app}\"; Tasks: DesktopIcon;

[Tasks]
Name: "DesktopIcon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Run]
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\{#Arciv} -y -o""{app}\dlc\dlc018_humanoids""" 
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\{#Arciv2} -y -o""{app}\dlc\dlc020_megacorp""" 

[UninstallDelete]
Type: files; Name: "{app}\dlc\dlc018_humanoids\dlc018.zip"
Type: files; Name: "{app}\dlc\dlc020_megacorp\dlc020.zip"
[Code]
var
  InstallationPath: string;

function GetInstallationPath(Param: string): string;
    
begin
  { Обнаруженный путь кэшируется, так как он вызывается несколько раз }
  
  if InstallationPath = '' then
  begin
    if RegQueryStringValue(
         HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App {#GameAppIdSteam}',
         'InstallLocation', InstallationPath) then
    begin
      Log('Detected Steam installation: ' + InstallationPath);
    end
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