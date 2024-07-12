import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lenars/core/ui/widgets/app_content_container.dart';
import 'package:lenars/feature/home/presentation/photo_cubit/photo_cubit.dart';

import '../../../core/ui/resources/app_text.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PhotoCubit()..init(),
      child: Scaffold(
        appBar: AppBar(
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(1.0),
              child: Container(
                color: Colors.grey,
                height: 1.0,
              ),
            ),
            forceMaterialTransparency: true,
            backgroundColor: Theme.of(context).colorScheme.background,
            toolbarHeight: 64,
            automaticallyImplyLeading: true,
            actions: [
              BlocBuilder<PhotoCubit, PhotoState>(
                builder: (context, state) {
                  return IconButton(
                    onPressed: () {
                      context.read<PhotoCubit>().onSearchValueChanged('');
                      controller.clear();
                    },
                    icon: const Icon(
                      Icons.clear,
                      size: 24,
                    ),
                  );
                },
              )
            ],
            title: BlocBuilder<PhotoCubit, PhotoState>(
              builder: (context, state) {
                return TextFormField(
                  style: AppTextStyles(context).body1Regular,
                  controller: controller,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                  ),
                  onChanged: context.read<PhotoCubit>().onSearchValueChanged,
                );
              },
            )),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child:
                BlocBuilder<PhotoCubit, PhotoState>(builder: (context, state) {
              if (state is PhotoStateContent) {
                if (state.searchedImages.isNotEmpty) {
                  return ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    itemCount: state.searchedImages.length,
                    itemBuilder: ((context, index) => ContentContainer(
                        isSearch: true,
                        imageUrl: state.searchedImages[index].src.small,
                        title: state.searchedImages[index].photographer,
                        subtitle: state.searchedImages[index].alt)),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 8,
                    ),
                  );
                } else {
                  return Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 72),
                      child: Text(
                        'No item found',
                        style: AppTextStyles(context).head2Regular.copyWith(
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                    ),
                  );
                }
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            })),
      ),
    );
  }
}
