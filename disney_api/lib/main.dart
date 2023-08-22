import 'package:disney_api/data/api_call.dart';
import 'package:disney_api/data/disney_model.dart';
import 'package:disney_api/widgets/card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ListView(
        children: [
          AppBar(
            title: const Text('data'),
          ),
          FutureBuilder(
            future: DisneyChar().disneyChar(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.connectionState == ConnectionState.done) {
                final char = snapshot.data;
                return GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    mainAxisExtent: 250,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    if (char?.data?.isEmpty ?? true) {
                      return const SizedBox.shrink();
                    }
                    return CharCard(
                      char: char?.data?[index] ?? Data(),
                    );
                  },
                  itemCount: char?.data?.length,
                );
              } else {
                return const Text('Error');
              }
            },
          ),
        ],
      )),
    );
  }
}
