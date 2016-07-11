set MSBuild=%ProgramFiles%\MSBuild\12.0\Bin\MSBuild.exe

@if exist "%MSBuild%" @set MSBuild=%ProgramFiles%\MSBuild\14.0\Bin\MSBuild.exe
@if not exist "%MSBuild%" @set MSBuild=%ProgramFiles%\MSBuild\15.0\Bin\MSBuild.exe
@if not exist "%MSBuild%" @set MSBuild=%ProgramFiles(x86)%\MSBuild\12.0\Bin\MSBuild.exe

@REM nuget restore WindowsAPICodePack.sln

"%MSBuild%" /v:m WindowsAPICodePack.sln

@PAUSE