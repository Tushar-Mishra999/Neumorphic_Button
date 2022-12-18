<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

# Neumorphic Button
Neumorphic Button lets you create Neumorphic Button with a number of customizable features that can be used throughout your Flutter app.

## Installation
1. Add the latest version of package to your pubspec.yaml
```dart
dependencies:
  neumorphic_button: ^0.0.1
```
2. Import the package and use it in your Flutter App.
```dart
import 'package:neumorphic_button/neumorphic_button.dart';
```
## Features

There are a number of properties that you can specify for your neumorphic button:
* height
* width
* border-radius
* box-shape
* shadow-color
* spread-radius
* blur-radius
* onTap function

## Example
### Light mode neumorphic button
<table>
<tr>
<td>

```dart
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
          child: NeumorphicButton(
        onTap: () {},
        child: Image.asset(
          'assets/apple.png',
          height: 80,
          color: Colors.grey[700],
        ),
        BorderRadius: 12,
        bottomRightShadowBlurRadius: 15,
        bottomRightShadowSpreadRadius: 1,
        borderWidth: 5,
        backgroundColor: Colors.grey.shade300,
        topLeftShadowBlurRadius: 15,
        topLeftShadowSpreadRadius: 1,
        topLeftShadowColor: Colors.white,
        bottomRightShadowColor: Colors.grey.shade500,
        height: size.width * 0.5,
        width: size.width * 0.5,
        padding: EdgeInsets.all(50),
        bottomRightOffset: Offset(4, 4),
        topLeftOffset: Offset(-4, -4),
      )),
    );
  }
}
```
</td>
<td>
<img src="https://github.com/Tushar-Mishra999/VisageR/blob/9321df2e794cb2d7ed3a5abf8eb25c0a4db8278e/assets/apple1.jpeg" height="300" alt="">
</td>
</tr>
</table>

### Dark mode neumorphic button
<table>
<tr>
<td>

```dart
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Center(
          child: NeumorphicButton(
        onTap: () {},
        child: Image.asset(
          'assets/apple.png',
          height: 80,
          color: Colors.grey[700],
        ),
        BorderRadius: 12,
        bottomRightShadowBlurRadius: 15,
        bottomRightShadowSpreadRadius: 1,
        borderWidth: 5,
        backgroundColor: Colors.grey.shade900,
        topLeftShadowBlurRadius: 15,
        topLeftShadowSpreadRadius: 1,
        topLeftShadowColor: Colors.grey.shade800,
        bottomRightShadowColor: Colors.black,
        height: size.width * 0.5,
        width: size.width * 0.5,
        padding: EdgeInsets.all(50),
        bottomRightOffset: Offset(5, 5),
        topLeftOffset: Offset(-5, -5),
      )),
    );
  }
}
```
</td>
<td>
<img src="https://github.com/Tushar-Mishra999/VisageR/blob/9321df2e794cb2d7ed3a5abf8eb25c0a4db8278e/assets/apple2.jpeg" height="300" alt="">
</td>
</tr>
</table>


