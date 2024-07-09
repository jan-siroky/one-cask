import 'package:flutter/material.dart';
import 'package:one_cask/core/theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool showLeading;
  final List<Widget>? actions;
  bool secondary = false;

  CustomAppBar({super.key, this.title, this.showLeading = false, this.actions});

  CustomAppBar.secondary({super.key, this.title, this.showLeading = false, this.actions}) : secondary = true;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return AppBar(
      backgroundColor: secondary ? Colors.transparent : null,
      automaticallyImplyLeading: false,
      leading: showLeading
          ? IconButton(
              icon: const Icon(Icons.arrow_back_outlined),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          : null,
      centerTitle: false,
      title: title != null
          ? Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: secondary ? darkGreyColor : null,
              ),
              child: Text(
                title!,
                style: secondary ? textTheme.bodyMedium : textTheme.headlineLarge,
              ),
            )
          : null,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
