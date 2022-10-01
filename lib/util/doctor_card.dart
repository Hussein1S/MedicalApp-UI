import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
 final String doctorImagePath;
 final String rating;
 final String doctorName;
 final String doctorProfession;

 DoctorCard(
      {required this.rating,
      required this.doctorImagePath,
      required this.doctorName,
      required this.doctorProfession});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.deepPurple[100],
        borderRadius: BorderRadius.circular(12)),
        child:
        Column(
          children: [
            //pic of doctor
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(doctorImagePath,
                height: 100,),
            ),
            SizedBox(height: 10,),
            //rating out of 5
            Row(
              children: [
                Icon(Icons.star,
                color: Colors.yellow[500],),
                Text(rating,
                style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            //doctor name
            SizedBox(height: 10,),

            Text(doctorName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),),

            //doc title
            SizedBox(height: 10,),

            Text(doctorProfession),

          ],
        ),
      ),
    );
  }
}
