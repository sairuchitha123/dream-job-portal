part of '../main.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) => SafeArea(child: Column(children: [Container(width: double.infinity, padding: const EdgeInsets.fromLTRB(22, 24, 22, 28), decoration: const BoxDecoration(gradient: LinearGradient(colors: [purple, Color(0xFF7544E7)])), child: Column(children: [const CircleAvatar(radius: 35, backgroundColor: Colors.white, child: Text('JD', style: TextStyle(color: purple, fontWeight: FontWeight.w800, fontSize: 20))), const SizedBox(height: 10), const Text('John Doe', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 17)), const SizedBox(height: 4), const Text('john.doe@gmail.com', style: TextStyle(color: Colors.white70, fontSize: 11))])), Expanded(child: ListView(padding: const EdgeInsets.only(top: 8), children: const [ProfileRow(icon: Icons.person_outline, title: 'Personal Information'), ProfileRow(icon: Icons.description_outlined, title: 'Resume'), ProfileRow(icon: Icons.assignment_outlined, title: 'My Applications'), ProfileRow(icon: Icons.bookmark_border, title: 'Saved Jobs'), ProfileRow(icon: Icons.notifications_none, title: 'Notification Settings'), ProfileRow(icon: Icons.help_outline, title: 'Help & Support'), ProfileRow(icon: Icons.logout, title: 'Logout', danger: true)]))]));
  }
}
