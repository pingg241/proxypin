import 'dart:io';

class Fonts {
  String thin = "PingFangSC-Thin";
  String light = "PingFangSC-Light";
  String regular = "PingFangSC-Regular";
  String medium = "PingFangSC-Medium";
  String semibold = "PingFangSC-Semibold";
  String bold = "PingFangSC-Bold";
}

class AppleFonts extends Fonts {
  @override
  String thin = "PingFangSC-Thin";
  @override
  String light = "PingFangSC-Light";
  @override
  String regular = "PingFang SC";

  @override
  var medium = "PingFangSC-Medium";
  @override
  var semibold = "PingFangSC-Semibold";
  @override
  String bold = "PingFangSC-Bold";
}

class WindowsFonts extends Fonts {
  @override
  String thin = "Microsoft YaHei UI Light";
  @override
  String light = "Microsoft YaHei UI Light";
  @override
  String regular = "Microsoft YaHei UI";
  @override
  String medium = "Microsoft YaHei UI";
  @override
  String semibold = "Microsoft YaHei UI Bold";
  @override
  String bold = "Microsoft YaHei UI Bold";
}

class AndroidFonts extends Fonts {
  @override
  String thin = "sans-serif-thin";
  @override
  String light = "sans-serif-light";
  @override
  String regular = "sans-serif";
  @override
  String medium = "sans-serif-medium";
  @override
  String semibold =
      "sans-serif-medium"; // Android doesn't have a specific semibold, using medium.
  @override
  String bold = "sans-serif-bold";
}

Fonts fonts = Platform.isAndroid
    ? AndroidFonts()
    : Platform.isWindows
        ? WindowsFonts()
        : AppleFonts();
