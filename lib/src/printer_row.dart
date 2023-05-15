// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:printer_utils/src/printer_text.dart';

class PrinterRow {
  final List<RowCell> cells;

  PrinterRow(this.cells);

  String get html => '''
<div class="row" style="display:flex;">
$_cellHtml
</div>''';

  String get _cellHtml {
    String cellHtml = '';

    for (var cell in cells) {
      cellHtml += '<div ${_styleHtml(cell)}>${cell.child?.html}</div>';
    }

    return cellHtml;
  }

  String _styleHtml(RowCell cell) {
    String styleHtml = '';

    if (cell.width != null) styleHtml += 'flex:${cell.width}%';

    if (styleHtml.isEmpty) return '';

    return 'style="$styleHtml"';
  }
}

class RowCell {
  final int? width;
  final PrinterText? child;

  RowCell({
    this.width,
    this.child,
  });
}
