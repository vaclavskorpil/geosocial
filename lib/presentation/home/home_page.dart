import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:geosocial/data_layer/dependenci_injection/injector.dart';
import 'package:geosocial/domain/poi/poi_cubit.dart';
import 'package:geosocial/presentation/appbar/my_appbar.dart';
import 'package:geosocial/presentation/map/map_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<POICubit>(
        create: (context) => injector<POICubit>(),
        child: Scaffold(
          appBar: MyAppbar(),
          body: Stack(
            children: [
              MapsPage(),
              Builder(
                builder: (context) {
                  final isLoading = context
                      .select((POICubit cubit) => cubit.state.isFetching);

                  return Visibility(
                    visible: isLoading,
                    child: Center(
                      child: CircularProgressIndicator(
                        key: Key("Circural_progress_indicatior"),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
