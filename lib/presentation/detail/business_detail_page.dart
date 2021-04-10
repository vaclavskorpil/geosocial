import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whereisthefood/common/failures/server_failure.dart';
import 'package:whereisthefood/data_layer/dependenci_injection/injector.dart';
import 'package:whereisthefood/domain/detail/cubit/detail_cubit.dart';
import 'package:whereisthefood/presentation/detail/business_detail_skeleton.dart';
import 'package:shimmer/shimmer.dart';

import 'business_detail.dart';

class BusinessDetailPage extends StatelessWidget {
  final String businessId;

  BusinessDetailPage({@required this.businessId});

  Widget _handleServerFailure(ServerFailure failure) {
    final text = failure.when(
      noPoiFound: () => "",
      serverError: () => "Opps. Somthing went wrong",
      noInternetConnection: () => "You do not have internet connection",
    );

    return Center(child: Text(text));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
            create: (context) =>
                injector<DetailCubit>()..fetchBusiness(businessId),
            child: Container(
              child: BlocBuilder<DetailCubit, DetailState>(
                builder: (context, state) {
                  return AnimatedSwitcher(
                    duration: Duration(milliseconds: 600),
                    child: state.when(
                      detailLoading: () => Shimmer.fromColors(
                          baseColor: Colors.grey[300],
                          highlightColor: Colors.grey[100],
                          child: const BusinessDetailSkeleton()),
                      loadingFailed: _handleServerFailure,
                      succes: (business) => BusinessDetail(business: business),
                    ),
                  );
                },
              ),
            )),
      ),
    );
  }
}
