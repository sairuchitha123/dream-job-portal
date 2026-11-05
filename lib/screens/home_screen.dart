part of '../main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: CustomScrollView(slivers: [
      SliverPadding(padding: const EdgeInsets.fromLTRB(22, 18, 22, 0), sliver: SliverToBoxAdapter(child: Row(children: [const Icon(Icons.menu), const Spacer(), const Icon(Icons.notifications_none)]))),
      SliverPadding(padding: const EdgeInsets.fromLTRB(22, 25, 22, 0), sliver: SliverToBoxAdapter(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [const Text('Hello, John 👋', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800)), const SizedBox(height: 4), const Text('Find the best jobs & internships', style: TextStyle(color: muted, fontSize: 12)), const SizedBox(height: 18), SearchBarBox(onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const SearchScreen())))]))),
      SliverPadding(padding: const EdgeInsets.fromLTRB(22, 18, 22, 0), sliver: SliverToBoxAdapter(child: Container(height: 108, padding: const EdgeInsets.all(18), decoration: BoxDecoration(gradient: const LinearGradient(colors: [purple, Color(0xFF7A48ED)]), borderRadius: BorderRadius.circular(14)), child: Row(children: [const Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Upgrade Your Career', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 16)), SizedBox(height: 5), Text('Find the right opportunity\nfor your future.', style: TextStyle(color: Colors.white70, fontSize: 11, height: 1.35))]), Icon(Icons.business_center, color: Colors.white, size: 58)]))),
      SliverPadding(padding: const EdgeInsets.fromLTRB(22, 22, 22, 10), sliver: SliverToBoxAdapter(child: SectionHeader(title: 'Categories', action: 'View all'))),
      SliverPadding(padding: const EdgeInsets.symmetric(horizontal: 22), sliver: SliverToBoxAdapter(child: SizedBox(height: 86, child: ListView(scrollDirection: Axis.horizontal, children: const [Category(icon: Icons.computer, label: 'IT & Software'), Category(icon: Icons.lightbulb_outline, label: 'Design'), Category(icon: Icons.campaign_outlined, label: 'Marketing'), Category(icon: Icons.account_balance, label: 'Finance'), Category(icon: Icons.more_horiz, label: 'More')])))),
      SliverPadding(padding: const EdgeInsets.fromLTRB(22, 15, 22, 10), sliver: SliverToBoxAdapter(child: SectionHeader(title: 'Top Picks For You', action: 'View all'))),
      SliverPadding(padding: const EdgeInsets.symmetric(horizontal: 22), sliver: SliverList(delegate: SliverChildBuilderDelegate((context, index) => JobCard(job: jobs[index], onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => JobDetailsScreen(job: jobs[index])))), childCount: 4))),
      const SliverToBoxAdapter(child: SizedBox(height: 12)),
    ]));
  }
}
