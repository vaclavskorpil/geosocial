import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geosocial/common/di/injector.dart';
import 'package:geosocial/ui/buisinesses_list/cubit/business_cubit.dart';

class BusinessList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<BusinessCubit>(
      create: (_) => injector<BusinessCubit>()..fetchBusinesses(),
      child: Center(child: BlocBuilder<BusinessCubit, BusinessState>(
        builder: (context, state) {
          return state.when(
            succes: (businesses) => ListView.builder(
                itemCount: businesses.length,
                itemBuilder: (context, position) => Container(
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 2,
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: ListTile(
                        tileColor: Colors.white,
                        title: Text(businesses[position].name)))),
            loading: () => CircularProgressIndicator(),
            failure: () {
              return Text("Faiiiilure");
            },
          );
        },
      )),
    );
  }
}
