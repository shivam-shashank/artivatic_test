import 'package:artivatic_test/features/home/bloc/home_bloc.dart';
import 'package:artivatic_test/features/home/widgets/home_page_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<HomeBloc>().add(LoadHomeDataEvent());

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state is HomeInitialState) {
          return const Scaffold(
            body: Center(
              child: Text("Home Initial State."),
            ),
          );
        }
        if (state is HomeLoadingState) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        if (state is HomeLoadedState) {
          return HomePageSuccess(dataModelResult: state.dataModelResult);
        }
        if (state is HomeErrorState) {
          return Scaffold(
            body: Center(
              child: Text(state.error.toString()),
            ),
          );
        }
        return Container();
      },
    );
  }
}
