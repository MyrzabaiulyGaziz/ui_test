import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ui_test/main.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('verify the text on home screen', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();
    final message = find.text("You have pushed the button this many times:");
    expect((message), findsOneWidget);
  });
}
