library printer_utils;

import 'dart:io';

import 'printer_utils.dart';
import 'src/printer_text.dart';

export 'src/printer_text_style.dart';
export 'src/printer_row.dart';

class PrinterUtils {
  String _data = '';

  String get content => '''
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
    PrinterTextStyle? style,
  }) {
    _data += PrinterText(text, style: style).html;
  }

  void row({
    required List<RowCell> cells,
  }) {
    _data += PrinterRow(cells).html;
  }

  void saveHtml() {
    File('index.html').writeAsString(content);
  }
}
