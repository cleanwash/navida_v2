import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:navida_v2/domain/model/flight_goal_time.dart';
import 'package:navida_v2/presentation/component/flight_box.dart';
import 'package:navida_v2/presentation/main/main_view_model.dart';
import 'package:navida_v2/util/ui/text_styles.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<MainViewModel>().loadTotalFlightTime();
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();

    Future.microtask(() {
      viewModel.loadTotalFlightTime();
    });

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Lottie.asset(
              'assets/animation/sky.json',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'My Flight Diary',
                          style: TextStyles.titleTextSemiBold
                              .copyWith(color: Colors.black),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('  🧑🏽‍✈️나의 비행시간👩🏻‍✈️',
                            style: TextStyles.titleTextMedium),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          FlightBox(
                            flightGoalTime: FlightGoalTime(
                              logoPath: 'assets/images/cessna.jpg',
                              airlineName: '나의 비행 시간',
                              flightHours: viewModel.totalFlightTime > 0
                                  ? viewModel.totalFlightTime.toString()
                                  : '0',
                            ),
                          ),
                          FlightBox(
                            flightGoalTime: FlightGoalTime(
                              logoPath: 'assets/images/koreanAir.png',
                              airlineName: '대한항공',
                              flightHours: '1000',
                            ),
                          ),
                          const SizedBox(height: 16),
                          FlightBox(
                            flightGoalTime: FlightGoalTime(
                              logoPath: 'assets/images/jin.jpg',
                              airlineName: '진에어',
                              flightHours: '1000',
                            ),
                          ),
                          const SizedBox(height: 16),
                          FlightBox(
                            flightGoalTime: FlightGoalTime(
                              logoPath: 'assets/images/jeju.jpg',
                              airlineName: '제주항공',
                              flightHours: '300',
                            ),
                          ),
                          const SizedBox(height: 16),
                          FlightBox(
                            flightGoalTime: FlightGoalTime(
                              logoPath: 'assets/images/tway.png',
                              airlineName: '티웨이',
                              flightHours: '250',
                            ),
                          ),
                          const SizedBox(height: 16),
                          FlightBox(
                            flightGoalTime: FlightGoalTime(
                              logoPath: 'assets/images/eastar_jet.jpg',
                              airlineName: '이스타',
                              flightHours: '250',
                            ),
                          ),
                          const SizedBox(height: 16),
                          FlightBox(
                            flightGoalTime: FlightGoalTime(
                              logoPath: 'assets/images/airBusan.png',
                              airlineName: '에어부산',
                              flightHours: '250',
                            ),
                          ),
                          const SizedBox(height: 16),
                          FlightBox(
                            flightGoalTime: FlightGoalTime(
                              logoPath: 'assets/images/airSeoul.jpg',
                              airlineName: '에어서울',
                              flightHours: '250',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
