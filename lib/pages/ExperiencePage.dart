import 'package:flutter/material.dart';

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // title: 'Professional Experience',
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            const Text(
              'EXPERIENCE',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: _buildExperienceSection(
                  'Février 2020 - Mars 2020',
                  'Stage d’initiation',
                  'La société TPAP, TRANSFORMATION PAPIER spécialisée Papier.',
                  ' - Connaissances des éléments de bases d’une installation électrique et informatique',
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: _buildExperienceSection(
                  'Juillet 2021 - Août 2020',
                  'Stage Technicien',
                  'ManagerX Solutions, Solutions de Gestion pour tous les Types de Projets',
                  ' - Conception et développement d’une application mobile Android de management client en utilisant Java, PHP, JSON, SQL,XML.',
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: _buildExperienceSection(
                  'Février 2022 à Juin 2022',
                  'STAGE DE FIN D’ETUDES',
                  'SMARTER, Société Administratif & Logistique',
                  ' - Étude et conception d’une application de commande par reconnaissance des objets.'

                  ,

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExperienceSection(String duration, String title, String description, String s) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(duration, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
        const SizedBox(height: 8),
        Text(title, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white)),
        const SizedBox(height: 8),
        Text(description),
        Text(s)
      ],
    );
  }
}