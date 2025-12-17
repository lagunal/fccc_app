import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Placeholder Screens
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text('Home Screen')),
    );
  }
}

class SermonsScreen extends StatelessWidget {
  const SermonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sermons')),
      body: const Center(child: Text('Sermons Screen')),
    );
  }
}

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Events')),
      body: const Center(child: Text('Events Screen')),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: const Center(child: Text('Profile Screen')),
    );
  }
}

/// The route configuration.
final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    ShellRoute(
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return _ScaffoldWithNavBar(child: child);
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeScreen();
          },
        ),
        GoRoute(
          path: '/sermons',
          builder: (BuildContext context, GoRouterState state) {
            return const SermonsScreen();
          },
        ),
        GoRoute(
          path: '/events',
          builder: (BuildContext context, GoRouterState state) {
            return const EventsScreen();
          },
        ),
        GoRoute(
          path: '/profile',
          builder: (BuildContext context, GoRouterState state) {
            return const ProfileScreen();
          },
        ),
      ],
    ),
  ],
);

/// Builds the "shell" for the app with a BottomNavigationBar.
class _ScaffoldWithNavBar extends StatelessWidget {
  /// Constructs an [_ScaffoldWithNavBar].
  const _ScaffoldWithNavBar({required this.child});

  /// The widget to display in the body of the Scaffold.
  /// In this case, it is the current route's page.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.mic), label: 'Sermons'),
          BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Events'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _calculateSelectedIndex(context),
        onTap: (int idx) => _onItemTapped(context, idx),
        type: BottomNavigationBarType.fixed, // Ensure all labels are visible
      ),
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).matchedLocation;
    if (location.startsWith('/profile')) {
      return 3;
    }
    if (location.startsWith('/events')) {
      return 2;
    }
    if (location.startsWith('/sermons')) {
      return 1;
    }
    if (location.startsWith('/')) {
      return 0;
    }
    return 0;
  }

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        GoRouter.of(context).go('/');
        break;
      case 1:
        GoRouter.of(context).go('/sermons');
        break;
      case 2:
        GoRouter.of(context).go('/events');
        break;
      case 3:
        GoRouter.of(context).go('/profile');
        break;
    }
  }
}
