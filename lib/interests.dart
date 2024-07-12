import 'package:flutter/material.dart';

class Interests extends StatelessWidget {
  const Interests({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          buildCoverImage(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const Text(
                  'I am passionate about data analytics and artificial intelligence '
                      'because they empower us to uncover hidden patterns and make informed decisions. '
                      'The process of transforming raw data into actionable insights excites me, as it opens '
                      'doors to innovative solutions and advancements. Exploring the potential of AI to solve '
                      'complex problems and drive progress fuels my enthusiasm and motivates my work in the field.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCoverImage() => Container(
    color: Colors.grey,
    child: Image.asset(
      'assets/images/interestHeader.png',
      width: double.infinity,
      height: 280,
      fit: BoxFit.cover,
    ),
  );
}
