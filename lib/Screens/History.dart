import 'package:flutter/material.dart';
import 'package:link/Components/Logo.dart';
import 'package:link/Components/SearchBar.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  final TextEditingController _SearchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Logo(),
            Custom_SearchBar(
                hintText: 'Search for User...',
                controller: _SearchController),
            for (int i = 0; i < 20; i++)
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  child: Row(
                    children: [
                      ClipRRect(
                        child: Image.network(
                          "https://static.vecteezy.com/system/resources/thumbnails/029/938/693/small_2x/3d-cartoon-cute-boy-photo.jpg",
                          height: 55,
                          width: 55,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ID-717821F235ERITA",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Last Chat Date...",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
