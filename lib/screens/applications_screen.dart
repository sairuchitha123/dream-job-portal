part of '../main.dart';

class ApplicationsScreen extends StatelessWidget {
  const ApplicationsScreen({super.key});
  @override
  Widget build(BuildContext context) => StandardPage(title: 'My Applications', tabs: ['Applied', 'Shortlisted', 'Interview', 'Offered'], child: ListView.builder(shrinkWrap: true, physics: const NeverScrollableScrollPhysics(), itemCount: 4, itemBuilder: (_, index) => ApplicationCard(job: jobs[index], status: ['Under Review', 'Shortlisted', 'Interview Scheduled', 'Under Review'][index])));
}
