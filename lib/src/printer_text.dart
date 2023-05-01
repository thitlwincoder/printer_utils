import 'package:printer_utils/src/printer_text_style.dart';

class PrinterText {
  final String text;
  final PrinterTextStyle? style;

  PrinterText(
    this.text, {
    this.style,
  });

  String get html => '<p $_alignHtml $_styleHtml>$text</p>';

  String get _alignHtml => 'align="${style?.align.name}"';

  String get _styleHtml {
    String styleHtml = '';

    if (style == null) return '';

    if (style!.scale != null) styleHtml += 'font-size:${style?.scale}%;';
    if (style!.italic) styleHtml += 'font-style:italic;';
    if (style!.bold) styleHtml += 'font-weight:bold;';
    if (!style!.decoration.isNone) {
      styleHtml += 'text-decoration:${style!.decoration.value};';
    }

    if (styleHtml.isEmpty) return '';

    return 'style="$styleHtml"';
  }
}
