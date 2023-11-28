class WidgetQuestion {
  final int id;
  final String text;
  final List<WiidgetOption> options;
  bool isLocked;
  WiidgetOption? selectedWiidgetOption;
  WiidgetOption correctAnswer;

  WidgetQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  WidgetQuestion copyWith() {
    return WidgetQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              WiidgetOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class WiidgetOption {
  final String? text;
  final bool? isCorrect;

  const WiidgetOption({
    this.text,
    this.isCorrect,
  });
}

final widgetQuestionsList = [
  WidgetQuestion(
    text:
        "කිරි යනු ක්ෂීරපායීන්ගේ ක්ෂීරපායී ග්‍රන්ථි මගින් නිපදවන සුදු දියර ආහාරයකි. ඝන ආහාර දිරවීමට පෙර තරුණ ක්ෂීරපායීන් සඳහා පෝෂණයේ මූලික මූලාශ්රය වේ. කිරි  වලට ඉංග්‍රිසි වචනය කුමක්ද? ",
    options: [
      const WiidgetOption(text: "Milk", isCorrect: true),
      const WiidgetOption(text: "Bread", isCorrect: false),
      const WiidgetOption(text: "Water", isCorrect: false),
      const WiidgetOption(text: "Wine", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const WiidgetOption(text: "ListView", isCorrect: true),
  ),
  WidgetQuestion(
      text:
          "පාන් යනු සාමාන්‍යයෙන් පිළිස්සීමෙන් පිටි සහ ජලය පිටි ගුලියකින් සකස් කරන ලද ප්‍රධාන ආහාරයකි. වාර්තාගත ඉතිහාසය පුරාම සහ ලොව පුරා, එය බොහෝ සංස්කෘතීන්ගේ ආහාර වේලෙහි වැදගත් කොටසක් වී ඇත. ඉංග්‍රිසි වචනය කුමක්ද? ",
      options: [
        const WiidgetOption(text: "Milk", isCorrect: false),
        const WiidgetOption(text: "Bread", isCorrect: true),
        const WiidgetOption(text: "Water", isCorrect: false),
        const WiidgetOption(text: "Cake", isCorrect: false),
      ],
      id: 1,
      correctAnswer: const WiidgetOption(text: "Expanded", isCorrect: true)),
  WidgetQuestion(
      text:
          "කේක් යනු පිටි, සීනි සහ අනෙකුත් අමුද්‍රව්‍ය වලින් සාදන ලද පිටි රසකැවිල්ලක් වන අතර සාමාන්‍යයෙන් බේක් කරනු ලැබේ. ඉංග්‍රිසි වචනය කුමක්ද?",
      options: [
        const WiidgetOption(text: "Rice", isCorrect: false),
        const WiidgetOption(text: "Milk", isCorrect: false),
        const WiidgetOption(text: "Bread", isCorrect: false),
        const WiidgetOption(text: "Cake", isCorrect: true),
      ],
      id: 2,
      correctAnswer:
          const WiidgetOption(text: "CircleAvatar", isCorrect: true)),
  WidgetQuestion(
      text:
          "අයිස්ක්‍රීම් යනු සාමාන්‍යයෙන් කිරි හෝ ක්‍රීම් වලින් සාදන ලද ශීත කළ අතුරුපසක් වන අතර එය සීනි හෝ විකල්ප රසකාරකයක් සමඟ රස කර ඇත. ඉංග්‍රිසි වචනය කුමක්ද?",
      options: [
        const WiidgetOption(text: "Cake", isCorrect: false),
        const WiidgetOption(text: "Donuts", isCorrect: false),
        const WiidgetOption(text: "Ice cream", isCorrect: true),
        const WiidgetOption(text: "Noodles", isCorrect: false),
      ],
      id: 3,
      correctAnswer: const WiidgetOption(text: "IconButton", isCorrect: true)),
  WidgetQuestion(
      text:
          " නූඩ්ල්ස් යනු මුහුන් නොදැමූ පිටි ගුලියකින් සාදන ලද ආහාර වර්ගයකි, එය පැතලි රෝල් කර, දිගු තීරු හෝ නූල් වලට කපා, දිගු කර හෝ නෙරා ඇත. ඉංග්‍රිසි වචනය කුමක්ද?",
      options: [
        const WiidgetOption(text: "Rice", isCorrect: false),
        const WiidgetOption(text: "Bread", isCorrect: false),
        const WiidgetOption(text: "Cake", isCorrect: false),
        const WiidgetOption(text: "Noodles", isCorrect: true),
      ],
      id: 4,
      correctAnswer: const WiidgetOption(text: "GridView", isCorrect: true)),
  WidgetQuestion(
      text:
          "සුප් යනු මූලික වශයෙන් දියර ආහාරයකි, සාමාන්‍යයෙන් උණුසුම් හෝ උණුසුම් ලෙස සේවය කරනු ලැබේ, එය මස් හෝ එළවළු අමුද්‍රව්‍ය තොග, කිරි හෝ ජලය සමඟ ඒකාබද්ධ කිරීමෙන් සාදනු ලැබේ.ඉංග්‍රිසි වචනය කුමක්ද?",
      options: [
        const WiidgetOption(text: "Soup", isCorrect: true),
        const WiidgetOption(text: "Ice cream", isCorrect: false),
        const WiidgetOption(text: "Donuts", isCorrect: false),
        const WiidgetOption(text: "Cake", isCorrect: false),
      ],
      id: 5,
      correctAnswer:
          const WiidgetOption(text: "ExpansionTile", isCorrect: true)),
  // other 4
  WidgetQuestion(
    text:
    " දිගු පිල් කළඹක් සහිත අලංකාර පක්ෂියෙකි. Who am I?",
    options: [
      const WiidgetOption(text: "Hummingbird", isCorrect: false),
      const WiidgetOption(text: " Woodpecker", isCorrect: false),
      const WiidgetOption(text: "Koel", isCorrect: false),
      const WiidgetOption(text: "Peacock", isCorrect: true),
    ],
    id:6,
    correctAnswer: const WiidgetOption(
      text: " Peacock",
      isCorrect: true,
    ),
  ),
  WidgetQuestion(
    text:
    "මල් පැණි ආහාරයට ගන්නා කුරුලු විශේෂයකි. Who am I?",
    options: [
      const WiidgetOption(
          text: "Hummingbird", isCorrect: true),
      const WiidgetOption(text: "Crow", isCorrect: false),
      const WiidgetOption(
          text: "Peacock", isCorrect: false),
      const WiidgetOption(
          text: "Koel", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const WiidgetOption(
        text: "Hummingbird", isCorrect: true),
  ),

  WidgetQuestion(
    text:
    "ගසින් ගසට කොටමින් යන කුරුලු විශේෂයකි. Who am I?",
    options: [
      const WiidgetOption(text: "Parrots", isCorrect: false),
      const WiidgetOption(text: "Hummingbird,", isCorrect: false),
      const WiidgetOption(text: "Penguin", isCorrect: false),
      const WiidgetOption(text: " Woodpecker", isCorrect: true),
    ],
    id: 8,
    correctAnswer:
    const WiidgetOption(text: " Woodpecker", isCorrect: true),
  ),
  WidgetQuestion(
    text:
    "පියෑඹිය නොහැකි ගොඩබිම වෙසෙන විශාලතම පක්ෂියා වේ?",
    options: [
      const WiidgetOption(text: "Ostriches", isCorrect: true),
      const WiidgetOption(text: "Hummingbird", isCorrect: false),
      const WiidgetOption(text: "Parrots", isCorrect: false),
      const WiidgetOption(text: "Chicken", isCorrect: false),
    ],
    id:  9,
    correctAnswer: const WiidgetOption(text: "onWillPop", isCorrect: true),
  ),
  WidgetQuestion(
    text:
    "පියෑඹිය නොහැකි අයිස් මත ජීවත් වන කුරුලු විශේෂයකි. ඉංග්‍රිසි වචනය කුමක්ද?",
    options: [
      const WiidgetOption(text: "Koel", isCorrect: false),
      const WiidgetOption(text: "Crow", isCorrect: false),
      const WiidgetOption(text: "Penguin", isCorrect: true),
      const WiidgetOption(text: "Parrots", isCorrect: false),
    ],
    id: 10,
    correctAnswer:
    const WiidgetOption(text: "Penguin", isCorrect: true),
  ),
];
