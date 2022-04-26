import 'package:artivatic_test/core/models/data_model/data_model.dart';
import 'package:artivatic_test/features/home/widgets/home_page_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("search text field", (WidgetTester tester) async {
    //find all widgets needed
    final searchField = find.byKey(const ValueKey("searchField"));

    //execute the actual test
    await tester.pumpWidget(
      const MaterialApp(
        home: HomePageSuccess(
          dataModelResult: DataModel(
            title: "Test",
            rows: [],
          ),
        ),
      ),
    );
    await tester.enterText(searchField, "Make Widget Testing Search");
    await tester.pump(); //rebuilds your widget

    //check outputs
    expect(find.text("Make Widget Testing Search"), findsOneWidget);
  });
}
