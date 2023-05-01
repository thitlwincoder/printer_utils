import 'package:printer_utils/printer_utils.dart';
import 'package:printer_utils/src/printer_alignment.dart';

void main(List<String> arguments) {
  var utils = PrinterUtils();
  utils.text('this is left');
  utils.text(
    'this is center',
    size: 200,
    weight: 500,
    alignment: PrinterAlignment.center,
  );
  utils.text(
    'this is right',
    size: 300,
    alignment: PrinterAlignment.right,
  );
  // print(utils.content);
  utils.saveHtml();
}
