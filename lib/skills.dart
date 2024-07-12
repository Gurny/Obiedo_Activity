import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Technical Skills',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.red[800],
                ),
              ),
              const SizedBox(height: 16),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.2,
                ),
                itemCount: technicalSkills.length,
                itemBuilder: (context, index) {
                  final skill = technicalSkills[index];
                  return buildSkillTile(skill);
                },
              ),
              const SizedBox(height: 32),
              const Divider(),
              const SizedBox(height: 32),
              Text(
                'Non-Technical Skills',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.red[800],
                ),
              ),
              const SizedBox(height: 16),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: nonTechnicalSkills.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.2,
                ),
                itemBuilder: (context, index) {
                  final skill = nonTechnicalSkills[index];
                  return buildSkillTile(skill);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSkillTile(SkillItem skill) {
    return Container(
      padding: const EdgeInsets.all(16),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            skill.icon,
            size: 48,
            color: const Color.fromRGBO(199, 54, 89,1) ,
          ),
          const SizedBox(height: 12),
          Text(
            skill.title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class SkillItem {
  final IconData icon;
  final String title;

  SkillItem({
    required this.icon,
    required this.title,
  });
}

// List of Technical Skills
List<SkillItem> technicalSkills = [
  SkillItem(
    icon: Icons.code,
    title: 'SQL',
  ),
  SkillItem(
    icon: Icons.spellcheck,
    title: 'Microsoft Excel',
  ),
  SkillItem(
    icon: Icons.pie_chart,
    title: 'Microsoft PowerBI',
  ),
  SkillItem(
    icon: Icons.image_search,
    title: 'Data Annotation',
  ),
];

// List of Non-Technical Skills
List<SkillItem> nonTechnicalSkills = [
  SkillItem(
    icon: Icons.check_circle,
    title: 'Attention to Detail',
  ),
  SkillItem(
    icon: Icons.lightbulb,
    title: 'Problem-Solving',
  ),
  SkillItem(
    icon: Icons.message,
    title: 'Public Speaking',
  ),
  SkillItem(
    icon: Icons.leaderboard,
    title: 'Leadership Skills',
  ),
];
