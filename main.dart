import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CV App',
      home: GroupMemberListPage(),
    );
  }
}

class GroupMemberListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Membre du Groupe'),
      ),
      body: ListView(
        children: [
          _buildListItem(
            context,
            'Pierre,',
            'BERLIN',
            '123 RUE Barbancourt, Delmas 83',
            'Programmeur, Data analiste',
            'English, French',
            'resolution de problem, Leadership',
          ),
          _buildListItem(
            context,
            'Pierre',
            'Lens',
            '56 rue Dr NOEL, delmas 83',
            'Design, Communication',
            'Spanish, french',
            'Creative, management',
          ),
          _buildListItem(
            context,
            'Jane',
            'St louis',
            '56 rue Dr NOEL, delmas 83',
            'Design, Communication',
            'Spanish, french',
            'Creative',
          ),
          _buildListItem(
            context,
            'Pablo',
            'Smith',
            '456 rue METELUS, PV',
            'Design, Communication',
            'Spanish, German',
            ' management',
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(
      BuildContext context,
      String firstName,
      String lastName,
      String address,
      String skills,
      String spokenLanguages,
      String professionalStrengths) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PersonalInfoPage(
              firstName: firstName,
              lastName: lastName,
              address: address,
              skills: skills,
              spokenLanguages: spokenLanguages,
              professionalStrengths: professionalStrengths,
            ),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Container(
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(8),
            ),
            width: double.infinity,
            child: Text(
              '$firstName $lastName',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}

class PersonalInfoPage extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String address;
  final String skills;
  final String spokenLanguages;
  final String professionalStrengths;

  PersonalInfoPage({
    required this.firstName,
    required this.lastName,
    required this.address,
    required this.skills,
    required this.spokenLanguages,
    required this.professionalStrengths,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information Personel'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nom: $lastName',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Prénom: $firstName',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              'Adresse: $address',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 12),
            Text(
              'Compétences: $skills',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 12),
            Text(
              'Langues parlées: $spokenLanguages',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 12),
            Text(
              'Atouts professionnels: $professionalStrengths',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
