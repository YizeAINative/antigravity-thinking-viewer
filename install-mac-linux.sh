#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="$SCRIPT_DIR/thinking-viewer"
DEST="$HOME/.gemini/config/plugins/thinking-viewer"

if [[ ! -f "$SRC/plugin.json" ]]; then
  echo "[错误] 未找到插件目录: $SRC"
  echo "请先解压压缩包后再运行本脚本。"
  exit 1
fi

mkdir -p "$HOME/.gemini/config/plugins"
rm -rf "$DEST"
cp -R "$SRC" "$DEST"

echo "[安装成功] 插件已复制到: $DEST"
echo "无需重启 Antigravity，新建一个对话窗口即可看到中文实时思考过程。"
