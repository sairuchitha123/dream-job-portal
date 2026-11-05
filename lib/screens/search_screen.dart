part of '../main.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(children: [Padding(padding: const EdgeInsets.fromLTRB(20, 14, 20, 10), child: Row(children: [const Icon(Icons.arrow_back), const Expanded(child: Center(child: Text('Search Jobs', style: TextStyle(fontWeight: FontWeight.w800)))), const Icon(Icons.tune)])), Padding(padding: const EdgeInsets.symmetric(horizontal: 20), child: SearchBarBox()), Padding(padding: const EdgeInsets.fromLTRB(20, 18, 20, 8), child: Row(children: [filter('All', true), filter('Jobs', false), filter('Internships', false)])), Expanded(child: ListView.builder(padding: const EdgeInsets.symmetric(horizontal: 20), itemCount: jobs.length, itemBuilder: (context, index) => JobCard(job: jobs[index], onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => JobDetailsScreen(job: jobs[index])))))]));
  }
  Widget filter(String label, bool active) => Expanded(child: Container(padding: const EdgeInsets.symmetric(vertical: 10), decoration: BoxDecoration(border: Border(bottom: BorderSide(color: active ? purple : line, width: active ? 2 : 1))), child: Text(label, textAlign: TextAlign.center, style: TextStyle(color: active ? purple : muted, fontWeight: active ? FontWeight.bold : FontWeight.normal, fontSize: 12))));
}
