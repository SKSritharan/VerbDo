class LayOutQuestion {
  final int id;
  final String text;
  final List<LayOutOption> options;
  bool isLocked;
  LayOutOption? selectedWiidgetOption;
  LayOutOption? correctAnswer;
  // final int timeSeconds;

  LayOutQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
    //  required this.timeSeconds
  });

  LayOutQuestion copyWith() {
    return LayOutQuestion(
      id: id,
      text: text,
      options: options
          .map(
            (option) =>
                LayOutOption(text: option.text, isCorrect: option.isCorrect),
          )
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class LayOutOption {
  final String text;
  final bool isCorrect;

  const LayOutOption({
    required this.text,
    required this.isCorrect,
  });
}

final layOutQuestionsList = [
  LayOutQuestion(
    text: "විශාල, ශාකභක්ෂක  ක්ෂීරපායින් වන අතර නාසයක් කඳක් ලෙස වෙනස් වි ඇති අතර දත් දළ වශයෙන් වෙනස් වි ඇත. ඉංග්‍රිසි වචනය කුමක්ද?",
    options: [
      const LayOutOption(text: "Elephant", isCorrect: true),
      const LayOutOption(text: "Dog", isCorrect: false),
      const LayOutOption(text: "Horse", isCorrect: false),
      const LayOutOption(text: "Lion", isCorrect: false),
    ],
    id: 0,
    correctAnswer:
        const LayOutOption(text: "Elephant", isCorrect: true),
  ),
  LayOutQuestion(
    text:
        "වෘකයාගේ ගෘහාශ්රිත පරම්පරාව. ඉංග්‍රිසි වචනය කුමක්ද?",
    options: [
      const LayOutOption(text: "Dog ", isCorrect: true),
      const LayOutOption(text: "Tiger", isCorrect: false),
      const LayOutOption(text: "Elephant", isCorrect: false),
      const LayOutOption(text: "Horse", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const LayOutOption(text: "Dog", isCorrect: true),
  ),

  LayOutQuestion(
    text:
        "කුඩා මාංශ භක්ෂක ක්ෂීරපායින්ගේ ගෘහස්ථ විශේෂයකි ඉංග්‍රිසි වචනය කුමක්ද?",
    options: [
      const LayOutOption(text: "Cat", isCorrect: true),
      const LayOutOption(text: "Lion", isCorrect: false),
      const LayOutOption(text: "Card", isCorrect: false),
      const LayOutOption(text: "Elephant", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const LayOutOption(text: "Cat", isCorrect: true),
  ),

  LayOutQuestion(
    text:
        "ගෘහාශ්‍රිත, තනි ඇඟිල්ලක් සහිත, කුර ඇති ක්ෂීරපායි සතෙකි. ඉංග්‍රිසි වචනය කුමක්ද?",
    options: [
      const LayOutOption(text: "Cat", isCorrect: false),
      const LayOutOption(text: "Tiger", isCorrect: false),
      const LayOutOption(text: "Horse", isCorrect: true),
      const LayOutOption(text: "Elephant", isCorrect: false),
    ],
    id: 3,
    correctAnswer:
        const LayOutOption(text: "Horse ", isCorrect: true),
  ),
  // other 4
  LayOutQuestion(
    text:
        "සර්ව භක්‍ෂක, ගෘහාශ්‍රිත, ඇඟිලි පවා ඇති, කුර ඇති ක්ෂීරපායි සතෙකි.ඉංග්‍රිසි වචනය කුමක්ද?",
    options: [
      const LayOutOption(text: "Horse", isCorrect: false),
      const LayOutOption(text: "Lion", isCorrect: false),
      const LayOutOption(text: "Elephant", isCorrect: false),
      const LayOutOption(text: "Pig ", isCorrect: true),
    ],
    id: 4,
    correctAnswer: const LayOutOption(text: "Pig ", isCorrect: true),
  ),
  LayOutQuestion(
    text: "සාමාන්‍යයෙන් පශු සම්පත් ලෙස තබා ඇති බැටළුවන්ට සමීපව සම්බන්ධ විශේෂයකි. ඉංග්‍රිසි වචනය කුමක්ද?",
    options: [
      const LayOutOption(text: "Goat", isCorrect: true),
      const LayOutOption(text: "Horse", isCorrect: false),
      const LayOutOption(text: "Pig", isCorrect: false),
      const LayOutOption(text: "Tiger", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const LayOutOption(text: "Goat", isCorrect: true),
  ),

  LayOutQuestion(
    text:
        "කොටියා විශාලතම ජීවී බළල් විශේෂය වන අතර සුදු යටි පැත්තක් සහිත තැඹිලි පැහැති ලොම් මත එහි අඳුරු සිරස් ඉරි ඇත. ඉංග්‍රිසි වචනය කුමක්ද?",
    options: [
      const LayOutOption(text: "Horse", isCorrect: false),
      const LayOutOption(text: "Goat", isCorrect: false),
      const LayOutOption(text: "Pig", isCorrect: false),
      const LayOutOption(text: "Tiger", isCorrect: true),
    ],
    id: 6,
    correctAnswer:
        const LayOutOption(text: "Tiger", isCorrect: true),
  ),
  LayOutQuestion(
    text:
        "බළල් කුලයට අයිති වන අතර කැලේ රජු ලෙස නම් දරා ඇත.. ඉංග්‍රිසි වචනය කුමක්ද?",
    options: [
      const LayOutOption(text: "Goat", isCorrect: false),
      const LayOutOption(text: "Lion", isCorrect: true),
      const LayOutOption(text: "Pig", isCorrect: false),
      const LayOutOption(text: "Horse", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const LayOutOption(text: "Lion", isCorrect: true),
  ),
];
