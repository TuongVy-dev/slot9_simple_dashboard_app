import 'package:flutter_test/flutter_test.dart';

import 'package:slot9_simple_dashboard_app/main.dart';

void main() {
  testWidgets('Dashboard opens and navigates to product grid', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Dashboard'), findsOneWidget);
    expect(find.text('Hello, User 👋'), findsOneWidget);

    await tester.tap(find.text('Xem danh sách sản phẩm'));
    await tester.pumpAndSettle();

    expect(find.text('Products'), findsOneWidget);
    expect(find.text('Product #0'), findsOneWidget);
  });
}
