part of '../main.dart';

class ApplyScreen extends StatelessWidget {
  const ApplyScreen({super.key, required this.job});
  final Job job;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(leading: const BackButton(), title: const Text('Apply for Job', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800))), body: SingleChildScrollView(padding: const EdgeInsets.fromLTRB(22, 8, 22, 20), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [const StepperRow(), const SizedBox(height: 34), const Text('Upload Resume', style: TextStyle(fontWeight: FontWeight.w800)), const SizedBox(height: 5), const Text('Upload your latest resume', style: TextStyle(color: muted, fontSize: 12)), const SizedBox(height: 13), Container(padding: const EdgeInsets.all(14), decoration: BoxDecoration(border: Border.all(color: line), borderRadius: BorderRadius.circular(10)), child: Row(children: [const Icon(Icons.description_outlined, color: purple), const SizedBox(width: 10), const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('John_Doe_Resume.pdf', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12)), Text('245 KB', style: TextStyle(color: muted, fontSize: 10))]), const Spacer(), TextButton(onPressed: () {}, child: const Text('Change'))])), const SizedBox(height: 24), const Text('Personal Details', style: TextStyle(fontWeight: FontWeight.w800)), const SizedBox(height: 12), const Field(label: 'Full Name', icon: Icons.person_outline, hint: 'John Doe'), const SizedBox(height: 12), const Field(label: 'Email', icon: Icons.mail_outline, hint: 'john.doe@gmail.com'), const SizedBox(height: 12), const Field(label: 'Phone Number', icon: Icons.phone_outlined, hint: '+91 98765 43210'), const SizedBox(height: 30), PrimaryButton(label: 'Next', onPressed: () => Navigator.pop(context))]));
  }
}
