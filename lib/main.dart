import 'package:flutter/material.dart';

import 'router/app_router.dart';

// https://habr.com/ru/users/mrDevGo/publications/articles/

void main() {
  runApp(const AppTodo());
}

class AppTodo extends StatelessWidget {
  const AppTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
