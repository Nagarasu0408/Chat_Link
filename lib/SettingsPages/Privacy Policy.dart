import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PrivacyPolicyScreen(),
  ));
}

class PrivacyPolicyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children:const [
             Text(
              'Privacy Policy\nLast updated: January 04, 2024\n\n'
                  'This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.\n\n'
                  'We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy. This Privacy Policy has been created with the help of the Privacy Policy Generator.\n\n'
                  'Interpretation and Definitions\nInterpretation\nThe words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.\n\n'
                  'Changes to this Privacy Policy\nWe may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.\n\n'
                  'We will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the "Last updated" date at the top of this Privacy Policy.\n\n'
                  'You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.\n\n'
                  'Contact Us\nIf you have any questions about this Privacy Policy, You can contact us:\n\n'
                  'By email: chatsupport@gmail.com\n',
            ),
          ],
        ),
      ),
    );
  }
}
