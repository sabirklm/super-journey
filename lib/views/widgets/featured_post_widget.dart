import 'package:dev_community_portal/views/widgets/user_info_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

import '../../models/article.dart';

class FeaturedPostWidget extends StatelessWidget {
  final Article article;

  const FeaturedPostWidget({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        color: const Color(0xffF4F0F8),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: width / 2,
                decoration: BoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${article.type}",
                      style: GoogleFonts.sen(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "${article.title}",
                      style: GoogleFonts.sen(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff232536),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const UserInfoRichText(),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "${article.description}",
                      style: GoogleFonts.sen(
                        fontSize: 16,
                        color: const Color(0xff6D6E76),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: const Color(0xffFFD050),
                      ),
                      child: Text(
                        "Read More",
                        style: GoogleFonts.sen(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff232536),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Image.network(
                article.urlToImage ?? 'https://picsum.photos/250?image=9',
              ).animate().fadeIn(duration: 3700.ms),
            ],
          ),
        ],
      ),
    );
  }
}

class FeaturedPostLoadingShimmer extends StatelessWidget {
  const FeaturedPostLoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade50,
        highlightColor: Colors.grey.shade300,
        period: const Duration(seconds: 3),
        child: Container(
          height: 280,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            color: const Color(0xffF4F0F8),
          ),
        ),
      ),
    );
  }
}
