import 'package:bmi/views/home_view/widgets/custom_floating_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bmi_cubit/bmi_cubit.dart';
import '../../../bmi_cubit/bmi_states.dart';

class AttributeContainer extends StatelessWidget {
  const AttributeContainer({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BmiCubit, BmiStates>(
      builder: (context, state) => Expanded(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(16)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                (text == 'Weight')
                    ? '${BlocProvider.of<BmiCubit>(context).weight}'
                    : '${BlocProvider.of<BmiCubit>(context).age}',
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomFloatingActionButton(
                    heroTag: (text == 'Weight') ? 'btn1' : 'btn3',
                    icon: const Icon(Icons.remove),
                    on: () {
                      if (text == 'Weight') {
                        if (BlocProvider.of<BmiCubit>(context).weight > 0) {
                          BlocProvider.of<BmiCubit>(context)
                              .changeWeight(inc: false);
                        }
                      } else {
                        if (BlocProvider.of<BmiCubit>(context).age > 0) {
                          BlocProvider.of<BmiCubit>(context)
                              .changeAge(inc: false);
                        }
                      }
                    },
                  ),
                  CustomFloatingActionButton(
                    heroTag: (text == 'Weight') ? 'btn2' : 'btn4',
                    icon: const Icon(Icons.add),
                    on: () {
                      (text == 'Weight')
                          ? BlocProvider.of<BmiCubit>(context)
                              .changeWeight(inc: true)
                          : BlocProvider.of<BmiCubit>(context)
                              .changeAge(inc: true);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
