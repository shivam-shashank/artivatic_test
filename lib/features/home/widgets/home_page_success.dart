import 'package:artivatic_test/core/models/data_model/data_model.dart';
import 'package:artivatic_test/core/widgets/custom_text_field.dart';
import 'package:artivatic_test/features/home/bloc/home_bloc.dart';
import 'package:artivatic_test/features/home/widgets/home_page_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageSuccess extends StatefulWidget {
  final DataModel dataModelResult;

  const HomePageSuccess({Key? key, required this.dataModelResult})
      : super(key: key);

  @override
  State<HomePageSuccess> createState() => _HomePageSuccessState();
}

class _HomePageSuccessState extends State<HomePageSuccess> {
  final TextEditingController _searchTEC = TextEditingController();

  bool _searchResultPresent = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.dataModelResult.title),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<HomeBloc>().add(LoadHomeDataEvent());
        },
        child: ListView(
          padding: const EdgeInsets.all(16),
          physics: const BouncingScrollPhysics(),
          children: [
            CustomTextField(
              hintText: "Search...",
              textEditingController: _searchTEC,
              validator: (val) {
                if (val.isEmpty) {
                  return "Search Text can't be empty.";
                }
                return null;
              },
              onChanged: (_) {
                _searchResultPresent = false;
                for (var element in widget.dataModelResult.rows) {
                  if (element.title
                      .toLowerCase()
                      .contains(_searchTEC.text.toLowerCase())) {
                    _searchResultPresent = true;
                  }
                }
                setState(() {});
              },
            ),
            const SizedBox(height: 12),
            widget.dataModelResult.rows.isEmpty
                ? const Center(
                    child: Text("No Result Found!!!"),
                  )
                : _searchResultPresent
                    ? HomePageList(
                        searchQuery: _searchTEC.text,
                        dataModelRows: widget.dataModelResult.rows,
                      )
                    : const Center(
                        child: Text("No Search Record Found"),
                      ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchTEC.dispose();

    super.dispose();
  }
}
