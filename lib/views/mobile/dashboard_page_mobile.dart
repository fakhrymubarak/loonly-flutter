import 'package:flutter/material.dart';
import 'package:loonly_flutter/data/dummy_movies.dart';
import 'package:loonly_flutter/utils/colors.dart';
import 'package:loonly_flutter/utils/const.dart';
import 'package:loonly_flutter/utils/dimens.dart';
import 'package:loonly_flutter/utils/navigation.dart';
import 'package:loonly_flutter/utils/styles_text.dart';
import 'package:loonly_flutter/utils/ui/image_builder_utils.dart';
import 'package:loonly_flutter/utils/ui/scroll_behavior.dart';
import 'package:loonly_flutter/views/mobile/detail_page.dart';

class DashboardPageMobile extends StatelessWidget {
  const DashboardPageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: _movieListPageWidget(1),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: spacingRegular, vertical: spacingSmall),
              child: _movieListWidget(context),
            )
          ],
        ),
      ),
    );
  }

  _movieListPageWidget(int page) {
    var controller = PageController(
      initialPage: page,
    );
    return PageView.builder(
      scrollBehavior: CustomScrollBehavior(),
      controller: controller,
      scrollDirection: Axis.horizontal,
      itemCount: listMovie.length,
      itemBuilder: (BuildContext context, int index) {
        var data = listMovie[index];
        return InkWell(
          onTap: () {
            context.navigateTo(DetailPage(data));
          },
          child: _itemMoviePagerWidget(data),
        );
      },
    );
  }

  _itemMoviePagerWidget(Movie data) => Stack(children: [
        /// Backdrop Image
        Hero(
          tag: tagsImageBackdrop,
          child: Image(
            fit: BoxFit.cover,
            image: NetworkImage(baseImageUrl500 + data.backdropUrl),
          ),
        ),

        Align(
          alignment: Alignment.bottomCenter,
          child: Hero(
            tag: tagsImageGradient,
            child: Container(
              height: 0.0,
              decoration: const BoxDecoration(
                gradient: gradientTransparentToWhite,
              ),
            ),
          ),
        ),

        /// Poster Image
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            margin: const EdgeInsetsDirectional.fromSTEB(
                0.0, 0.0, spacingRegular, spacingRegular),
            height: 150.0,
            width: 100.0,
            child: Hero(
              tag: tagsImagePoster,
              child: ClipRRect(
                borderRadius: radSmall,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(baseImageUrl500 + data.imageUrl),
                  errorBuilder: (_, __, ___) =>
                      const Text('Failed load image.'),
                  loadingBuilder:
                      (_, Widget child, ImageChunkEvent? chunkEvent) =>
                          (chunkEvent == null)
                              ? child
                              : loadingImageProgress(chunkEvent),
                ),
              ),
            ),
          ),
        ),
      ]);

  _movieListWidget(BuildContext context) => MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemCount: listMovie.length,
          itemBuilder: (BuildContext context, int index) {
            var data = listMovie[index];
            return InkWell(
              onTap: () {
                context.navigateTo(DetailPage(data));
              },
              child: _itemMovieWidget(data),
            );
          },
        ),
      );

  _itemMovieWidget(Movie data) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: radSmall,
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(baseImageUrl500 + data.imageUrl),
                errorBuilder: (_, __, ___) => const Text('Failed load image.'),
                loadingBuilder:
                    (_, Widget child, ImageChunkEvent? chunkEvent) =>
                        (chunkEvent == null)
                            ? child
                            : loadingImageProgress(chunkEvent),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: spacingSmaller),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${data.title} (${data.yearPublished.substring(0, 4)})",
                    style: textMontserrat12Bold,
                  ),
                  Text(
                    data.description,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: textMontserrat12,
                  ),
                ],
              ),
            ),
          )
        ],
      );
}
