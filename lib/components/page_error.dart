import 'package:flutter/material.dart';

class PageError extends StatelessWidget {

  final String? msg;
  final Function()? onTap;

  const PageError({
    this.msg,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('🙈', style: TextStyle(fontSize: 42)),
              Text(
                msg ?? '加载异常，点击屏幕重新加载。',
                style: theme.textTheme.headlineSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }

}
