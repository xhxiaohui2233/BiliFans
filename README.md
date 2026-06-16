<<<<<<< HEAD
# BiliFans v2.0 - B站粉丝数 Rainmeter 皮肤

粉白磨砂玻璃风格，实时显示B站粉丝数据。

## ✨ 特性

- 🎨 **粉白高级配色** - 柔和渐变 + 磨砂玻璃效果
- 📐 **圆角设计** - 16px圆角，现代感十足
- 🔄 **实时数据** - 每60秒自动刷新
- 🎯 **自定义透明度** - 0-255任意调节
- 📝 **HarmonyOS Sans Bold** 字体

## 📦 安装

1. 复制 `BiliFans` 文件夹到：
   ```
   Documents\Rainmeter\Skins\
   ```
2. 右键Rainmeter托盘 → 刷新全部皮肤
3. 加载 `BiliFans.ini`

## ⚙️ 配置

编辑 `@Resources\Variables.inc`：

```ini
BiliUID=398497252    ; 你的B站UID
Opacity=220          ; 透明度 (0-255)
```

## 🎨 透明度预设

| 值 | 效果 |
|----|------|
| 77 | 30% - 高度透明 |
| 128 | 50% - 半透明 |
| 204 | 80% - 较不透明 |
| 255 | 100% - 完全不透明 |

## 📁 文件

```
BiliFans/
├── BiliFans.ini          ← 主皮肤
├── README.md
└── @Resources/
    ├── Variables.inc     ← 配置文件
    ├── BiliFans.lua      ← 数据获取脚本
    └── Settings.ini      ← 设置面板
```

## ⚠️ 注意

- 需要安装 [HarmonyOS Sans](https://developer.harmonyos.com/cn/design/resource) 字体
- 如未安装，可改为 `Microsoft YaHei UI`
- 需要curl命令（Windows自带）

## 👨‍💻 作者

B站: 小辉-XiaoHui | UID: 398497252
=======
# BiliFans - Bilibili Fan Counter Rainmeter Skin

> 一个简洁的 Rainmeter 桌面小组件，实时显示你的 B站粉丝数、关注数和获赞数。
>
> A clean Rainmeter desktop widget that displays your Bilibili followers, following, and likes in real time.

---

## 预览 / Preview

```
 [哔哩哔哩logo] 小辉-XiaoHui     ●
 ──────────────────────────────────
    粉丝        关注        获赞
     328         962       1.7K
```

- 白色半透明背景，圆角卡片 / White translucent background with rounded corners
- 自动获取 B站用户名 / Auto-fetches Bilibili username
- 大数字自动简写（可选）/ Large number abbreviation (optional)

---

## 安装 / Installation

1. 将整个 `BiliFans` 文件夹复制到 Rainmeter 的 Skins 目录：
   Copy the `BiliFans` folder to your Rainmeter Skins directory:
   ```
   Documents\Rainmeter\Skins\BiliFans
   ```

2. 打开 Rainmeter，在皮肤列表中启用 `BiliFans\BiliFans.ini`。
   Open Rainmeter and enable `BiliFans\BiliFans.ini` from the skin list.

3. 编辑 `@Resources\Variables.inc`，将 `BiliUID` 改成你自己的 B站 UID。
   Edit `@Resources\Variables.inc` and change `BiliUID` to your own Bilibili UID.

---

## 配置 / Configuration

编辑 `@Resources\Variables.inc` 文件：/ Edit the `@Resources\Variables.inc` file:

```ini
[Variables]
; 你的 B站 UID / Your Bilibili UID
; 打开个人主页, URL 中的数字即为 UID / Check your profile URL for the UID
; 例 / Example: space.bilibili.com/398497252 → UID = 398497252
BiliUID=398497252

; 字体 / Font
MyFont=Microsoft YaHei UI

; 数字简写开关 / Number abbreviation toggle
; 1=启用 (1000000→1.0M), 0=关闭 (显示逗号格式)
; 1=enabled (1000000→1.0M), 0=disabled (comma format)
AbbreviateNumbers=1
```

### 数字简写规则 / Abbreviation Rules

| 数值范围 / Range | 格式 / Format | 示例 / Example |
|---|---|---|
| ≥ 1,000,000,000 | X.XB | 1.5B |
| ≥ 1,000,000 | X.XM | 1.2M |
| ≥ 10,000 | X.XK | 15.0K |
| < 10,000 | 逗号格式 / comma | 1,234 |

---

## 文件结构 / File Structure

```
BiliFans/
├── BiliFans.ini                 # 主皮肤文件 / Main skin file
├── README.md
└── @Resources/
    ├── Variables.inc            # UID 和配置 / UID & config
    ├── Measures.inc             # B站 API 数据抓取 / Bilibili API data fetching
    ├── FormatFans.lua           # 粉丝数格式化 / Fans number formatting
    ├── FormatFollowing.lua      # 关注数格式化 / Following number formatting
    ├── FormatLikes.lua          # 获赞数格式化 / Likes number formatting
    └── bilibili.png             # 哔哩哔哩 logo
```

---

## 数据来源 / Data Source

通过 B站官方 API 获取数据：/ Fetches data from the official Bilibili API:

```
https://api.bilibili.com/x/web-interface/card?mid={UID}
```

每 60 秒自动刷新一次。/ Refreshes every 60 seconds.

获取的字段 / Fields fetched:
- `name` — 用户名 / Username
- `fans` — 粉丝数 / Followers
- `attention` — 关注数 / Following
- `like_num` — 获赞数 / Likes

---

## 自定义 / Customization

| 项目 / Item | 文件 / File | 说明 / Description |
|---|---|---|
| UID | `Variables.inc` | 修改 `BiliUID=` |
| 字体 | `Variables.inc` | 修改 `MyFont=` |
| 数字简写 | `Variables.inc` | 修改 `AbbreviateNumbers=` |
| 背景颜色 | `BiliFans.ini` | 修改 `Fill Color` 中的 RGBA 值 |
| 背景透明度 | `BiliFans.ini` | 修改 `Fill Color` 最后一个值 (0-255) |
| 刷新频率 | `Measures.inc` | 修改 `UpdateRate=` (单位/seconds) |
| Logo | `@Resources/` | 替换 `bilibili.png` |

---

## 依赖 / Requirements

- [Rainmeter](https://www.rainmeter.net/) 4.0+
- 网络连接 / Internet connection

---

## 许可 / License

MIT License
>>>>>>> 1d01adc16ed2cb25c13d46bdad9f4a458a80cdf6
