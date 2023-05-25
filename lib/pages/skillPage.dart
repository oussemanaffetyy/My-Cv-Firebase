import 'package:flutter/material.dart';

class Skill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skill'),
      ),
      body: SingleChildScrollView(
        child: Column(
          
          children: [
         Padding(padding: const EdgeInsets.all(16.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(
                  width: 40,
                  height: 40,
                  image: NetworkImage(
                      "https://user-images.githubusercontent.com/90563044/207675538-4a99115d-e631-46ad-9902-bf13a2205bd9.jpg"
                  ),
                ),
                Text(
                  'Languages',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: const [
                    Image(
                      width: 35,
                      height: 35,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn-icons-png.flaticon.com/512/5968/5968282.png"
                      ),
                    ),
                    Text(
                      "Java",
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Image(
                      width: 35,
                      height: 35,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://img.icons8.com/color/480/kotlin.png"
                      ),
                    ),
                    Text(
                      "Kotlin",
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Image(
                      width: 35,
                      height: 35,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://img.icons8.com/color/480/dart.png"
                      ),
                    ),
                    Text(
                      "Dart",
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(
                  width: 50,
                  height: 50,
                  image: NetworkImage(
                      "https://user-images.githubusercontent.com/90563044/207674162-e9149c2b-1861-4b96-bd5b-4c7fafd7060f.png"),
                ),
                Text(
                  'Android',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
