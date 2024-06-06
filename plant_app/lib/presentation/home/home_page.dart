import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plant_app/models/home/post_model.dart';
import 'package:plant_app/presentation/home/bloc/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc()..add(HomeEventLoadInitialDataRequested()),
      child: Builder(builder: (context) {
        return Scaffold(
          floatingActionButton: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return FloatingActionButton(
                onPressed: () {
                  context.read<HomeBloc>().add(
                        HomeEventAddPostRequested(
                          postModel: const PostModel(
                            id: 2323423,
                            userId: 3434,
                            title: "title",
                            body: "body",
                          ),
                        ),
                      );
                },
                child: state.homeStateEnum == HomeStateEnum.sending
                    ? const CircularProgressIndicator()
                    : const Icon(Icons.add),
              );
            },
          ),
          appBar: AppBar(
            title: const Text("Consuming REST example"),
          ),
          body: BlocListener<HomeBloc, HomeState>(
            listener: (context, state) {
              if (state.homeStateEnum == HomeStateEnum.sendSuccess &&
                  state.errorMessage == "") {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Post added successfully"),
                  ),
                );
              }
            },
            child: BlocBuilder<HomeBloc, HomeState>(
              buildWhen: (previous, current) =>
                  current.homeStateEnum == HomeStateEnum.loading ||
                  current.homeStateEnum == HomeStateEnum.success,
              builder: (context, state) {
                final homeBloc = context.read<HomeBloc>();
                if (state.homeStateEnum == HomeStateEnum.loading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state.homeStateEnum == HomeStateEnum.success &&
                    state.errorMessage == "") {
                  return Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                            itemCount: state.postModel?.length ?? 0,
                            itemBuilder: (context, index) {
                              return ListTile(
                                trailing: IconButton(
                                  onPressed: () {
                                    if (state.postModel?[index].id != null) {
                                      homeBloc.add(
                                        HomeEventDeleteDataRequested(
                                            id: state.postModel![index].id),
                                      );
                                    }
                                  },
                                  icon: const Icon(
                                    Icons.delete,
                                    size: 24,
                                    color: Colors.pinkAccent,
                                  ),
                                ),
                                title: Text(
                                    '${index + 1} ${state.postModel?[index].title ?? ""}'),
                                subtitle:
                                    Text(state.postModel?[index].body ?? ""),
                              );
                            }),
                      ),
                    ],
                  );
                }
                return const SizedBox();
              },
            ),
          ),
        );
      }),
    );
  }
}
