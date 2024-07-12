import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lenars/core/presentation/theme_cubit/theme_cubit.dart';
import 'package:lenars/core/ui/resources/app_theme.dart';
import 'package:lenars/core/ui/widgets/app_content_container.dart';
import 'package:lenars/feature/home/presentation/photo_cubit/photo_cubit.dart';
import 'package:lenars/feature/search/ui/search_screen.dart';

import '../../../core/ui/resources/app_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PhotoCubit()..init(),
      child: Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          backgroundColor: Theme.of(context).colorScheme.background,
          toolbarHeight: 64,
          centerTitle: true,
          leading: GestureDetector(
            onTap: context.read<ThemeCubit>().theme,
            child: BlocBuilder<ThemeCubit, ThemeData>(
              builder: (context, theme) {
                if (theme == AppThemes.dark()) {
                  return const Icon(
                    Icons.light_mode,
                    size: 24,
                  );
                } else {
                  return const Icon(
                    Icons.dark_mode,
                    size: 24,
                  );
                }
              },
            ),
          ),
          actions: [
            IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchScreen(),
                ),
              ),
              icon: const Icon(
                Icons.search,
                size: 24,
              ),
            )
          ],
          title: Text(
            'List page',
            style: AppTextStyles(context).head2Regular,
          ),
        ),
        body: BlocBuilder<PhotoCubit, PhotoState>(
          builder: (context, state) {
            return CustomMaterialIndicator(
              onRefresh: () =>
                  context.read<PhotoCubit>().loadData(), // Your refresh logic
              indicatorBuilder: (context, controller) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                );
              },
              child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 25),
                  child: BlocBuilder<PhotoCubit, PhotoState>(
                      builder: (context, state) {
                    if (state is PhotoStateContent) {
                      return ListView.separated(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        itemCount: state.images.length,
                        itemBuilder: ((context, index) => ContentContainer(
                            isFirst: state.firstIncludes.contains(index),
                            imageUrl: state.images[index].src.small,
                            title: state.images[index].photographer,
                            subtitle: state.images[index].alt)),
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 8,
                        ),
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  })),
            );
          },
        ),
      ),
    );
  }
}
