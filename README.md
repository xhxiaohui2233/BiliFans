# 💫 BiliFans - Bilibili Fan Counter Rainmeter Skin

> 🎯 一个简洁优雅的 Rainmeter 桌面小组件，实时显示你的 B站粉丝数、关注数和获赞数。
>
> 🎯 A clean and elegant Rainmeter desktop widget that displays your Bilibili followers, following, and likes in real time.

---

## ✨ 特性亮点 / Features

| 🖼️ | **磨砂玻璃风格** / **Frosted Glass Style** | 粉白磨砂玻璃渐变背景，16px圆角，视觉柔和高级 |
|-----|------|-----|
| 🔄 | **实时数据** / **Real-time Data** | 每 30 秒自动从B站官方 API 拉取最新数据 |
| 🎨 | **透明度可调** / **Adjustable Opacity** | 0-255 任意调节透明度，适配任何桌面背景 |
| 🔢 | **数字简写** / **Number Abbreviation** | 支持 X.XK / X.XM / X.XB 自动简写（可开关）|
| ⚡ | **流畅动画** / **Smooth Animation** | 数字更新时带平滑滚动动画效果 |
| 🌐 | **自动获取用户名** / **Auto-fetch Username** | 自动从 API 获取并显示 B站用户名 |

---

## 👁️ 预览 / Preview

```
 [哔哩哔哩logo] 用户名     ●
 ──────────────────────────────────
    粉丝         关注        获赞
     328         962       1.7K
```

- 🎨 粉白磨砂渐变背景，圆角卡片 / Pink-white frosted gradient, rounded card
- 👤 自动获取 B站用户名 / Auto-fetches Bilibili username
- 🔢 大数字自动简写（可选）/ Large number abbreviation (optional)

---

## 📦 安装 / Installation

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

## ⚙️ 配置 / Configuration

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

### 🔢 数字简写规则 / Abbreviation Rules

| 数值范围 / Range | 格式 / Format | 示例 / Example |
|---|---|---|
| ≥ 1,000,000,000 | X.XB | 1.5B |
| ≥ 1,000,000 | X.XM | 1.2M |
| ≥ 10,000 | X.XK | 15.0K |
| < 10,000 | 逗号格式 / comma | 1,234 |

---

## 📁 文件结构 / File Structure

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

## 🌐 数据来源 / Data Source

通过 B站官方 API 获取数据：/ Fetches data from the official Bilibili API:

```
https://api.bilibili.com/x/web-interface/card?mid={UID}
```

每 30 秒自动刷新一次。/ Refreshes every 30 seconds.

获取的字段 / Fields fetched:
- `name` — 用户名 / Username
- `fans` — 粉丝数 / Followers
- `attention` — 关注数 / Following
- `like_num` — 获赞数 / Likes

---

## 🎨 自定义 / Customization

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

## 📋 依赖 / Requirements

- [Rainmeter](https://www.rainmeter.net/) 4.0+
- 网络连接 / Internet connection

---

## 📄 许可 / License

MIT License

