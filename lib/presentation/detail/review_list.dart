import 'package:flutter/material.dart';
import 'package:whereisthefood/common/constants/dimens.dart';
import 'package:whereisthefood/data_layer/entities/review.dart';
import 'package:whereisthefood/data_layer/entities/user.dart';
import 'package:whereisthefood/presentation/detail/yelp_rating.dart';
import 'package:whereisthefood/presentation/widgets/custom_network_image.dart';
import 'package:url_launcher/url_launcher.dart';

class ReviewsList extends StatelessWidget {
  final List<Review> reviews;

  ReviewsList({@required this.reviews});

  @override
  Widget build(BuildContext context) {
    return reviews.length != 0 ? ListView.builder(
      clipBehavior: Clip.none,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: reviews.length,
      itemBuilder: (context, position) => Padding(
        padding: const EdgeInsets.only(
          top: Dimens.paddingSmall,
          bottom: Dimens.paddingSmall,
        ),
        
        child:  ReviewTile(
          review: reviews[position],
        )
      ),
    ) : const NoReviewsTile();
  }
}

class NoReviewsTile extends StatelessWidget {
  

  const NoReviewsTile();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: Dimens.paddingSmall,
          bottom: Dimens.paddingSmall,
        ),
      child: Material(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.all(
          Radius.circular(
            Dimens.cornerRadiusDefault,
          ),
        ),
        elevation: 7,
        child: Padding(
          padding: const EdgeInsets.only(
          top: Dimens.paddingBig,
          bottom: Dimens.paddingBig,
        ),
          child: Center(child: Text("There are no reviews.", style: Theme.of(context).textTheme.headline2,), ),
        ),
      ),
    );
  }
}

class ReviewTile extends StatelessWidget {
  final Review review;

  ReviewTile({@required this.review});

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.all(
        Radius.circular(
          Dimens.cornerRadiusDefault,
        ),
      ),
      elevation: 7,
      child: _ReviewTileBody(review: review),
    );
  }
}

class _ReviewTileBody extends StatelessWidget {
  const _ReviewTileBody({
    Key key,
    @required this.review,
  }) : super(key: key);

  final Review review;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (await canLaunch(review.url)) launch(review.url);
      },
      child: Padding(
        padding: const EdgeInsets.all(Dimens.paddingDefault),
        child: Column(
          children: [
            _ImageAndName(user: review.user),
            const SizedBox(height: 2),
            _RatingAndDate(review: review),
            const SizedBox(height: 2),
            Text(
              review.text,
              style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        ),
      ),
    );
  }
}

class _ImageAndName extends StatelessWidget {
  final User user;

  const _ImageAndName({@required this.user});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipOval(
          child: CustomNetworkImage(
            url: user.imageUrl,
            width: 20,
            height: 20,
          ),
        ),
        SizedBox(width: Dimens.paddingDefault),
        Text(
          user.name,
          style: Theme.of(context).textTheme.headline2,
        ),
      ],
    );
  }
}

class _RatingAndDate extends StatelessWidget {
  final Review review;

  const _RatingAndDate({@required this.review});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        YelpRating(rating: review.rating.toDouble(), width: 80),
        SizedBox(width: 5),
        Text(
          review.timeCreated,
          style: Theme.of(context).textTheme.bodyText2,
        )
      ],
    );
  }
}
