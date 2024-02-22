import 'package:dev_community_portal/styles/text_styles.dart';
import 'package:dev_community_portal/views/widgets/row_article_card.dart';
import 'package:dev_community_portal/views/widgets/user_info_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dev Community",
          style: GoogleFonts.sen(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff232536),
        elevation: 0.0,
        actions: [
          Row(
            children: [
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
            ],
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
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
                            "Featured Post",
                            style: GoogleFonts.sen(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Step-by-step guide to choosing great font pairs",
                            style: headline2,
                          ),
                          const UserInfoRichText(),
                          Text(
                            "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.",
                            style: GoogleFonts.sen(
                              fontSize: 16,
                              color: const Color(0xff6D6E76),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              color: const Color(0xffFFD050),
                            ),
                            child: Text(
                              "Subscribe",
                              style: GoogleFonts.sen(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.network(
                      'https://picsum.photos/250?image=9',
                    )
                  ],
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "All posts",
                  style: headline1,
                ),
              ),
              ...List.generate(
                12,
                (index) => const RowArticleCard(),
              ),
            ],
          ),
          // GestureDetector(
          //   onTap: () {
          //     // context.go('/learn/1233');
          //     GoRouter.of(context).go('/learn/1233');
          //   },
          //   child: const Text(
          //     "HomePage",
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "What to read next",
                  style: GoogleFonts.sen(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(
                      3,
                      (index) => const ArticleCard(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ArticleCard extends StatelessWidget {
  const ArticleCard({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      width: width / 3.15,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Image.network(
              'https://picsum.photos/250?image=9',
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
    );
  }
}
