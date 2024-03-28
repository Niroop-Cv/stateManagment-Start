import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state/screen/cubit/cubit/home_screen_cubit.dart';

class MyHoome extends StatelessWidget {
  const MyHoome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ecart"),
        backgroundColor: Colors.blueAccent,
      ),
      body: BlocProvider(
        create: (context) => HomeScreenCubit(context),
        child: BlocBuilder<HomeScreenCubit, HomeScreenState>(
          builder: (context, state) {
            final cubit = context.read<HomeScreenCubit>();
            return Column(
              children: [
                Text(cubit.count.toString()),
                Center(
                  child: ElevatedButton(
                      onPressed: () => cubit.increement(),
                      child: Icon(Icons.abc)),
                ),
                Center(
                  child: ElevatedButton(
                      onPressed: () => cubit.decreement(),
                      child: Icon(Icons.abc_outlined)),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
