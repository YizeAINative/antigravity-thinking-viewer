@echo off
chcp 65001 >nul
setlocal

set "SRC=%~dp0thinking-viewer"
set "DEST=%USERPROFILE%\.gemini\config\plugins\thinking-viewer"

echo ==================================================
echo   Antigravity 中文实时思考插件 (thinking-viewer)
echo ==================================================
echo.

if not exist "%SRC%\plugin.json" (
    echo [错误] 未找到插件目录：%SRC%
    echo 请先将整个压缩包完整解压后再双击运行本脚本！
    echo.
    pause
    exit /b 1
)

if not exist "%USERPROFILE%\.gemini\config\plugins" (
    mkdir "%USERPROFILE%\.gemini\config\plugins"
)

if exist "%DEST%" (
    echo 检测到已安装旧版本，正在覆盖更新...
    rmdir /s /q "%DEST%"
)

xcopy "%SRC%" "%DEST%" /e /i /y /q >nul
if errorlevel 1 (
    echo [错误] 复制文件失败，请检查目录权限。
    pause
    exit /b 1
)

echo [安装成功] 插件已复制到：
echo   %DEST%
echo.
echo 下一步：
echo   1. 无需重启 Antigravity，插件会自动加载并启用。
echo   2. 新建一个对话窗口，发一条消息即可看到中文实时思考过程。
echo   3. 如需开关或卸载，在 Antigravity 左侧「自定义 / Plugins」中管理「思考过程」。
echo.
pause
