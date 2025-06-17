# smart_color_palette

A flexible and dynamic color palette utility for Flutter applications.

`smart_color_palette` helps developers generate consistent, accessible color themes across UI components such as text, icons, buttons, and borders. It automatically creates smooth transitions between base and target colors by generating 10 interpolated shades, ensuring clean design and excellent contrast for both light and dark themes.

---

## ✨ Features

- 🎨 Auto-generated 10-step color gradients between any two colors  
- 🧩 Define custom `ColorPair`s for:  
  - `primary`, `base`, `text`, `icon`, `border`, and `button`  
- 🌓 Works well with light and dark mode theming  
- 🔧 Easy integration into Flutter design systems  

---

## 📦 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  smart_color_palette: ^1.0.0
```

Then run:

```bash
flutter pub get
```

---

## 🚀 Usage

### 1. Import the package

```dart
import 'package:smart_color_palette/smart_color_palette.dart';
```

### 2. Create a color palette (e.g. in `colors.dart`)

```dart
final palette = ColorPalette(
  primary: ColorPair(base: Colors.blue, target: Colors.deepPurple),
  base: ColorPair(base: Colors.white, target: Colors.grey[200]!),
  text: ColorPair(base: Colors.black, target: Colors.white),
  icon: ColorPair(base: Colors.grey[800]!, target: Colors.white),
  border: ColorPair(base: Colors.grey, target: Colors.black),
);
```

### 3. Use color shades in your UI

```dart
Container(
  padding: EdgeInsets.all(16),
  color: palette.baseColorShade2,
  child: Text(
    'Hello Palette!',
    style: TextStyle(color: palette.textColorShade9),
  ),
);
```

---

## 🧪 Available Shades

Each `ColorPair` produces 10 interpolated shades. You can access them like:

```dart
palette.primaryColorShade1;  // Lightest shade
palette.primaryColorShade10; // Darkest shade
```

### Shade Accessors

- `primaryColorShade1` → `primaryColorShade10`  
- `baseColorShade1` → `baseColorShade10`  
- `textColorShade1` → `textColorShade10`  
- `iconColorShade1` → `iconColorShade10`  
- `borderColorShade1` → `borderColorShade10`  
- `buttonColorShades1` → `buttonColorShades10`  

---

## 💡 Contributions

Contributions, issues, and feature requests are welcome!  
Feel free to open an issue or submit a pull request.

---

