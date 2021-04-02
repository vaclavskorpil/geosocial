import 'package:flutter/material.dart';
import 'package:geosocial/common/constants/constatns.dart';
import 'package:geosocial/common/constants/dimens.dart';
import 'package:geosocial/data_layer/entities/business.dart';
import 'package:geosocial/presentation/detail/review_list.dart';
import 'package:geosocial/presentation/detail/yelp_rating.dart';
import 'package:geosocial/presentation/widgets/custom_network_image.dart';
import 'package:geosocial/presentation/widgets/yelp_logo.dart';
import 'package:url_launcher/url_launcher.dart';

class BusinessDetail extends StatelessWidget {
  final Business business;
  final bool isLoading;

  const BusinessDetail({@required this.business, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _CoverImageWithNavigation(
          business: business,
        ),
        Expanded(child: DetailBody(business: business))
      ],
    );
  }
}

class DetailBody extends StatelessWidget {
  const DetailBody({
    Key key,
    @required this.business,
  }) : super(key: key);

  final Business business;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(
            left: Dimens.paddingDefault, right: Dimens.paddingDefault),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Text(
              business.name,
              style: Theme.of(context).textTheme.headline1,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            _RatingOpeningHoursRow(business: business),
            const SizedBox(height: 8),
            Adress(business: business),
            const SizedBox(height: 8),
            if (business.phone != null) PhoneContact(business: business),
            const SizedBox(height: 8),
            PriceLevel(business: business),
            const SizedBox(height: 8),
            Categories(business: business),
              const SizedBox(height: 8),
            Text(
              "Reviews",
              style: Theme.of(context).textTheme.headline2,
            ),
            ReviewsList(reviews: business.reviews),
          ],
        ),
      ),
    );
  }
}

class _RatingOpeningHoursRow extends StatelessWidget {
  const _RatingOpeningHoursRow({
    Key key,
    @required this.business,
  }) : super(key: key);

  final Business business;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RatingBar(rating: business.rating, reviews: business.reviewCount),
        _OpeningHours(business: business)
      ],
    );
  }
}

class _OpeningHours extends StatelessWidget {
  final Business business;

  const _OpeningHours({
    Key key,
    @required this.business,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          business.getIsOpenString(),
          style: Theme.of(context)
              .textTheme
              .headline3
              .copyWith(color: business.isOpen() ? Colors.green : Colors.red),
        ),
        Text(
          business.todaysOpeningOursString(),
          style: Theme.of(context).textTheme.headline3,
        ),
      ],
    );
  }
}

class Adress extends StatelessWidget {
  final Business business;

  Adress({@required this.business});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Adress",
          style: Theme.of(context).textTheme.headline2,
        ),
        InkWell(
          onTap: () => openInGoogleMaps(business),
          child: Text(
            business.location.formattedAddress,
            style: Theme.of(context).textTheme.headline3,
          ),
        ),
      ],
    );
  }

  void openInGoogleMaps(Business business) async {
    var destinationUrl =
        "${Constants.googleMapsUrl}${business.coordinates.latitude},${business.coordinates.longitude}";

    if (await canLaunch(destinationUrl)) launch(destinationUrl);
  }
}

class Categories extends StatelessWidget {
  final Business business;

  Categories({@required this.business});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categories",
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          business.categories?.map((e) => e.title)?.join(", ") ?? "",
          style: Theme.of(context).textTheme.headline3,
        ),
      ],
    );
  }
}

class PriceLevel extends StatelessWidget {
  final Business business;

  PriceLevel({@required this.business});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Price level",
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          business.price ?? "",
          style: Theme.of(context)
              .textTheme
              .headline2
              .copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}

class PhoneContact extends StatelessWidget {
  final Business business;

  PhoneContact({@required this.business});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Phone",
          style: Theme.of(context).textTheme.headline2,
        ),
        if (business.phone != null)
          InkWell(
            onTap: openCallIntent,
            child: Text(
              business.displayPhone ?? business.phone.toString(),
              style: Theme.of(context).textTheme.headline3,
            ),
          )
      ],
    );
  }

  void openCallIntent() async {
    var url = "tel:${business.phone}";
    if (await canLaunch(url)) launch(url);
  }
}

class _CoverImageWithNavigation extends StatelessWidget {
  final Business business;

  const _CoverImageWithNavigation({@required this.business});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          bottomLeft: const Radius.circular(Dimens.cornerRadiusDefault),
          bottomRight: const Radius.circular(Dimens.cornerRadiusDefault)),
      child: Container(
        color: Colors.grey,
        width: double.infinity,
        height: 200,
        child: Stack(
          children: [
            if (business.photos.isNotEmpty) BackgroundImage(business: business),
            const _NavigateBackButton(),
          ],
        ),
      ),
    );
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key key,
    @required this.business,
  }) : super(key: key);

  final Business business;

  @override
  Widget build(BuildContext context) {
    return CustomNetworkImage(
      url: business?.photos?.first,
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fitWidth,
    );
  }
}

class RatingBar extends StatelessWidget {
  final double rating;
  final int reviews;
  final String url;

  const RatingBar({@required this.rating, @required this.reviews, this.url});

  void _onTap() async {
    if (await canLaunch(url)) launch(url);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onTap,
      child: Container(
        height: 45,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                YelpRating(rating: rating, width: 138),
                SizedBox(height: 3),
                Text(
                    reviews != null
                        ? "Based on ${reviews.toString()} reviews"
                        : "",
                    style: Theme.of(context)
                        .textTheme
                        .headline3
                        .copyWith(color: Colors.grey[700])),
              ],
            ),
            SizedBox(width: 10),
            YelpLogo(
              width: 60,
            )
          ],
        ),
      ),
    );
  }
}

class _NavigateBackButton extends StatelessWidget {
  const _NavigateBackButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      left: 10,
      child: ClipOval(
        child: Material(
          color: Colors.transparent,
          child: IconButton(
            color: Colors.transparent,
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
      ),
    );
  }
}
