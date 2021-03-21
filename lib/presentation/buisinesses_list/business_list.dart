import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geosocial/datalayer/dependenci_injection/injector.dart';
import 'package:geosocial/datalayer/entities/business.dart';
import 'package:geosocial/domailn/businesses_cubit/business_cubit.dart';

import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';

class BusinessList extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BusinessCubit>(
      create: (_) => injector<BusinessCubit>()..fetchBusinesses(),
      child: Center(
          child: BlocConsumer<BusinessCubit, BusinessState>(
        listenWhen: (_, currentState) => currentState.failure.isSome(),
        listener: (context, state) => {
          //todo handle failure
        },
        builder: (context, state) {
          return ListView.builder(
            controller: _scrollController
              ..addListener(() {
                final cubit = context.read<BusinessCubit>();
                const preFetchOffset = 500;
                final shouldFetchMore = (_scrollController.offset >
                        _scrollController.position.maxScrollExtent - preFetchOffset) &&
                    !state.isFetching;
                print("should fethc more $shouldFetchMore");
                if (shouldFetchMore) {
                  cubit.fetchBusinesses();
                }
              }),
            itemCount: state.businesses.length,
            itemBuilder: (context, index) =>
                BusinessTile(state.businesses[index]),
          );
        },
      )),
    );
  }
}

class BusinessTile extends StatelessWidget {
  final Business _business;
  BusinessTile(this._business);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 100,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              const BoxShadow(
                color: Colors.grey,
                spreadRadius: 4,
                blurRadius: 8,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: BusinessTileBody(_business),
          )),
    );
  }
}

class BusinessTileBody extends StatelessWidget {
  final Business _business;
  BusinessTileBody(this._business);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FancyShimmerImage(imageUrl: _business.photos.first ?? ""),
        /* BusinessInfo(_business), */
        /* BusinessTrailnigInfo(_business) */
      ],
    );
  }
}

class BusinessInfo extends StatelessWidget {
  /* final Business _business;
  BusinessInfo(this._business);
 */
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}

class BusinessTrailnigInfo extends StatelessWidget {
/*   final Business _business;
  BusinessTrailnigInfo(this._business);
 */
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}
