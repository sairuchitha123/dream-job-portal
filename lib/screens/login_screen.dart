part of '../main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SingleChildScrollView(padding: const EdgeInsets.fromLTRB(22, 26, 22, 20), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.arrow_back)),
      const SizedBox(height: 35),
      const Center(child: Column(children: [Text('Welcome Back!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)), SizedBox(height: 8), Text('Login to continue', style: TextStyle(color: muted))])),
      const SizedBox(height: 38),
      const Field(label: 'Email', icon: Icons.mail_outline, hint: 'Enter your email'),
      const SizedBox(height: 16),
      const Field(label: 'Password', icon: Icons.lock_outline, hint: 'Enter your password', obscure: true),
      Align(alignment: Alignment.centerRight, child: TextButton(onPressed: () {}, child: const Text('Forgot Password?', style: TextStyle(color: purple, fontSize: 12)))),
      const SizedBox(height: 8),
      PrimaryButton(label: 'Login', onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const MainShell()))),
      const SizedBox(height: 23),
      const DividerWithText(text: 'or continue with'),
      const SizedBox(height: 18),
      Row(children: [SocialButton(icon: 'G'), const SizedBox(width: 12), SocialButton(icon: 'in'), const SizedBox(width: 12), SocialButton(icon: '●')]),
      const SizedBox(height: 28),
      Center(child: RichText(text: const TextSpan(style: TextStyle(color: muted), children: [TextSpan(text: 'Don’t have an account?  '), TextSpan(text: 'Sign Up', style: TextStyle(color: purple, fontWeight: FontWeight.bold))])))
    ])));
  }
}

class MainShell extends StatefulWidget {
  const MainShell({super.key, this.initialIndex = 0});
  final int initialIndex;
  @override
  State<MainShell> createState() => _MainShellState();
}
class _MainShellState extends State<MainShell> {
  int index = 0;
  final screens = const [HomeScreen(), SearchScreen(), ApplicationsScreen(), SavedScreen(), ProfileScreen()];

  @override
  void initState() {
    super.initState();
    index = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: IndexedStack(index: index, children: screens), bottomNavigationBar: NavigationBar(selectedIndex: index, onDestinationSelected: (value) => setState(() => index = value), backgroundColor: Colors.white, indicatorColor: lavender, height: 72, destinations: const [NavigationDestination(icon: Icon(Icons.home_outlined), selectedIcon: Icon(Icons.home), label: 'Home'), NavigationDestination(icon: Icon(Icons.search), label: 'Search'), NavigationDestination(icon: Icon(Icons.assignment_outlined), selectedIcon: Icon(Icons.assignment), label: 'Applications'), NavigationDestination(icon: Icon(Icons.bookmark_border), selectedIcon: Icon(Icons.bookmark), label: 'Saved'), NavigationDestination(icon: Icon(Icons.person_outline), selectedIcon: Icon(Icons.person), label: 'Profile')]));
  }
}
