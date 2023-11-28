import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../src/settings/settings.dart';
import '../../src/style/responsive_screen.dart';
import '../models/flutter_topics_model.dart';
import '../views/flashcard_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color bgColor = Color(0xFF4993FA);
    const Color bgColor3 = Color(0xFF5170FD);
    final settingsController = context.watch<SettingsController>();
    return Scaffold(
      backgroundColor: bgColor3,
      body: SafeArea(
        child: ResponsiveScreen(
          squarishMainArea: Padding(
            padding: const EdgeInsets.only(top: 0, left: 15, right: 15),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: ValueListenableBuilder<bool>(
                    valueListenable: settingsController.muted,
                    builder: (context, muted, child) {
                      return IconButton(
                        onPressed: () => settingsController.toggleMuted(),
                        icon: Icon(muted ? Icons.volume_off : Icons.volume_up),
                      );
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: bgColor3,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.24),
                        blurRadius: 20.0,
                        offset: const Offset(0.0, 10.0),
                        spreadRadius: -10,
                        blurStyle: BlurStyle.outer,
                      )
                    ],
                  ),
                  child: Image.asset("assets/dash.png"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Verb ",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                fontSize: 21,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                        for (var i = 0; i < "Do!!!".length; i++) ...[
                          TextSpan(
                            text: "Do!!!"[i],
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 21 + i.toDouble(),
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                          ),
                        ]
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.85,
                  ),
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: flutterTopicsList.length,
                  itemBuilder: (context, index) {
                    final topicsData = flutterTopicsList[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewCard(
                              typeOfTopic: topicsData.topicQuestions,
                              topicName: topicsData.topicName,
                            ),
                          ),
                        );
                        print(topicsData.topicName);
                      },
                      child: Card(
                        color: bgColor,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                topicsData.topicIcon,
                                color: Colors.white,
                                size: 55,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                topicsData.topicName,
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                    ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          rectangularMenuArea: FilledButton(
            onPressed: () {
              GoRouter.of(context).go('/');
            },
            child: const Text('Back'),
          ),
        ),
      ),
    );
  }
}
