import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:geosocial/data_layer/dependenci_injection/injector.dart';
import 'package:geosocial/domain/businesses_cubit/business_cubit.dart';
import 'package:geosocial/presentation/appbar/my_appbar.dart';
import 'package:geosocial/presentation/map/map_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<BusinessCubit>(
        create: (context) => injector<BusinessCubit>(),
        child: Scaffold(
          appBar: MyAppbar(),
          body: Stack(
            children: [
              MapsPage(),
              Builder(
                builder: (context) {
                  final isLoading = context
                      .select((BusinessCubit cubit) => cubit.state.isFetching);

                  return Visibility(
                    visible: isLoading,
                    child: CircularProgressIndicator(
                      key: Key("Circural_progress_indicatior"),
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
