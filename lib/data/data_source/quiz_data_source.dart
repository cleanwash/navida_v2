import 'package:navida_v2/domain/model/quiz_model.dart';

class QuizDataSource {
  static final List<QuizModel> aviationWeatherQuizModels = [
    QuizModel(
      question: "METAR에서 'SKC'는 무엇을 의미하나요?",
      options: ["구름 없음", "약간의 구름", "흐린 하늘", "비"],
      correctAnswerIndex: 0,
    ),
    QuizModel(
      question: "SIGMET은 어떤 정보를 제공하나요?",
      options: ["일반 기상 정보", "위험 기상 현상", "공항 시설 정보", "항공기 성능 데이터"],
      correctAnswerIndex: 1,
    ),
    QuizModel(
      question: "CB는 어떤 구름을 나타내나요?",
      options: ["층운", "적운", "권운", "적란운"],
      correctAnswerIndex: 3,
    ),
    QuizModel(
      question: "어는 이슬점(Freezing Level)은 무엇을 의미하나요?",
      options: ["지상 기온", "구름의 높이", "0°C 등온선의 고도", "최고 비행 고도"],
      correctAnswerIndex: 2,
    ),
    QuizModel(
      question: "ATIS는 무엇의 약자인가요?",
      options: [
        "Air Traffic Information Service",
        "Automatic Terminal Information Service",
        "Aviation Training Institute Service",
        "Airport Takeoff Instruction System"
      ],
      correctAnswerIndex: 1,
    ),
    QuizModel(
      question: "난기류(Turbulence)의 강도를 나타내는 'SEV'는 무엇을 의미하나요?",
      options: ["약함", "보통", "강함", "매우 강함"],
      correctAnswerIndex: 3,
    ),
    QuizModel(
      question: "TEMPO는 기상 예보에서 어떤 의미로 사용되나요?",
      options: ["영구적 변화", "일시적 변화", "급격한 변화", "장기적 변화"],
      correctAnswerIndex: 1,
    ),
    QuizModel(
      question: "권운(Cirrus)은 주로 어느 고도에서 발견되나요?",
      options: ["저고도", "중고도", "고고도", "지표면"],
      correctAnswerIndex: 2,
    ),
    QuizModel(
      question: "BECMG은 기상 예보에서 무엇을 나타내나요?",
      options: ["급격한 변화", "일시적 변화", "점진적 변화", "변화 없음"],
      correctAnswerIndex: 2,
    ),
    QuizModel(
      question: "비행 중 우박을 만났을 때 가장 위험한 이유는 무엇인가요?",
      options: ["시정 감소", "엔진 정지", "기체 손상", "착빙"],
      correctAnswerIndex: 2,
    ),
    QuizModel(
      question: "PROB40은 기상 예보에서 무엇을 의미하나요?",
      options: ["40km 시정", "40% 확률", "40노트 풍속", "40분 지속"],
      correctAnswerIndex: 1,
    ),
    QuizModel(
      question: "안개가 형성되기 쉬운 조건은 무엇인가요?",
      options: ["강한 바람", "높은 기온", "높은 습도와 약한 바람", "낮은 기압"],
      correctAnswerIndex: 2,
    ),
    QuizModel(
      question: "제트기류(Jet Stream)는 주로 어느 고도에서 발생하나요?",
      options: ["대류권 하부", "대류권 상부", "성층권", "중간권"],
      correctAnswerIndex: 1,
    ),
    QuizModel(
      question: "METAR에서 'NOSIG'는 무엇을 의미하나요?",
      options: ["중요한 변화 없음", "관측 불가", "위험 기상", "정보 없음"],
      correctAnswerIndex: 0,
    ),
  ];
}
