import 'package:flutter/material.dart';
import 'package:tsupocketassistant/main_widgets/view_title.dart';
import 'package:tsupocketassistant/profile/widgets/grade_data.dart';

class GradesView extends StatefulWidget {
  @override
  GradesViewState createState() => GradesViewState();
}
class GradesViewState extends State<GradesView> {

  AcademicYear dropdownValue;
  List<AcademicYear> years = <AcademicYear>[AcademicYear(id: 0, text: '2019-2020 2ND SEMESTER'), AcademicYear(id: 1, text: '2019-2020 1ST SEMESTER')];

  List<GradeData> sem1 = <GradeData>[
    GradeData("WEBDEV", "Web Development", "3", "	1.00", "1.00", "N/A", "Passed", "Dec 20 2019 8:20PM"),
    GradeData("COMORG", "Computer Organization", "3", "2.50", "2.50", "N/A", "Passed", "Dec 17 2019 10:19AM"),
    GradeData("OOP", "Object Oriented Programming", "3", "1.75", "1.50", "N/A", "Passed", "Dec 19 2019 5:13PM"),
    GradeData("ITTSM ELECT 1", "Fundamentals of Business Process Outsourcing 101", "3", "2.75", "3.00", "N/A", "Passed", "Dec 20 2019 2:14PM"),
    GradeData("ITTSM ELECT 2", "Business Communication", "3", "2.25", "2.50", "N/A", "Passed", "Dec 20 2019 10:41PM"),
    GradeData("SAD", "Systems Analysis & Design", "3", "4.00", "2.50", "N/A", "Passed", "Dec 20 2019 11:29AM"),
    GradeData("MMS", "Multimedia Systems", "3", "3.0", "1.75", "N/A", "Passed", "Dec 20 2019 3:23PM"),
  ];

  List<GradeData> sem2 = <GradeData>[
    GradeData("MATH 9", "Probability and Statistics", "3", "3.0", "3.0", "N/A", "Passed", "April 18, 2020 7:00PM"),
    GradeData("SOFTENG", "Software Engineering", "3", "3.0", "3.0", "N/A", "Passed", "April 18, 2020 7:00PM"),
    GradeData("IT CAPSTONE 1", "IT Capstone Project 1", "3", "3.0", "3.0", "N/A", "Passed", "April 18, 2020 7:00PM"),
    GradeData("ITTSM ELECT 3", "Fundamentals of Business Process Outsourcing 102", "3", "3.0", "3.0", "N/A", "Passed", "April 18, 2020 7:00PM"),
    GradeData("ITTSM ELECT 4", "Service Culture", "3", "3.0", "3.0", "N/A", "Passed", "April 18, 2020 7:00PM"),
    GradeData("PROG 3", "Computer Programming 3", "3", "3.0", "3.0", "N/A", "Passed", "April 18, 2020 7:00PM"),
  ];

  void initState(){
    super.initState();
    dropdownValue = years[0];
  }

  @override
  Widget build(BuildContext context) {

    return ListView(
      children: <Widget>[
        //Choose Academic Year
        ViewTitle(title: "My Grades"),
        Center(
          child: _semDropdown(context),
        ),
        Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
                columns: [
                  DataColumn(label: Text("Subject Code".toUpperCase(), style: Theme.of(context).textTheme.body1)),
                  DataColumn(label: Text("Midterm".toUpperCase(), style: Theme.of(context).textTheme.body1)),
                  DataColumn(label: Text("Final".toUpperCase(), style: Theme.of(context).textTheme.body1)),
                ],
                rows: sem1.map((GradeData data) => DataRow(
                    cells: <DataCell>[
                      DataCell(Text(data.code, style: Theme.of(context).textTheme.body1), onTap: () {}),
                      DataCell(Text(data.midtermExam, style: Theme.of(context).textTheme.body1)),
                      DataCell(Text(data.finalExam, style: Theme.of(context).textTheme.body1)),
                    ]
                )).toList()
            ),
          ),
        ),
      ],
    );
  }
  void showDetails(){
    showDialog(

    );
}

  Widget _semDropdown(context) {
    return DropdownButton<AcademicYear>(
        value: dropdownValue,
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 24,
        elevation: 16,
        underline: Container(height: 0),
        onChanged: (AcademicYear newValue) {
          setState(() {
            dropdownValue = newValue;
            print("Dropdown Index: ${dropdownValue.id} | Dropdown: ${dropdownValue.text}");
          });
        },
        items: years.map((AcademicYear year){
          return new DropdownMenuItem<AcademicYear>(
              value: year,
              child: new Text(
                  year.text
              )
          );
        }).toList()
    );
  }
}
//BACKEND GET FUNCTION
void getGrades(){

}

class AcademicYear{
  final int id;
  final String text;
  AcademicYear({this.id, this.text});
}