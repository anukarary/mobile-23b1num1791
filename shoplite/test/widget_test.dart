import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shoplite/main.dart';

void main() {
  testWidgets('Нэмэх товч тоолуурыг нэмнэ', (tester) async {
    await tester.pumpWidget(const ShopLiteApp());

    // Тоо дэлгэц болон Badge дээр давхар харагдана.
    expect(find.text('0'), findsNWidgets(2));

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('1'), findsNWidgets(2));
    expect(find.text('0'), findsNothing);
  });

  testWidgets('Хасах товч тоог хасаж, 0-ээс доош оруулахгүй',
      (tester) async {
    await tester.pumpWidget(const ShopLiteApp());

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    expect(find.text('1'), findsNWidgets(2));

    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();
    expect(find.text('0'), findsNWidgets(2));

    // 0 дээр дахин хасахад 0 хэвээр байна.
    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();
    expect(find.text('0'), findsNWidgets(2));
    expect(find.text('-1'), findsNothing);
  });
}