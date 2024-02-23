import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [...getHeaders()],
    );
  }
}

List<Widget> getHeaders() {
  return [
    //home
    Text(
      "Home",
      style: GoogleFonts.sen(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    const SizedBox(
      width: 16,
    ),
    //blog
    Text(
      "Blog",
      style: GoogleFonts.sen(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    const SizedBox(
      width: 16,
    ),
    //about us
    Text(
      "About Us",
      style: GoogleFonts.sen(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    const SizedBox(
      width: 16,
    ),
    //contact us
    Text(
      "Contact Us",
      style: GoogleFonts.sen(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    const SizedBox(
      width: 16,
    ),
    Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        color: Colors.white,
      ),
      child: Text(
        "Subscribe",
        style: GoogleFonts.sen(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: const Color(0xff232536),
        ),
      ),
    ),
    const SizedBox(
      width: 16,
    ),
  ];
}
