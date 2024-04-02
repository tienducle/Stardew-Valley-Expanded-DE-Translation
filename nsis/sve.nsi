!include "MUI2.nsh"
#!include "LangFile.nsh"

Name "Stardew Valley Expanded - German Translation"
OutFile "stardew-valley-expanded-german-translation-installer.exe"

RequestExecutionLevel admin
SetCompressor lzma

# Define the installer sections
!define MUI_PAGE_CUSTOMFUNCTION_PRE prePageFunction
!define MUI_TEXT_DIRECTORY_TITLE "Stardew Valley Expanded Mod Verzeichnis"
!define MUI_TEXT_DIRECTORY_SUBTITLE " "
!define MUI_DIRECTORYPAGE_TEXT_TOP "Bitte den Pfad zum Stardew Valley Expanded Mod Verzeichnis angeben:"
!define MUI_DIRECTORYPAGE_TEXT_DESTINATION " "
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_LANGUAGE "German"

Function prePageFunction
	StrCpy $INSTDIR "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Mods\Stardew Valley Expanded"
FunctionEnd

Section "Stardew Valley Expanded - German Translation files"
	SetOutPath "$INSTDIR\[CP] Stardew Valley Expanded\assets\SecretNotes"
	File /r "..\Stardew Valley Expanded\[CP] Stardew Valley Expanded\assets\SecretNotes\SecretNotesImages.png"
	SetOutPath "$INSTDIR\[CP] Stardew Valley Expanded\i18n"
	File /r "..\Stardew Valley Expanded\[CP] Stardew Valley Expanded\i18n\de.json"
	SetOutPath "$INSTDIR\..\Stardew Valley Expanded - German Translation"
	File /r "..\Stardew Valley Expanded - German Translation\*.*"
SectionEnd
