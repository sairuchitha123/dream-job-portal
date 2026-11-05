import 'package:flutter/material.dart';

part 'screens/splash_screen.dart';
part 'screens/onboarding_screen.dart';
part 'screens/login_screen.dart';
part 'screens/home_screen.dart';
part 'screens/search_screen.dart';
part 'screens/job_details_screen.dart';
part 'screens/apply_screen.dart';
part 'screens/applications_screen.dart';
part 'screens/saved_screen.dart';
part 'screens/profile_screen.dart';

void main() {
  runApp(const DreamJobApp());
}

const purple = Color(0xFF5B2BD8);
const deepPurple = Color(0xFF382080);
const lavender = Color(0xFFF1EDFF);
const ink = Color(0xFF171522);
const muted = Color(0xFF777582);
const line = Color(0xFFECEBF0);

class DreamJobApp extends StatelessWidget {
  const DreamJobApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DreamJob',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: purple),
        fontFamily: 'Arial',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: ink,
          elevation: 0,
          centerTitle: true,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}

class Job {
  final String title;
  final String company;
  final String location;
  final String salary;
  final String logo;
  final Color logoColor;
  final String type;
  final String posted;

  const Job({
    required this.title,
    required this.company,
    required this.location,
    required this.salary,
    required this.logo,
    required this.logoColor,
    this.type = 'Full Time',
    this.posted = '2d ago',
  });
}

const jobs = [
  Job(title: 'Flutter Developer', company: 'Tech Solutions Inc.', location: 'Bangalore', salary: '₹6 - 12 LPA', logo: 'tf', logoColor: Color(0xFF243B8F), posted: 'New'),
  Job(title: 'UI/UX Designer', company: 'Creative Minds Pvt. Ltd.', location: 'Bangalore', salary: '₹6 - 10 LPA', logo: 'ux', logoColor: Color(0xFF214B9B)),
  Job(title: 'Software Engineer', company: 'CodeWorks', location: 'Hyderabad', salary: '₹5 - 9 LPA', logo: 'C', logoColor: Color(0xFF1994D0), posted: '20 ago'),
  Job(title: 'Product Designer', company: 'DesignHub Pvt. Ltd.', location: 'Remote', salary: '₹4 - 8 LPA', logo: '◆', logoColor: Color(0xFFF07A5E), posted: '3d ago'),
  Job(title: 'Marketing Intern', company: 'Brand Boosters', location: 'Mumbai', salary: '₹10K - ₹20K / month', logo: '◆', logoColor: Color(0xFFEA7A61), type: 'Internship', posted: 'New'),
  Job(title: 'Backend Developer', company: 'DevX Solutions', location: 'Pune', salary: '₹6 - 10 LPA', logo: 'N', logoColor: Color(0xFF223F91)),
  Job(title: 'Data Analyst', company: 'Analytics Pro', location: 'Bangalore', salary: '₹5 - 9 LPA', logo: '●', logoColor: Color(0xFF405BA8)),
];


class StandardPage extends StatelessWidget {
  const StandardPage({super.key, required this.title, required this.child, this.tabs});
  final String title; final Widget child; final List<String>? tabs;
  @override
  Widget build(BuildContext context) => SafeArea(child: SingleChildScrollView(padding: const EdgeInsets.fromLTRB(20, 16, 20, 20), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [const Icon(Icons.arrow_back), const Expanded(child: Center(child: Text(''))), const SizedBox(width: 24)]), const SizedBox(height: 17), Text(title, style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w800)), if (tabs != null) Padding(padding: const EdgeInsets.only(top: 18, bottom: 14), child: Row(children: tabs!.map((tab) => Expanded(child: Text(tab, textAlign: TextAlign.center, style: TextStyle(color: tab == tabs!.first ? purple : muted, fontSize: 11, fontWeight: tab == tabs!.first ? FontWeight.bold : FontWeight.normal))).toList())), const SizedBox(height: 3), child]));
}

class PrimaryButton extends StatelessWidget { const PrimaryButton({super.key, required this.label, required this.onPressed}); final String label; final VoidCallback onPressed; @override Widget build(BuildContext context) => SizedBox(width: double.infinity, height: 48, child: FilledButton(style: FilledButton.styleFrom(backgroundColor: purple, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))), onPressed: onPressed, child: Text(label, style: const TextStyle(fontWeight: FontWeight.w700)))); }
class Field extends StatelessWidget { const Field({super.key, required this.label, required this.icon, required this.hint, this.obscure = false}); final String label, hint; final IconData icon; final bool obscure; @override Widget build(BuildContext context) => Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(label, style: const TextStyle(fontSize: 11, color: muted)), const SizedBox(height: 7), TextField(obscureText: obscure, decoration: InputDecoration(hintText: hint, hintStyle: const TextStyle(color: muted, fontSize: 12), prefixIcon: Icon(icon, size: 18, color: muted), suffixIcon: obscure ? const Icon(Icons.visibility_outlined, size: 17, color: muted) : null, contentPadding: const EdgeInsets.symmetric(vertical: 13), border: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: line)), enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: line)))]); }
class SearchBarBox extends StatelessWidget { const SearchBarBox({super.key, this.onTap}); final VoidCallback? onTap; @override Widget build(BuildContext context) => GestureDetector(onTap: onTap, child: Container(height: 43, padding: const EdgeInsets.symmetric(horizontal: 13), decoration: BoxDecoration(color: const Color(0xFFF6F5F8), borderRadius: BorderRadius.circular(9)), child: const Row(children: [Icon(Icons.search, color: muted, size: 19), SizedBox(width: 9), Text('Search jobs, companies...', style: TextStyle(color: muted, fontSize: 11)), Spacer(), Icon(Icons.tune, color: muted, size: 18)]))); }
class LogoMark extends StatelessWidget { const LogoMark({super.key, required this.size}); final double size; @override Widget build(BuildContext context) => Container(width: size, height: size, decoration: BoxDecoration(color: lavender, shape: BoxShape.circle), child: Icon(Icons.business_center, color: purple, size: size * .55)); }
class LogoBox extends StatelessWidget { const LogoBox({super.key, required this.job, this.size = 42}); final Job job; final double size; @override Widget build(BuildContext context) => Container(width: size, height: size, alignment: Alignment.center, decoration: BoxDecoration(color: job.logoColor, borderRadius: BorderRadius.circular(9)), child: Text(job.logo, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 13))); }
class Tag extends StatelessWidget { const Tag({super.key, required this.text, this.green = false}); final String text; final bool green; @override Widget build(BuildContext context) => Container(padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4), decoration: BoxDecoration(color: green ? const Color(0xFFE4F8E8) : lavender, borderRadius: BorderRadius.circular(5)), child: Text(text, style: TextStyle(color: green ? const Color(0xFF2B9D50) : purple, fontSize: 9, fontWeight: FontWeight.w700))); }
class JobCard extends StatelessWidget { const JobCard({super.key, required this.job, this.onTap, this.compact = false}); final Job job; final VoidCallback? onTap; final bool compact; @override Widget build(BuildContext context) => GestureDetector(onTap: onTap, child: Container(margin: const EdgeInsets.only(bottom: 10), padding: const EdgeInsets.all(12), decoration: BoxDecoration(color: Colors.white, border: Border.all(color: line), borderRadius: BorderRadius.circular(10), boxShadow: const [BoxShadow(color: Color(0x08000000), blurRadius: 8, offset: Offset(0, 3))]), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [LogoBox(job: job), const SizedBox(width: 11), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [Expanded(child: Text(job.title, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 13))), if (!compact && job.posted == 'New') const Tag(text: 'New', green: true)]), const SizedBox(height: 5), Text(job.company, style: const TextStyle(color: muted, fontSize: 11)), const SizedBox(height: 5), Text('${job.location} • ${job.type}', style: const TextStyle(color: muted, fontSize: 10)), const SizedBox(height: 4), Text(job.salary, style: const TextStyle(color: ink, fontSize: 11, fontWeight: FontWeight.w700))])), Icon(compact ? Icons.bookmark : Icons.bookmark_border, color: compact ? purple : muted, size: 18)])); }
class SectionHeader extends StatelessWidget { const SectionHeader({super.key, required this.title, required this.action}); final String title, action; @override Widget build(BuildContext context) => Row(children: [Text(title, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 14)), const Spacer(), Text(action, style: const TextStyle(color: purple, fontSize: 11))]); }
class Category extends StatelessWidget { const Category({super.key, required this.icon, required this.label}); final IconData icon; final String label; @override Widget build(BuildContext context) => Container(width: 70, margin: const EdgeInsets.only(right: 13), child: Column(children: [Container(width: 46, height: 46, decoration: BoxDecoration(color: lavender, borderRadius: BorderRadius.circular(11)), child: Icon(icon, color: purple, size: 21)), const SizedBox(height: 7), Text(label, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 9, color: muted))])); }
class ApplicationCard extends StatelessWidget { const ApplicationCard({super.key, required this.job, required this.status}); final Job job; final String status; @override Widget build(BuildContext context) => JobCard(job: job, compact: true, onTap: () {}); }
class ProfileRow extends StatelessWidget { const ProfileRow({super.key, required this.icon, required this.title, this.danger = false}); final IconData icon; final String title; final bool danger; @override Widget build(BuildContext context) => ListTile(leading: Icon(icon, size: 19, color: danger ? Colors.redAccent : muted), title: Text(title, style: TextStyle(fontSize: 12, color: danger ? Colors.redAccent : ink)), trailing: danger ? null : const Icon(Icons.chevron_right, size: 17, color: muted)); }
class SocialButton extends StatelessWidget { const SocialButton({super.key, required this.icon}); final String icon; @override Widget build(BuildContext context) => Expanded(child: Container(height: 45, alignment: Alignment.center, decoration: BoxDecoration(border: Border.all(color: line), borderRadius: BorderRadius.circular(8)), child: Text(icon, style: const TextStyle(fontWeight: FontWeight.w800, color: purple, fontSize: 17)))); }
class DividerWithText extends StatelessWidget { const DividerWithText({super.key, required this.text}); final String text; @override Widget build(BuildContext context) => Row(children: [const Expanded(child: Divider(color: line)), Padding(padding: const EdgeInsets.symmetric(horizontal: 12), child: Text(text, style: const TextStyle(color: muted, fontSize: 11))), const Expanded(child: Divider(color: line))]); }
class StepperRow extends StatelessWidget { const StepperRow({super.key}); @override Widget build(BuildContext context) => Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [step('1', 'Resume', true), lineStep(), step('2', 'Details', false), lineStep(), step('3', 'Review', false)]); Widget step(String n, String label, bool active) => Column(children: [CircleAvatar(radius: 12, backgroundColor: active ? purple : const Color(0xFFF0EFF3), child: Text(n, style: TextStyle(color: active ? Colors.white : muted, fontSize: 11, fontWeight: FontWeight.bold))), const SizedBox(height: 5), Text(label, style: TextStyle(color: active ? purple : muted, fontSize: 10))]); Widget lineStep() => const Expanded(child: Divider(indent: 10, endIndent: 10, color: line)); }
class CityPainter extends CustomPainter { @override void paint(Canvas canvas, Size size) { final paint = Paint()..color = const Color(0xFFF3F0FF); for (var i = 0; i < 12; i++) { final h = 35.0 + (i % 4) * 18; canvas.drawRect(Rect.fromLTWH(i * size.width / 11 - 8, size.height - h - 20, 34, h), paint); } } @override bool shouldRepaint(covariant CustomPainter oldDelegate) => false; }
