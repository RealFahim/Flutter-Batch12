import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact List UI',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ContactListPage(),
    );
  }
}

class ContactListPage extends StatelessWidget {
  const ContactListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List'),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            // Input Fields
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Hasan',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                hintText: '01745-777777',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 10),
            // Add Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // No functionality here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                child: const Text('Add'),
              ),
            ),
            const SizedBox(height: 20),
            // Contact List (UI Only)
            Expanded(
              child: ListView(
                children: const <Widget>[
                  ContactCard(name: 'Jawad', number: '01877-777777'),
                  ContactCard(name: 'Ferdous', number: '01672-777777'),
                  ContactCard(name: 'Hasan', number: '01745-777777'),
                  ContactCard(name: 'Hasan', number: '01745-777777'),
                  ContactCard(name: 'Hasan', number: '01745-777777'),
                  ContactCard(name: 'Hasan', number: '01745-777777'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String name;
  final String number;

  const ContactCard({
    super.key,
    required this.name,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      child: ListTile(
        leading: const CircleAvatar(
          child: Icon(Icons.person, color: Colors.brown),
        ),
        title: Text(name),
        subtitle: Text(number),
        trailing: IconButton(
          icon: const Icon(Icons.call, color: Colors.blue),
          onPressed: () {},
        ),
      ),
    );
  }
}