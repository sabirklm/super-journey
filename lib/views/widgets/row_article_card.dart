import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RowArticleCard extends StatelessWidget {
  const RowArticleCard({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(16),
      width: width < 880 ? width : 880,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Image.network(
            'https://picsum.photos/250?image=10',
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Startup".toUpperCase(),
                    style: GoogleFonts.sen(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "A UX Case Study Creating a Studious Environment for Students: ",
                    style: GoogleFonts.sen(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.",
                    style: GoogleFonts.sen(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
