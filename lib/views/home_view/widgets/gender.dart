import 'package:bmi/bmi_cubit/bmi_cubit.dart';
import 'package:bmi/bmi_cubit/bmi_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Gender extends StatelessWidget {
  const Gender({super.key, required this.gen, required this.img});

  final String gen, img;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BmiCubit, BmiStates>(
      builder: (context, state) => Expanded(
        child: GestureDetector(
          onTap: () {
            BlocProvider.of<BmiCubit>(context).changeGender();
          },
          child: Container(
            decoration: BoxDecoration(
                color: ((gen == 'FEMALE' &&
                            !BlocProvider.of<BmiCubit>(context).isMale) ||
                        (gen == 'MALE' &&
                            BlocProvider.of<BmiCubit>(context).isMale))
                    ? Colors.blueGrey
                    : Colors.grey,
                borderRadius: BorderRadius.circular(16)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/$img.png',
                  width: 70,
                  height: 70,
                ),
                const SizedBox(height: 5),
                Text(
                  gen,
                  style: const TextStyle(
                      fontSize: 35, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
