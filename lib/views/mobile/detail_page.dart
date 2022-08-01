import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:loonly_flutter/data/dummy_movies.dart';
import 'package:loonly_flutter/utils/colors.dart';
import 'package:loonly_flutter/utils/const.dart';
import 'package:loonly_flutter/utils/dimens.dart';
import 'package:loonly_flutter/utils/navigation.dart';
import 'package:loonly_flutter/utils/styles_text.dart';
import 'package:loonly_flutter/utils/ui/image_builder_utils.dart';

class DetailPage extends StatefulWidget {
  final Movie data;

  const DetailPage({required this.data, Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var isWatchlist = false;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _headerWidgets(screenSize.width),
            _bodyWidgets(),
            _footerWidgets(screenSize.width)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorWhite,
        onPressed: _updateWishlist,
        tooltip: "${isWatchlist ? "Remove from" : "Add to"} watchlist",
        child: SvgPicture.asset(
          isWatchlist
              ? "assets/icons/ic_heart.svg"
              : "assets/icons/ic_heart_outline.svg",
          color: Colors.redAccent,
        ),
      ),
    );
  }

  void _updateWishlist() {
    setState(() {
      isWatchlist = !isWatchlist;
    });
  }

  _headerWidgets(double screenSize) => AspectRatio(
        aspectRatio: ((screenSize < 600) ? 7 : 14) / 5,
        child: Stack(
          children: [
            /// Image Backdrop
            Hero(
              tag: tagsImageBackdrop,
              child: Image(
                width: double.infinity,
                fit: BoxFit.cover,
                image: NetworkImage(
                    ((screenSize < 600) ? baseImageUrl780 : baseImageUrl1280) +
                        widget.data.backdropUrl),
                loadingBuilder:
                    (_, Widget child, ImageChunkEvent? chunkEvent) =>
                        (chunkEvent == null)
                            ? child
                            : loadingImageProgress(chunkEvent),
              ),
            ),
            Hero(
              tag: tagsImageGradient,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: gradientTransparentToWhite,
                ),
              ),
            ),

            /// Button Back
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(top: spacingLarge),
                padding: const EdgeInsetsDirectional.all(spacingRegular),
                child: ClipRRect(
                  borderRadius: radCircle,
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    color: colorWhiteTransparent50,
                    child: const BackButton(),
                  ),
                ),
              ),
            ),

            /// Movie Title
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 250.0,
                margin: const EdgeInsetsDirectional.only(
                    start: spacingRegular, bottom: spacingRegular),
                child: Text(
                  widget.data.title,
                  style: textMontserrat16Bold,
                ),
              ),
            ),

            /// Image Poster
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: const EdgeInsetsDirectional.only(end: spacingRegular),
                height: 150.0,
                width: 100.0,
                child: Hero(
                  tag: tagsImagePoster,
                  child: ClipRRect(
                    borderRadius: radSmall,
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(((screenSize < 600)
                              ? baseImageUrl500
                              : baseImageUrl780) +
                          widget.data.imageUrl),
                      loadingBuilder:
                          (_, Widget child, ImageChunkEvent? chunkEvent) =>
                              (chunkEvent == null)
                                  ? child
                                  : loadingImageProgress(chunkEvent),
                      errorBuilder: (_, __, ___) =>
                          const Text('Failed load image.'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  _bodyWidgets() => Container(
        margin: const EdgeInsets.symmetric(
            horizontal: spacingRegular, vertical: spacingSmaller),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber),
                const SizedBox(width: spacingSmaller),
                Text(
                  "${widget.data.voteAverage} (${NumberFormat.compact(locale: "en_US").format(widget.data.voteCount)})",
                  style: textMontserrat12,
                ),
              ],
            ),
            const SizedBox(height: spacingSmall),
            Text(
              widget.data.description,
              style: textMontserrat12,
            ),
          ],
        ),
      );

  _footerWidgets(double screenSize) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: spacingRegular,
              vertical: spacingSmaller,
            ),
            child: Text(
              "Other Movies",
              style: textMontserrat14Bold,
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: spacingRegular,
                vertical: spacingSmaller,
              ),
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 2 / 3,
                    crossAxisCount: (screenSize < 600) ? 3 : 6,
                  ),
                  itemCount: listMovie.length,
                  clipBehavior: Clip.none,
                  itemBuilder: (BuildContext context, int index) {
                    var data = listMovie[index];
                    return InkWell(
                      onTap: () {
                        context.navigateTo(DetailPage(data: data));
                      },
                      child: _itemMovieWidget(data),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      );

  _itemMovieWidget(Movie data) => Container(
        padding: const EdgeInsets.all(spacingTiny),
        child: ClipRRect(
          borderRadius: radSmall,
          child: Image(
            fit: BoxFit.cover,
            image: NetworkImage(baseImageUrl500 + data.imageUrl),
            loadingBuilder: (_, Widget child, ImageChunkEvent? chunkEvent) =>
                (chunkEvent == null) ? child : loadingImageProgress(chunkEvent),
          ),
        ),
      );
}
