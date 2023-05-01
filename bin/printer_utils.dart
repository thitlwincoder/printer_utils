import 'package:printer_utils/printer_utils.dart';
import 'package:printer_utils/src/printer_alignment.dart';

void main(List<String> arguments) {
  var utils = PrinterUtils();
  utils.text('this is left');
  utils.text(
    'this is center',
    size: 200,
    bold: true,
    alignment: PrinterAlignment.center,
  );
  utils.text(
    'this is right',
    size: 300,
    italic: true,
    alignment: PrinterAlignment.right,
  );
  // print(utils.content);
  utils.saveHtml();
}
