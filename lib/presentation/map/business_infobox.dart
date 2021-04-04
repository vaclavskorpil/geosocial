
import 'package:flutter/material.dart';
import 'package:geosocial/common/constants/dimens.dart';
import 'package:geosocial/data_layer/entities/business.dart';
import 'package:geosocial/domain/maps/selected_poi/cubit/selected_poi_cubit.dart';
import 'package:geosocial/presentation/detail/business_detail_page.dart';
import 'package:geosocial/presentation/detail/yelp_rating.dart';
import 'package:geosocial/presentation/widgets/custom_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geosocial/presentation/widgets/yelp_logo.dart';

class BusinessInfoBox extends StatelessWidget {
  void _navigateToDetail(Business business, BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => BusinessDetailPage(businessId: business.id),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      var position = context
          .select((SelectedPOICubit cubit) => cubit.state.infoboxPosition);
      return AnimatedPositioned(
        right: 0,
        left: 0,
        bottom: position,
        curve: Curves.easeInSine,
        duration: Duration(milliseconds: 300),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.all(Dimens.paddingDefault),
            child: Material(            
              borderRadius: BorderRadius.circular(Dimens.cornerRadiusDefault),
              child: Padding(
                padding: const EdgeInsets.all(Dimens.paddingDefault),
                child: Builder(
                  builder: (context) {
                    var business = context.select((SelectedPOICubit cubit) =>
                        cubit.state.selectedBusiness);
                    return InkWell(
                      onTap: () => _navigateToDetail(business, context),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: CustomNetworkImage(
                              url: business.photos.first,
                              fit: BoxFit.fitWidth,
                              width: 80,
                              height: 80,
                            ),
                          ),
                          SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  business.name,
                                  style: Theme.of(context).textTheme.headline2,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      business.price,
                                      style:
                                          Theme.of(context).textTheme.headline2,
                                    ),
                                    SizedBox(width: 10),
                                    YelpRating(
                                        rating: business.rating, width: 100),
                                    SizedBox(width: 6),
                                    YelpLogo(width: 50),
                                  ],
                                ),
                                Text(
                                  business.categories
                                      .map((e) => e.title)
                                      .join(", "),
                                  style: Theme.of(context).textTheme.headline3,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
