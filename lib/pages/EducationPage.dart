import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        
        padding: const EdgeInsets.all(16.0),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'EDUCATION',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            _buildEducationItem(
              '2023 - Master professionnel',
              'Développement des Systèmes Informatiques et Réseaux (DSIR)',
            ),
            const SizedBox(height: 16.0),
            _buildEducationItem(
              '2022 - License appliqué en technologie de l informatique',
              'Embedded and mobile system',
            ),
            const SizedBox(height: 16.0),
            _buildEducationItem(
              '2019 - Baccalauréat',
              'Baccalauréat En Informatique',
            ),
            const SizedBox(height: 32.0),
            const Text(
              'SPECIALTIES',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            _buildSpecialtiesItem(
              'Computer Engineering',
              'Software Engineering, Decisional Informatics, Web Development, Deep Learning, Entrepreneurial Management',
            ),
           
          ],
        ),
      ),
    );
  }

  Widget _buildEducationItem(String duration, String title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            duration,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            title,
            style: const TextStyle(fontSize: 16.0, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildSpecialtiesItem(String title, String specialties) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            specialties,
            style: const TextStyle(fontSize: 16.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}