import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'package:randomizer_null_safe/randomizer_null_safe.dart';
import 'package:schoolmanag/Widgets/AppBar.dart';
import 'package:schoolmanag/Widgets/BouncingButton.dart';
import 'package:schoolmanag/Widgets/Exams/SubjectCard.dart';
import 'package:schoolmanag/Widgets/MainDrawer.dart';

class ExamResult extends StatefulWidget {
  const ExamResult({Key? key}) : super(key: key);

  @override
  _ExamResultState createState() => _ExamResultState();
}

class _ExamResultState extends State<ExamResult>
    with SingleTickerProviderStateMixin {
  late Animation animation, delayedAnimation, muchDelayedAnimation;
  late AnimationController animationController;
  Randomizer randomcolor = Randomizer.instance();

  var chapters = '1-5';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //SystemChrome.setEnabledSystemUIOverlays([]);

    animationController =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));

    delayedAnimation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.2, 0.5, curve: Curves.fastOutSlowIn)));

    muchDelayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.3, 0.5, curve: Curves.fastOutSlowIn)));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    animationController.forward();
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget? child) {
          final GlobalKey<ScaffoldState> scaffoldKey =
              GlobalKey<ScaffoldState>();
          return Scaffold(
              key: scaffoldKey,
              appBar: CommonAppBar(
                menuenabled: true,
                notificationenabled: false,
                title: "Exams",
                ontap: () {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
              drawer: const Drawer(
                elevation: 0,
                child: MainDrawer(),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 15,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          bottom: 8.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Transform(
                              transform: Matrix4.translationValues(
                                  muchDelayedAnimation.value * width, 0, 0),
                              child: const Text(
                                "Exam Name",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Transform(
                              transform: Matrix4.translationValues(
                                  delayedAnimation.value * width, 0, 0),
                              child: const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text(
                                  "date-15/06/2022",
                                  style: TextStyle(
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Transform(
                        transform: Matrix4.translationValues(
                            muchDelayedAnimation.value * width, 0, 0),
                        child: DropdownSearch<String>(
                          validator: (v) => v == null ? "Please Select" : null,
                          // hint: "Please Select",
                          // mode: Mode.MENU,
                          // showSelectedItem: true,
                          items: const [
                            "Quarterly",
                            "half yearly",
                            "First Revision",
                            'Second Revision',
                            'Third Revision',
                            'Annual Exam'
                          ],
                          // showClearButton: false,
                          onChanged: (value) {},
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Transform(
                        transform: Matrix4.translationValues(
                            muchDelayedAnimation.value * width, 0, 0),
                        child: SubjectCard(
                          subjectname: "Language(Hindi)",
                          chapter: chapters,
                          date: "12/06/2022",
                          grade: "A+",
                          mark: "90",
                          time: "9.00Am-10AM",
                        ),
                      ),
                      Transform(
                        transform: Matrix4.translationValues(
                            muchDelayedAnimation.value * width, 0, 0),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: SubjectCard(
                            subjectname: "English",
                            chapter: chapters,
                            date: "13/06/2022",
                            grade: "A+",
                            mark: "85",
                            time: "9.00Am-10AM",
                          ),
                        ),
                      ),
                      Transform(
                        transform: Matrix4.translationValues(
                            muchDelayedAnimation.value * width, 0, 0),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: SubjectCard(
                            subjectname: "Maths",
                            chapter: chapters,
                            date: "14/06/2022",
                            grade: "A+",
                            mark: "100",
                            time: "9.00Am-10AM",
                          ),
                        ),
                      ),
                      Transform(
                        transform: Matrix4.translationValues(
                            muchDelayedAnimation.value * width, 0, 0),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: SubjectCard(
                            subjectname: "science",
                            chapter: chapters,
                            date: "14/06/2022",
                            grade: "A+",
                            mark: "100",
                            time: "9.00Am-10AM",
                          ),
                        ),
                      ),
                      Transform(
                        transform: Matrix4.translationValues(
                            muchDelayedAnimation.value * width, 0, 0),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: SubjectCard(
                            subjectname: "Social Science",
                            chapter: chapters,
                            date: "15/06/2022",
                            grade: "A+",
                            mark: "100",
                            time: "9.00Am-10AM",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Transform(
                                transform: Matrix4.translationValues(
                                    muchDelayedAnimation.value * width, 0, 0),
                                child: const Text(
                                  "Total Marks:",
                                  style: TextStyle(
                                    fontSize: 15,
                                    //fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: height * 0.03,
                              ),
                              Transform(
                                transform: Matrix4.translationValues(
                                    delayedAnimation.value * width, 0, 0),
                                child: const Text(
                                  "490/500",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Row(
                            children: [
                              Transform(
                                transform: Matrix4.translationValues(
                                    muchDelayedAnimation.value * width, 0, 0),
                                child: const Text(
                                  "Overall Grade:",
                                  style: TextStyle(
                                    fontSize: 15,
                                    //fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: height * 0.03,
                              ),
                              Transform(
                                transform: Matrix4.translationValues(
                                    delayedAnimation.value * width, 0, 0),
                                child: const Text(
                                  "A +",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 13.0),
                        child: Row(
                          children: [
                            Transform(
                              transform: Matrix4.translationValues(
                                  muchDelayedAnimation.value * width, 0, 0),
                              child: const Text(
                                "Result: ",
                                style: TextStyle(
                                  fontSize: 15,
                                  //fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: height * 0.03,
                            ),
                            Transform(
                              transform: Matrix4.translationValues(
                                  delayedAnimation.value * width, 0, 0),
                              child: const Text(
                                "Pass",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 18, 0, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Transform(
                              transform: Matrix4.translationValues(
                                  muchDelayedAnimation.value * width, 0, 0),
                              child: Bouncing(
                                onPress: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(3),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black26,
                                        ),
                                      ]),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Save",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Transform(
                              transform: Matrix4.translationValues(
                                  delayedAnimation.value * width, 0, 0),
                              child: Bouncing(
                                onPress: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(3),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black26,
                                        ),
                                      ]),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Share",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.20,
                      ),
                    ],
                  ),
                ),
              ));
        });
  }
}
