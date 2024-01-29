import 'package:go_router/go_router.dart';

import '../features/notes/detail_screen.dart';
import '../features/notes/favorites_screen.dart';
import '../features/notes/notes_screen.dart';
import '../features/profile/profile_screen.dart';
import '../features/root/root_screen.dart';

final router = GoRouter(
  initialLocation: '/notes',
  routes: [
    // BottomNavigationBar
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          RootScreen(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
                path: '/notes',
                builder: (context, state) => const NotesScreen(),
                routes: [
                  GoRoute(
                    path: 'detail',
                    builder: (context, state) => const DetailScreen(),
                  ),
                ]),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/favorites',
              builder: (context, state) => const FavoritesScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
