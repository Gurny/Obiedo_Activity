import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            ContactTile(
              icon: Icons.facebook,
              title: 'Facebook',
              subtitle: 'https://www.facebook.com/GrantTowmas/'
            ),
            SizedBox(height: 16),
            ContactTile(
              icon: Icons.email,
              title: 'Gmail',
              subtitle: '21-09532@g.batstate-u.edu.ph',
            ),
            SizedBox(height: 16),
            ContactTile(
              icon: Icons.phone,
              title: 'Contact Number',
              subtitle: '+63 995 5696721',
            ),
          ],
        ),
      ),
    );
  }
}

class ContactTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;


  const ContactTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Icon(
          icon,
          size: 36,
          color: const Color.fromRGBO(199, 54, 89,1),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[600],
          ),
        ),
        onTap: () {
          return;
        },
      ),
    );
  }

}