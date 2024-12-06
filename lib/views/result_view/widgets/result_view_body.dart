import 'package:bmi/bmi_cubit/bmi_cubit.dart';
import 'package:bmi/helper/custom_button.dart';
import 'package:bmi/helper/get_healthiness.dart';
import 'package:bmi/helper/message.dart';
import 'package:bmi/views/result_view/resultView.dart';
import 'package:bmi/views/result_view/widgets/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../helper/constants.dart';

class ResultViewBody extends StatelessWidget {
  const ResultViewBody({super.key, required this.result});

  final double result;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Text(
            'Your Result',
            style: TextStyle(fontSize: 48, color: Colors.white),
          ),
          const SizedBox(
            height: 16,
          ),
          Result(result: result),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
              onPressed: () {
                Navigator.pop(context);
              },
              label: 'Re-Calculate')
        ],
      ),
    );
  }

// @override
// Widget build(BuildContext context) {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Text(
//             BlocProvider.of<BmiCubit>(context).isMale
//                 ? 'Gender : Male'
//                 : 'Gender : Female',
//             style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
//           ),
//           Text(
//             'Result : ${result.toStringAsFixed(3)}',
//             style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
//           ),
//           Text(
//             'Healthiness : ${getHealthiness(result: result)}',
//             style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
//           ),
//           Text(
//             'Age : ${BlocProvider.of<BmiCubit>(context).age}',
//             style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     ],
//   );
// }
}
