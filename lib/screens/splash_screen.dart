part of '../main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 900), () {
      if (mounted) Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const OnboardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(child: CustomPaint(painter: CityPainter())),
        Center(child: Column(mainAxisSize: MainAxisSize.min, children: [
          LogoMark(size: 86),
          const SizedBox(height: 22),
          const Text('Find Your', style: TextStyle(fontSize: 29, fontWeight: FontWeight.w800, color: ink)),
          const Text('Dream Job', style: TextStyle(fontSize: 29, fontWeight: FontWeight.w800, color: purple)),
          const SizedBox(height: 12),
          const Text('Explore thousands of jobs\nand internships.', textAlign: TextAlign.center, style: TextStyle(color: muted, height: 1.45)),
        ])),
        const Positioned(bottom: 40, left: 0, right: 0, child: Center(child: Text('DREAMJOB', style: TextStyle(letterSpacing: 2, color: muted, fontWeight: FontWeight.w700))))
      ]),
    );
  }
}
