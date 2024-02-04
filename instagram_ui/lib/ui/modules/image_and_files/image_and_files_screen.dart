import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_ui/ui/modules/image_and_files/bloc/image_and_file_picker_bloc.dart';

class ImageAndFilePickerScreen extends StatelessWidget {
  const ImageAndFilePickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ImageAndFilePickerBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Image And File Picker"),
        ),
        body: Builder(builder: (context) {
          return Column(children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    context
                        .read<ImageAndFilePickerBloc>()
                        .add(ImageAndFilePickUpRequested());
                  },
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text("Pick image"),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text("Pick File"),
                  ),
                ),
              ],
            ),
            BlocBuilder<ImageAndFilePickerBloc, ImageAndFilePickerState>(
              builder: (context, state) {
                if (state is ImageAndFilePickerFilePicked) {
                  return Image.file(state.pickedFile!);
                } else if (state is ImageAndFilePickerLoadInProgress) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is ImageAndFilePickerFailure) {
                  return Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text(state.errorMessage),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            )
          ]);
        }),
      ),
    );
  }
}
