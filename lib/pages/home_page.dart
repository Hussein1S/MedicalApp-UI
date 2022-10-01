import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_app/util/category_data.dart';
import 'package:medical_app/util/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hello, ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Hussein Sadeq',
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  //profile pic
                  Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[100],
                          borderRadius: BorderRadius.circular(12)),
                      child: const Icon(Icons.person))
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //card - how do you feel?
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    // animation or cute picture
                    Container(
                      height: 100,
                      width: 100,
                      child: Lottie.network('https://assets6.lottiefiles.com/packages/lf20_W5Sk67.json'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    // how do you feel

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'How do you feel?',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text(
                            'Fill out your medical card right now',
                            style: TextStyle(fontSize: 14),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[300],
                                borderRadius: BorderRadius.circular(12)),
                            child: const Center(
                              child: Text(
                                "Get Started",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: (25),
            ),

            //search bar

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "How can we help you?",
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            //ListView horizental - categories :- dentest surger

            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    iconImagePath: "icons/den.png",
                    categoryName: "Dentist",
                  ),
                  CategoryCard(
                    iconImagePath: "icons/sur.png",
                    categoryName: "Surgeon",
                  ),
                  CategoryCard(
                    iconImagePath: "icons/phar.png",
                    categoryName: "Pharmacist",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            //doctor list

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Doctor list',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DoctorCard(rating: '4.9',
                  doctorImagePath: 'images/den.jpg',
                  doctorName: 'Dr. Jocelynn Vida',
                  doctorProfession: 'Dentist, 6 y.e.',
                ),
                DoctorCard(rating: '4.7',
                  doctorImagePath: 'images/surr.jpg',
                  doctorName: 'Dr. Pouria Moradi',
                  doctorProfession: 'Surgeon, 11 y.e.',
                ),
                DoctorCard(rating: '4.7',
                  doctorImagePath: 'images/peh.jpg',
                  doctorName: 'Dr. Behrooz A. Torkian',
                  doctorProfession: 'Surgeon, 12 y.e.',
                ),
              ],
            ))




          ],
        ),
      ),
    );
  }
}
