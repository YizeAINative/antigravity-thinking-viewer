# Antigravity Thinking Viewer（中文实时思考过程插件）

让 Google Antigravity（`agy`）在**所有对话窗口、所有项目**里，直接用**简体中文**实时展示思考过程，打破黑盒静默执行与默认折叠。

---

## 效果预览

安装并启用后，Antigravity 会在两处直接展示中文思考：

1. **调用工具前的实时思考**：每次准备读文件、搜索、运行命令、调用 MCP 前，都会先输出 1–3 句 `💭 ...` 中文思路，实时说明发现了什么线索、当前怎么判断、为什么调用该工具。
2. **正式回答开头的完整思考区块**：每次回复最上方默认展开：

> **💭 思考过程**
> - **需求理解**：用一句话概括用户真正想解决的问题。
> - **关键判断**：列出本次思考的核心依据、排查线索、方案对比或避坑点。
> - **行动结论**：一句话说明为什么采用当前方案。

---

## 快速安装

### 方式一：下载后一键脚本安装（推荐）

点击本仓库右上角 **Code → Download ZIP** 下载并解压，或直接 `git clone`：

```bash
git clone https://github.com/YizeAINative/antigravity-thinking-viewer.git
cd antigravity-thinking-viewer
```

* **Windows**：直接双击运行 **`一键安装-Windows.bat`**，看到「安装成功」即可。
* **macOS / Linux**：在终端执行：
  ```bash
  bash install-mac-linux.sh
  ```

### 方式二：手动复制安装

将本仓库中的 **`thinking-viewer`** 整个文件夹，复制到本机 Antigravity 全局插件目录：

* **Windows**：`%USERPROFILE%\.gemini\config\plugins\thinking-viewer\`
* **macOS / Linux**：`~/.gemini/config/plugins/thinking-viewer/`

安装后的目录结构：

```text
~/.gemini/config/plugins/thinking-viewer/
├── plugin.json
├── assets/
│   └── logo.svg
└── rules/
    └── AGENTS.md
```

---

## 使用、自定义与管理

* **无需重启**：复制完成后 Antigravity 会自动发现并默认启用，对**所有对话窗口与项目全局生效**。
* **验证方法**：**新建一个对话窗口**，让它查一个本地文件或搜一个问题，即可看到每步工具调用前的 `💭 ...` 实时思考，以及回答开头的「💭 思考过程」。
  > 提示：已经聊了上百步的超长旧窗口可能受历史格式惯性影响，建议在新窗口测试。
* **随时开关 / 卸载**：在 Antigravity 左侧 **Skills & Customizations（插件管理）** 中找到 **思考过程（thinking-viewer）** 即可一键启停或卸载；手动卸载只需删除 `thinking-viewer` 文件夹。
* **自定义格式**：直接编辑 `thinking-viewer/rules/AGENTS.md`（或已安装目录下的同名文件），可自由调整思考详略、排版或语气，保存后下一轮对话生效。

---

## 特点与说明

* **零侵入 / 零后台进程**：纯官方标准插件规则包，不修改客户端安装文件、不注入进程、不占内存、不影响客户端自动更新。
* **关于单步纯问答的边界说明**：模型在吐出第一个字之前的隐藏 `<thought>` 推理流由 Antigravity 客户端 UI 控制；本插件通过规则约束确保**每次调工具前实时吐出中文思路**、并在**正式回答开头第一时间展示完整中文思考过程**。

---

## License

[MIT](./LICENSE)
