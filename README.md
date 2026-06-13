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
