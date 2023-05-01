enum PrinterAlign { left, center, right, justify }

enum PrinterTextDecoration {
  none('none'),
  underline('underline'),
  lineThrough('line-through');

  bool get isNone => this == PrinterTextDecoration.none;

  final String value;

  const PrinterTextDecoration(this.value);
}

class PrinterTextStyle {
  final int? scale;
  final bool bold;
  final bool italic;
  final PrinterAlign align;
  final PrinterTextDecoration decoration;

  PrinterTextStyle({
    this.scale,
    this.bold = false,
    this.italic = false,
    this.align = PrinterAlign.left,
    this.decoration = PrinterTextDecoration.none,
  });
}
