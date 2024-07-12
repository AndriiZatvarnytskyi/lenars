import 'package:flutter/material.dart';

import '../resources/app_text.dart';

class ContentContainer extends StatelessWidget {
  const ContentContainer({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    this.isFirst = false,
    this.isSearch = false,
  });

  final String imageUrl;
  final String title;
  final String subtitle;
  final bool isFirst;
  final bool isSearch;

  @override
  Widget build(BuildContext context) {
    return !isSearch
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isFirst)
                Text(
                  title[0],
                  style: AppTextStyles(context)
                      .body1Medium
                      .copyWith(color: Theme.of(context).colorScheme.primary),
                ),
              const Spacer(),
              _contentContainer(
                context,
                title,
                subtitle,
                imageUrl,
                isSearch,
              ),
            ],
          )
        : _contentContainer(context, title, subtitle, imageUrl, isSearch);
  }

  Widget _contentContainer(
    context,
    title,
    subtitle,
    imageUrl,
    isSearch,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 88,
      width: isSearch ? null : MediaQuery.sizeOf(context).width - 68,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border:
              Border.all(color: Theme.of(context).colorScheme.outlineVariant)),
      child: Row(
        children: [
          Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.sizeOf(context).width - 175),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  style: AppTextStyles(context).body1Regular,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  subtitle,
                  maxLines: 2,
                  style: AppTextStyles(context).body2Regular.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
