import 'package:printer_utils/printer_utils.dart';
import 'package:printer_utils/src/printer_text.dart';

void main(List<String> arguments) {
  var utils = PrinterUtils();
  utils.text(
    'this is left',
    style: PrinterTextStyle(bold: true),
  );
  utils.text(
    'this is center',
    style: PrinterTextStyle(
      scale: 200,
      italic: true,
      align: PrinterAlign.center,
    ),
  );
  utils.text(
    'this is right',
    style: PrinterTextStyle(
      align: PrinterAlign.right,
      decoration: PrinterTextDecoration.lineThrough,
    ),
  );
  utils.row(
    cells: [
      RowCell(
        width: 30,
        child: PrinterText('text'),
      ),
      RowCell(
        width: 30,
        child: PrinterText('text'),
      ),
      RowCell(
        width: 30,
        child: PrinterText('text'),
      ),
    ],
  );
  utils.saveHtml();
}
