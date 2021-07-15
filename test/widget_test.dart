import 'package:flutter_test/flutter_test.dart';
import 'package:profile_demo/core/core.dart';

void main() {
  testWidgets('Verrificar se o widget principal foi carregado',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      AppWidget(),
    );

    expect(tester.takeException(), null);
  });
}
