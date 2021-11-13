import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {'hello': 'hello'},
        'pl_PL': {'hello': 'Siema'},
        'fr_FR': {'hello': 'Bonjour'},
      };
}
