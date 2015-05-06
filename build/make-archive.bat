@ECHO OFF

REM FIX: Post-Build Command are executed from /project dir
CD ../

REM set variables
SET game_varsion=0.9.7
SET mod_version=1.1
SET output_file="%game_varsion%.Assassik.modpack.v%mod_version%.rar"
SET input_files=%game_varsion% configs mods TeamHPPools.xml

REM Delete old archive file
IF EXIST %output_file% (
	ECHO Deleting depracated file
	RM %output_file%
)

ECHO Creating new archive
"C:\Program Files\WinRAR\rar.exe" a -ap"res_mods" -x"*\%game_varsion%\res_audio" %output_file% %input_files%
"C:\Program Files\WinRAR\rar.exe" a -ep -ap"res/audio" %output_file% %game_varsion%/res_audio
REM "C:\Program Files\WinRAR\rar.exe" u %output_file% "../readme.markdown"
REM "C:\Program Files\WinRAR\rar.exe" c -z"archive-readme.txt" %output_file%

IF EXIST %output_file% (
	ECHO Creating MD5 checksum
	MD5SUM %output_file% > md5sum.txt
)