library printer_utils;

import 'dart:io';

import 'package:printer_utils/src/printer_alignment.dart';
import 'package:printer_utils/src/printer_text.dart';

class PrinterUtils {
  String _data = '';

  String get content =>
      '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RECEIPT</title>
</head>
<body>
  <div class="receipt">
    <div class="container">
      $_data
    </div>
  </div>
</body>
</html>''';

  void text(
    String text, {
    int? size,
    bool? italic,
    bool? bold,
    PrinterAlignment? alignment,
  }) {
    _data += PrinterText(
      text,
      size: size,
      italic: italic,
      bold: bold,
      alignment: alignment ?? PrinterAlignment.left,
    ).html;
  }

  void convertToImage() {}

  void saveHtml() {
    File('index.html').writeAsString(content);
  }
}
