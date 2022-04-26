import 'package:artivatic_test/core/models/data_model/data_model.dart';
import 'package:artivatic_test/features/home/bloc/home_bloc.dart';
import 'package:artivatic_test/features/home/widgets/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageSuccess extends StatelessWidget {
  final DataModel dataModelResult;

  const HomePageSuccess({
    Key? key,
    required this.dataModelResult,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(dataModelResult.title),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<HomeBloc>().add(LoadHomeDataEvent());
        },
        child: ListView.builder(
          itemCount: dataModelResult.rows.length,
          itemBuilder: (context, index) {
            String _title = dataModelResult.rows[index].title;
            String _description = dataModelResult.rows[index].description;
            String _imageHref = dataModelResult.rows[index].imageHref;

            return Card(
              margin: const EdgeInsets.all(12),
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
            );
          },
        ),
      ),
    );
  }
}
