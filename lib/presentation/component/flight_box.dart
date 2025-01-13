import 'package:flutter/widgets.dart';

import 'package:navida_v2/domain/model/flight_goal_time.dart';
import 'package:navida_v2/util/ui/text_styles.dart';

class FlightBox extends StatelessWidget {
  final FlightGoalTime flightGoalTime;
  const FlightBox({
    super.key,
    required this.flightGoalTime,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 40,
              child: Image.asset(
                flightGoalTime.logoPath,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: 12),
            Text(
              flightGoalTime.airlineName,
            ),
          ],
        ),
        Text(
          '${flightGoalTime.flightHours}시간',
        ),
      ],
    );
  }
}
