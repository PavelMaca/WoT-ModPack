@ECHO OFF

REM set variables
SET game_version=0.9.14.1
SET mod_version=2.0
SET output_file="%game_version%.Assassik.modpack.v%mod_version%.rar"
SET input_files=%game_version% configs mods modpack_version.json

REM Gen version file
ECHO {"game_version": "%game_version%", "mod_version": "%mod_version%"} > modpack_version.json

REM Delete old archive file
IF EXIST %output_file% (
	ECHO Deleting depracated file
	RM %output_file%
)

ECHO Creating new archive
"C:\Program Files\WinRAR\rar.exe" a -ap"res_mods" -x"*\%game_version%\res_audio" %output_file% %input_files%
"C:\Program Files\WinRAR\rar.exe" a -ep -ap"res/audio" %output_file% %game_version%/res_audio
REM "C:\Program Files\WinRAR\rar.exe" u %output_file% "../readme.markdown"
REM "C:\Program Files\WinRAR\rar.exe" c -z"archive-readme.txt" %output_file%

REM IF EXIST %output_file% (
REM	 ECHO Creating MD5 checksum
REM	 MD5SUM %output_file% > md5sum.txt
REM )

ECHO Done
PAUSE