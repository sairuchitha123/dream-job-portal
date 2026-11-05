part of '../main.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});
  @override
  Widget build(BuildContext context) => StandardPage(title: 'Saved Jobs', child: ListView.builder(shrinkWrap: true, physics: const NeverScrollableScrollPhysics(), itemCount: 4, itemBuilder: (_, index) => JobCard(job: jobs[index + 3], compact: true)));
}
