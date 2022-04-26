import 'package:artivatic_test/core/models/data_model/data_model.dart';
import 'package:flutter/material.dart';

import 'image_widget.dart';

class HomePageList extends StatelessWidget {
  final String searchQuery;
  final List<Rows> dataModelRows;

  const HomePageList({
    Key? key,
    required this.searchQuery,
    required this.dataModelRows,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: dataModelRows.length,
      itemBuilder: (context, index) {
        String _title = dataModelRows[index].title;
        String _description = dataModelRows[index].description;
        String _imageHref = dataModelRows[index].imageHref;

        return Visibility(
          visible: _title.toLowerCase().contains(
                searchQuery.toLowerCase(),
              ),
          child: Card(
            margin: const EdgeInsets.only(bottom: 16),
            elevation: 12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  ImageWidget(imageUrl: _imageHref),
                  const SizedBox(width: 24),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(_title),
                        Text(_description),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
