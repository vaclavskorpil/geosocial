import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whereisthefood/domain/maps/my_location/cubit/my_location_cubit.dart';

class MyLocationFloationActionButton extends StatelessWidget {
  const MyLocationFloationActionButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: SizedBox(
        width: 50,
        height: 50,
        child: Material(
          shadowColor: Colors.blue,
          elevation: 5,
          color: Colors.blue,
          child: InkWell(
            onTap: () {
              final locationCubit = context.read<MyLocationCubit>();
              locationCubit.goToMyLocaion();
            },
            child: Icon(
              Icons.my_location,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
