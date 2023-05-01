import 'package:printer_utils/src/printer_alignment.dart';

class PrinterText {
  final String text;
  final double? size;
  final double? weight;
  final PrinterAlignment alignment;

  PrinterText(
    this.text, {
    this.size,
    this.weight,
    required this.alignment,
  });

  String get html => '<p $_alignHtml $_styleHtml>$text</p>';

  String get _alignHtml => 'align="${alignment.name}"';

  String get _styleHtml {
    String style = '';

    if (size != null) style += 'font-size:$size%;';
    if (weight != null) style += 'font-weight:$weight;';

    if (style.isEmpty) return '';

    return 'style="$style"';
  }
}
