import 'dart:math';

import 'package:bmi/bmi_cubit/bmi_cubit.dart';
import 'package:bmi/views/home_view/widgets/attribute_container.dart';
import 'package:bmi/views/home_view/widgets/height_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../result_view/resultView.dart';
import 'gender.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          const Expanded(
              child: Row(
            children: [
              Gender(
                gen: 'FEMALE',
                img: 'female',
              ),
              SizedBox(
                width: 8,
              ),
              Gender(img: 'male', gen: 'MALE'),
            ],
          )),
          const SizedBox(
            height: 8,
          ),
          const HeightSlider(),
          const SizedBox(
            height: 8,
          ),
          const Expanded(
              child: Row(
            children: [
              AttributeContainer(text: 'Weight'),
              SizedBox(
                width: 8,
              ),
              AttributeContainer(text: 'Age'),
            ],
          )),
          const SizedBox(
            height: 8,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Result(
                    result: BlocProvider.of<BmiCubit>(context).weight /
                        pow(BlocProvider.of<BmiCubit>(context).height / 100, 2),
                  ),
                ),
              );
            },
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: Colors.blueGrey)),
            color: Colors.blueGrey,
            minWidth: double.infinity,
            child: const Text('CALCULATE',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
          ),
        ],
      ),
    );
  }
}
