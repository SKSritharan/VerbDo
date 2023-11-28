class NavigateQuestion {
  final int id;
  final String text;
  final List<NavigationsOption> options;
  bool isLocked;
  NavigationsOption? selectedWiidgetOption;
  NavigationsOption? correctAnswer;

  NavigateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  NavigateQuestion copyWith() {
    return NavigateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              NavigationsOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class NavigationsOption {
  final String text;
  final bool isCorrect;

  const NavigationsOption({
    required this.text,
    required this.isCorrect,
  });
}

final navigateQuestionsList = [
  NavigateQuestion(
    text:
        "මිනිසුන්ගේ කථනය සහ ශබ්ද අනුකරණය කිරීමේ හැකියාව ඇති සුරතල් සතුන් ලෙස ජනප්රියය පක්ෂීන් විශේෂයකි.. What am I?",
    options: [
      const NavigationsOption(text: "Crow", isCorrect: false),
      const NavigationsOption(text: "Peacock", isCorrect: false),
      const NavigationsOption(text: "Parrots", isCorrect: true),
      const NavigationsOption(text: "Hummingbird", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const NavigationsOption(text: "Parrots", isCorrect: true),
  ),
  NavigateQuestion(
    text:
        "වෙනත් කැලෑ කුරුල්ලන් සමඟ අර්ධ වශයෙන් දෙමුහුන් වී ඇති ගෘහාශ්‍රිත විශේෂයකි. What am I?",
    options: [
      const NavigationsOption(text: "Parrots", isCorrect: false),
      const NavigationsOption(text: "Chicken", isCorrect: true),
      const NavigationsOption(
          text: "Peacock", isCorrect: false),
      const NavigationsOption(text: "Crow", isCorrect: false),
    ],
    id: 1,
    correctAnswer:
        const NavigationsOption(text: "Chicken", isCorrect: true),
  ),
  NavigateQuestion(
    text:
        "අවුරුදු කාලයේ නිතරම  හඬනඟන පක්ෂියෙකි.කලු පැහැති පියාපත් ඇත. What am I?",
    options: [
      const NavigationsOption(text: "Koel", isCorrect: true),
      const NavigationsOption(text: "Penguin", isCorrect: false),
      const NavigationsOption(text: "Parrots", isCorrect: false),
      const NavigationsOption(text: "Chicken", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const NavigationsOption(text: "Koel", isCorrect: true),
  ),

  NavigateQuestion(
    text:
        "කළු පියාපත් සහ කළු  පැහැති හොටක් ඇත. නිතරම දකින්නට ලැබෙන පක්ෂියෙකි What am I?",
    options: [
      const NavigationsOption(text: "Crow", isCorrect: true),
      const NavigationsOption(text: "Hummingbird", isCorrect: false),
      const NavigationsOption(text: "Parrots", isCorrect: false),
      const NavigationsOption(text: "Woodpecker", isCorrect: false),
    ],
    id: 3,
    correctAnswer:
        const NavigationsOption(text: "Crow", isCorrect: true),
  ),
  // other 4
  NavigateQuestion(
    text:
        " දිගු පිල් කළඹක් සහිත අලංකාර පක්ෂියෙකි. Who am I?",
    options: [
      const NavigationsOption(text: "Hummingbird", isCorrect: false),
      const NavigationsOption(text: " Woodpecker", isCorrect: false),
      const NavigationsOption(text: "Koel", isCorrect: false),
      const NavigationsOption(text: "Peacock", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const NavigationsOption(
      text: " Peacock",
      isCorrect: true,
    ),
  ),
  NavigateQuestion(
    text:
        "මල් පැණි ආහාරයට ගන්නා කුරුලු විශේෂයකි. Who am I?",
    options: [
      const NavigationsOption(
          text: "Hummingbird", isCorrect: true),
      const NavigationsOption(text: "Crow", isCorrect: false),
      const NavigationsOption(
          text: "Peacock", isCorrect: false),
      const NavigationsOption(
          text: "Koel", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const NavigationsOption(
        text: "Hummingbird", isCorrect: true),
  ),

  NavigateQuestion(
    text:
        "ගසින් ගසට කොටමින් යන කුරුලු විශේෂයකි. Who am I?",
    options: [
      const NavigationsOption(text: "Parrots", isCorrect: false),
      const NavigationsOption(text: "Hummingbird,", isCorrect: false),
      const NavigationsOption(text: "Penguin", isCorrect: false),
      const NavigationsOption(text: " Woodpecker", isCorrect: true),
    ],
    id: 6,
    correctAnswer:
        const NavigationsOption(text: " Woodpecker", isCorrect: true),
  ),
  NavigateQuestion(
    text:
        "පියෑඹිය නොහැකි ගොඩබිම වෙසෙන විශාලතම පක්ෂියා වේ?",
    options: [
      const NavigationsOption(text: "Ostriches", isCorrect: true),
      const NavigationsOption(text: "Hummingbird", isCorrect: false),
      const NavigationsOption(text: "Parrots", isCorrect: false),
      const NavigationsOption(text: "Chicken", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const NavigationsOption(text: "onWillPop", isCorrect: true),
  ),

  NavigateQuestion(
    text:
        "පියෑඹිය නොහැකි අයිස් මත ජීවත් වන කුරුලු විශේෂයකි. ඉංග්‍රිසි වචනය කුමක්ද?",
    options: [
      const NavigationsOption(text: "Koel", isCorrect: false),
      const NavigationsOption(text: "Crow", isCorrect: false),
      const NavigationsOption(text: "Penguin", isCorrect: true),
      const NavigationsOption(text: "Parrots", isCorrect: false),
    ],
    id: 8,
    correctAnswer:
        const NavigationsOption(text: "Penguin", isCorrect: true),
  ),
];
