import 'package:artivatic_test/core/models/data_model/data_model.dart';
import 'package:artivatic_test/features/home/widgets/home_page_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("scroll list view", (WidgetTester tester) async {
    //execute the actual test
    await tester.pumpWidget(
      MaterialApp(
        home: HomePageList(
          searchQuery: "",
          dataModelRows: List.generate(
            200,
            (index) => Rows(
              title: "Title $index",
              description: "Description $index",
              imageHref: "imageHref $index",
            ),
          ),
        ),
      ),
    );

    await tester.drag(
      find.byType(ListView),
      const Offset(0, 400),
    );
    await tester.pump(); //rebuilds your widget

    //check outputs
    final firstRowFinder = find.text("Title 0");
    expect(firstRowFinder, findsOneWidget);
  });
}
