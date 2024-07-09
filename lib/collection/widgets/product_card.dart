import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final VoidCallback onTap;
  final Widget image;
  final String? title;
  final String? subtitle;

  const ProductCard({super.key, required this.onTap, required this.image, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: image,
              ),
              Text(
                title ?? '',
                style: theme.textTheme.headlineSmall,
              ),
              Text(
                subtitle ?? '',
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
