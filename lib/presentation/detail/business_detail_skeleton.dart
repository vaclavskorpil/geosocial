import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:geosocial/common/constants/dimens.dart';

import 'package:geosocial/presentation/detail/yelp_rating.dart';
import 'package:geosocial/presentation/widgets/yelp_logo.dart';

const double textHeight = 14;
const double textTinyHeight = 12;
const double titleHeight = 32;

const double adressWidth = 120;
const double titleWidth = 250;
const double phoneWidth = 160;
const textCornerRadius = 8.0;

class BusinessDetailSkeleton extends StatelessWidget {
  const BusinessDetailSkeleton();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: const BorderRadius.only(
              bottomLeft: const Radius.circular(textCornerRadius),
              bottomRight: const Radius.circular(textCornerRadius),
            ),
          ),
        ),
        SizedBox(height: 8),
        Expanded(child: const _DetailSkeletonBody())
      ],
    );
  }
}

class _DetailSkeletonBody extends StatelessWidget {
  const _DetailSkeletonBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: Dimens.paddingDefault, right: Dimens.paddingDefault),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: titleWidth,
            height: titleHeight,
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: const BorderRadius.all(
                Radius.circular(textCornerRadius),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  _RatingOpeningHoursRowSkeleton(),
                  const SizedBox(height: 8),
                  _AdressSkeleton(),
                  const SizedBox(height: 8),
                  _PhoneContactSkeleton(),
                  const SizedBox(height: 8),
                  _PriceLevelSkeleton(),
                  const SizedBox(height: 8),
                  _CategoriesSkeleton(),
                  const SizedBox(height: 8),
                  Text(
                    "Reviews",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const ReviewTileSkeleton(),
                  const ReviewTileSkeleton(),
                  const ReviewTileSkeleton(),
                ],
              ),
            ),
          )
          //ReviewsList(),
        ],
      ),
    );
  }
}

class ReviewTileSkeleton extends StatelessWidget {
  const ReviewTileSkeleton();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Dimens.paddingSmall,
        bottom: Dimens.paddingSmall,
      ),
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: const BorderRadius.all(
            Radius.circular(Dimens.cornerRadiusDefault),
          ),
        ),
      ),
    );
  }
}

class _RatingOpeningHoursRowSkeleton extends StatelessWidget {
  const _RatingOpeningHoursRowSkeleton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const _RatingBarSkeleton(),
        const _OpeningHoursSkeleton(),
      ],
    );
  }
}

class _OpeningHoursSkeleton extends StatelessWidget {
  const _OpeningHoursSkeleton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            height: textHeight,
            width: 60,
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: const BorderRadius.all(
                const Radius.circular(textCornerRadius),
              ),
            )),
        SizedBox(height: 4),
        Container(
          height: textHeight,
          width: 60,
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: const BorderRadius.all(
              const Radius.circular(textCornerRadius),
            ),
          ),
        )
      ],
    );
  }
}

class _AdressSkeleton extends StatelessWidget {
  const _AdressSkeleton();

  static final adressContainer = Container(
    height: textHeight,
    width: adressWidth,
    decoration: const BoxDecoration(
      color: Colors.grey,
      borderRadius: const BorderRadius.all(
        const Radius.circular(textCornerRadius),
      ),
    ),
  );

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
        adressContainer,
        SizedBox(height: 3),
        adressContainer,
        SizedBox(height: 3),
        adressContainer
      ],
    );
  }
}

class _PhoneContactSkeleton extends StatelessWidget {
  _PhoneContactSkeleton();

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
        Container(
          height: textHeight,
          width: phoneWidth,
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: const BorderRadius.all(
              Radius.circular(textCornerRadius),
            ),
          ),
        ),
      ],
    );
  }
}

class _RatingBarSkeleton extends StatelessWidget {
  const _RatingBarSkeleton();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const YelpRating(rating: 3, width: 138),
              const SizedBox(height: 4),
              Container(
                  height: textTinyHeight,
                  width: 138,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(textCornerRadius),
                    ),
                  )),
            ],
          ),
          const SizedBox(width: 10),
          const YelpLogo(
            width: 60,
          )
        ],
      ),
    );
  }
}

class _CategoriesSkeleton extends StatelessWidget {
  const _CategoriesSkeleton();

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
        Container(
          height: textHeight,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: const BorderRadius.all(
              const Radius.circular(textCornerRadius),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Container(
          height: textHeight,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: const BorderRadius.all(
              const Radius.circular(textCornerRadius),
            ),
          ),
        )
      ],
    );
  }
}

class _PriceLevelSkeleton extends StatelessWidget {
  const _PriceLevelSkeleton();

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
          '\$\$\$\$\$',
          style: Theme.of(context).textTheme.headline2,
        ),
      ],
    );
  }
}
