import 'package:flutter/material.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: educationList.length,
        itemBuilder: (context, index) {
          final education = educationList[index];
          return buildEducationItem(education);
        },
      ),
    );
  }

  Widget buildEducationItem(EducationItem education) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // Column for displaying institution logos
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      education.iconPath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          // Main content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  education.institution,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  education.graduationDate,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  education.awards,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class EducationItem {
  final String institution;
  final String graduationDate;
  final String awards;
  final String iconPath;

  EducationItem({
    required this.institution,
    required this.graduationDate,
    required this.awards,
    required this.iconPath,
  });
}

List<EducationItem> educationList = [
  EducationItem(
    institution: "Batangas State University",
    graduationDate: "2021 - Present",
    awards: "Loading....",
    iconPath: 'assets/images/BSU.jpg',
  ),
  EducationItem(
    institution: "Batangas State University IS-SHS",
    graduationDate: "2020 - 2021",
    awards: "With Honors",
    iconPath: 'assets/images/BSU.jpg',
  ),
  EducationItem(
    institution: "Batangas State University IS-JHS",
    graduationDate: "2018 - 2019",
    awards: "With Honors",
    iconPath: 'assets/images/BSU.jpg',
  ),
  EducationItem(
    institution: "Talaga Elementary School",
    graduationDate: "2014 - 2015",
    awards: "Salutatorian",
    iconPath: 'assets/images/TES.jpg',
  ),
];
