import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:geosocial/data_layer/dependenci_injection/injector.dart';
import 'package:geosocial/domain/poi/poi_cubit.dart';
import 'package:geosocial/presentation/filter/filter_dialog.dart';
import 'package:geosocial/presentation/map/map_page.dart';
import 'package:geosocial/presentation/theme/custom_icons_icons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<POICubit>(
        create: (context) => injector<POICubit>(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
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


