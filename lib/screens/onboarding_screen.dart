part of '../main.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}
class _OnboardingScreenState extends State<OnboardingScreen> {
  int page = 0;
  final pages = const [
    ['Find Opportunities', 'Search jobs and internships\nthat match your skills.', Icons.manage_search],
    ['Build Your Future', 'Connect with great companies\nand grow your career.', Icons.rocket_launch_outlined],
  ];
  @override
  Widget build(BuildContext context) {
    final item = pages[page];
    return Scaffold(body: SafeArea(child: Padding(padding: const EdgeInsets.fromLTRB(24, 16, 24, 20), child: Column(children: [
      Align(alignment: Alignment.centerRight, child: TextButton(onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen())), child: const Text('Skip', style: TextStyle(color: ink)))),
      const Spacer(),
      Container(width: 260, height: 220, decoration: BoxDecoration(color: lavender, borderRadius: BorderRadius.circular(130)), child: Icon(item[2] as IconData, size: 110, color: purple)),
      const SizedBox(height: 42),
      Text(item[0] as String, style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w800)),
      const SizedBox(height: 12),
      Text(item[1] as String, textAlign: TextAlign.center, style: const TextStyle(color: muted, height: 1.5)),
      const SizedBox(height: 28),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: List.generate(pages.length, (index) => AnimatedContainer(duration: const Duration(milliseconds: 250), margin: const EdgeInsets.symmetric(horizontal: 4), width: index == page ? 22 : 7, height: 7, decoration: BoxDecoration(color: index == page ? purple : const Color(0xFFD7D5DC), borderRadius: BorderRadius.circular(10))))),
      const Spacer(),
      PrimaryButton(label: page == pages.length - 1 ? 'Get Started' : 'Next', onPressed: () { if (page < pages.length - 1) setState(() => page++); else Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen())); }),
    ])));
  }
}
