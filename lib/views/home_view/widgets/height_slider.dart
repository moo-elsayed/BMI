import 'package:bmi/bmi_cubit/bmi_states.dart';
import 'package:bmi/helper/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bmi_cubit/bmi_cubit.dart';

class HeightSlider extends StatelessWidget {
  const HeightSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BmiCubit, BmiStates>(
      builder: (context, state) => Expanded(
        child: Container(
          decoration: BoxDecoration(
              color: Constants.mainColor,
              borderRadius: BorderRadius.circular(16)),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'HEIGHT',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white54),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    '${BlocProvider.of<BmiCubit>(context).height.round()}',
                    style: const TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const Text(
                    ' cm',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white54),
                  ),
                ],
              ),
              Slider(
                  activeColor: Constants.secondColor,
                  value: BlocProvider.of<BmiCubit>(context).height,
                  onChanged: (val) {
                    BlocProvider.of<BmiCubit>(context).changeHeight(val: val);
                  },
                  min: 80,
                  max: 220),
            ],
          ),
        ),
      ),
    );
  }
}
