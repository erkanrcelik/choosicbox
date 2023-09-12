import 'package:flutter/material.dart';

class LinkText extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;

  const LinkText({
    Key? key,
    this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        title,
        style: Theme.of(context).textTheme.displayMedium?.copyWith(
              color: Theme.of(context).colorScheme.primary,
            )
      ),
    );
  }
}
