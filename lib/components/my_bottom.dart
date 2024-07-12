import 'package:flutter/material.dart';

class BottomTabs extends StatefulWidget {
  const BottomTabs({Key? key}) : super(key: key);

  @override
  State<BottomTabs> createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/splash_page');//funciona
        break;
      case 1:
        Navigator.pushNamed(context, '/bookmark_page');//mudar 
        break;
      case 2:
        Navigator.pushNamed(context, '/smile_page'); //funciona
        break;
      case 3:
        Navigator.pushNamed(context, '/child_friendly_page');//mudar 
        break;
      case 4:
        Navigator.pushNamed(context, '/profile_page');//mudar 
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bloodtype_outlined,
              color: Colors.black,
            ),
            label: 'Splash',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_added_sharp,
              color: Colors.black,
            ),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.call_to_action,
              color: Colors.black,
            ),
            label: 'Smile',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.child_friendly,
              color: Colors.black,
            ),
            label: 'Child Friendly',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// Exemplo de páginas
class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Page'),
      ),
      body: const Center(
        child: Text('Bem-vindo à Splash Page!'),
      ),
    );
  }
}

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookmark Page'),
      ),
      body: const Center(
        child: Text('Bem-vindo à Bookmark Page!'),
      ),
    );
  }
}

class SmilePage extends StatelessWidget {
  const SmilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smile Page'),
      ),
      body: const Center(
        child: Text('Bem-vindo à Smile Page!'),
      ),
    );
  }
}

class ChildFriendlyPage extends StatelessWidget {
  const ChildFriendlyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Child Friendly Page'),
      ),
      body: const Center(
        child: Text('Bem-vindo à Child Friendly Page!'),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: const Center(
        child: Text('Bem-vindo à Profile Page!'),
      ),
    );
  }
}
