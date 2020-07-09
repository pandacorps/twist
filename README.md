# twist

An assistive writing application built with Flutter.

### General Setup

Follow the flutter install guide: https://flutter.dev/docs/get-started/install/macos

## Installation

1. Clone repository
1. Install dependencies: `flutter pub get`

## Testing

To run tests:
```
$ flutter test
```

## Linting

Linting uses the [lint](https://pub.dev/packages/lint) package, which is based on the [Effective Dart: Style Guide](https://dart.dev/guides/language/effective-dart/style).

To run linting:
```
$ flutter analyze
```

## Android

### Development

1. Create a virtual device through Android Studio AVD or connect a physical device
1. Select the device and run through the IDE: https://flutter.dev/docs/get-started/test-drive
1. Run the app

### Building

```
$ flutter build apk
```

## iOS

### Development

1. Start iOS simulator through XCode or connect a physical device
1. Select the iOS simulator device through the IDE: https://flutter.dev/docs/get-started/test-drive
1. Run the app through the IDE

## Web

### Setup

Make sure web support is enabled for your flutter installation:

```
$ flutter channel beta
$ flutter upgrade
$ flutter config --enable-web
```

### Development

1. Select Chrome as the device
1. Run the app through the IDE: https://flutter.dev/docs/get-started/test-drive

### Building

```
$ flutter build web
```

## macOS

### Setup

Make sure macOS support is enabled for your flutter installation:

```
$ flutter channel dev
$ flutter upgrade
$ flutter config --enable-macos-desktop
```

### Development

```
$ flutter run -d macOS
```

### Building

```
$ flutter build macos
```