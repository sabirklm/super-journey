import 'package:dev_community_portal/bloc/all_article_bloc.dart';
import 'package:dev_community_portal/bloc/featured_article_bloc.dart';
import 'package:dev_community_portal/styles/text_styles.dart';
import 'package:dev_community_portal/views/widgets/featured_post_widget.dart';
import 'package:dev_community_portal/views/widgets/header_widget.dart';
import 'package:dev_community_portal/views/widgets/row_article_card.dart';
import 'package:dev_community_portal/views/widgets/user_info_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<FeaturedArticleBloc>().add(GetFeaturedArticleEvent());
    context.read<AllArticleBloc>().add(GetAllArticleEvent());
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: width < 596
          ? Container(
              width: 250,
              color: const Color(0xff232536),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...getHeaders(),
                ],
              ),
            )
          : null,
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {},
          child: Text(
            "Dev Community",
            style: GoogleFonts.sen(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: const Color(0xff232536),
        elevation: 0.0,
        actions: [
          if (width > 590) const HeaderWidget(),
        ],
      ),
      body: ListView(
        children: [
          BlocBuilder<FeaturedArticleBloc, FeaturedArticleState>(
            builder: (context, state) {
              if (state is FeaturedArticleInitial) {
                return const SizedBox();
              }
              if (state is FeaturedArticleLoading) {
                return const FeaturedPostLoadingShimmer();
              }
              if (state is FeaturedArticleLoaded) {
                return FeaturedPostWidget(article: state.article);
              }
              return const SizedBox();
            },
          ),

          // const FeaturedPostLoadingShimmer(),
          // const SizedBox(
          //   height: 16,
          // ),
          // const FeaturedPostWidget(),

          BlocBuilder<AllArticleBloc, AllArticleState>(
            builder: (context, state) {
              if (state is AllArticleInitial) {
                return const SizedBox();
              }
              if (state is AllArticleLoading) {
                return Column(
                  children: [
                    ...List.generate(
                      6,
                      (index) => const FeaturedPostLoadingShimmer(),
                    )
                  ],
                );
              }
              if (state is AllArticleLoaded) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        "All posts",
                        style: headline2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Divider(
                        color: Colors.grey[300],
                      ),
                    ),
                    ...List.generate(
                      state.articles.length,
                      (index) => const RowArticleCard(),
                    ),
                  ],
                );
              }
              return const SizedBox();
            },
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

          Container(
            height: 320,
            padding: const EdgeInsets.symmetric(
              horizontal: 128,
              vertical: 64,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color: const Color(0xff232536),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color: const Color(0xff6D6E76),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          "Subscribe to our news letter to get \nlatest updates and news",
                          style: GoogleFonts.sen(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: GoogleFonts.sen(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(0),
                              ),
                            ),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            filled: true,
                            fillColor: const Color(0xff232536),
                            contentPadding: const EdgeInsets.only(
                              left: 15,
                              bottom: 11,
                              top: 11,
                              right: 15,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 12.5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0),
                          color: const Color(0xffFFD050),
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
                    ],
                  ),
                ],
              ),
            ),
          )
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
