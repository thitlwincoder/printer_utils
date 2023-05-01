import 'package:printer_utils/src/printer_alignment.dart';

class PrinterText {
  final String text;
  final int? size;
  final bool? italic;
  final bool? bold;
  final PrinterAlignment alignment;

  PrinterText(
    this.text, {
    this.size,
    this.italic,
    this.bold,
    required this.alignment,
  });

  String get html => '<p $_alignHtml $_styleHtml>$text</p>';

  String get _alignHtml => 'align="${alignment.name}"';

  String get _styleHtml {
    String style = '';

    if (size != null) style += 'font-size:$size%;';
    if (italic == true) style += 'font-style:italic;';
    if (bold == true) style += 'font-weight:bold;';

    if (style.isEmpty) return '';

    return 'style="$style"';
  }
}
