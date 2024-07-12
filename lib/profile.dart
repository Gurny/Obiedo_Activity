import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final double coverHeight = 200;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildContent(),
          buildAboutSection(),
          const SizedBox(height: 32),  // Added space after ABOUT section
        ],
      ),
    );
  }

  Widget buildTop() {
    final top = coverHeight - profileHeight / 2;
    final bottom = profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(top: top, child: buildProfileImage()),
      ],
    );
  }

  Widget buildCoverImage() => Container(
    color: Colors.grey,
    child: Image.asset(
      'assets/images/profileHeader.jpg',
      width: double.infinity,
      height: coverHeight,
      fit: BoxFit.cover,
    ),
  );

  Widget buildProfileImage() => Container(
    width: profileHeight,
    height: profileHeight,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: Colors.white,
        width: 4,
      ),
    ),
    child: CircleAvatar(
      radius: profileHeight / 2,
      backgroundColor: Colors.grey.shade800,
      backgroundImage: const AssetImage('assets/images/profilepic.jpg'),
    ),
  );

  Widget buildContent() => const Column(
    children: [
      SizedBox(height: 8),
      Text(
        'Grant Thomas Grant',
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 8),
      Text(
        '"Make Life, not a Living"',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: Colors.grey,
        ),
      ),
      SizedBox(height: 8),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.location_pin, color: Color.fromRGBO(199, 54, 89,1)),
          SizedBox(width: 4),
          Text(
            'Batangas City',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
      SizedBox(height: 32),
      Divider(),
      SizedBox(height: 32),
    ],
  );

  Widget buildAboutSection() => const Padding(
    padding: EdgeInsets.symmetric(horizontal: 48),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ABOUT',
          style: TextStyle(
            color: Color.fromRGBO(199, 54, 89,1),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          "an Information Technology major in Business Analytics. I believe that if I can't handle stress, I can't handle success. My life goal is to translate my ideals within my mind into real-world achievements and contributions.."
          , textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        // Add space here
        SizedBox(height: 32),  // Added space after ABOUT section
      ],
    ),
  );
}
