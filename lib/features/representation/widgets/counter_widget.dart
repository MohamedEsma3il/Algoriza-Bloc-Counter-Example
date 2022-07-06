import 'package:counter_example/features/representation/cubit/cubit.dart';
import 'package:counter_example/features/representation/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      child: const Icon(FontAwesomeIcons.minus),
                      onPressed: () {
                        CounterCubit.get(context).decrement();
                      },
                    ),
                    const SizedBox(width: 15.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                       '${CounterCubit.get(context).counter}',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ),
                    const SizedBox(width: 15.0),
                    FloatingActionButton(
                      child: const Icon(FontAwesomeIcons.plus),
                      onPressed: () {
                        CounterCubit.get(context).increment();
                      },
                    ),
                  ],
                ),
              ],
            );
          }),
    );
  }
}
