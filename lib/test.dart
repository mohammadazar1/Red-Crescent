/*
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

// import this to be able to call json.decode()
import 'dart:convert';

// import this to easily send HTTP request
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this function is called when the app launches
  Future<List> _loadData() async {
    List posts = [];
    try {
      // This is an open REST API endpoint for testing purposes
      const apiUrl = 'http://172.16.2.75/emg_guide/read.php';

      final http.Response response = await http.get(Uri.parse(apiUrl));
      posts = json.decode(response.body);
    } catch (err) {
      if (kDebugMode) {
        print(err);
      }
    }

    return posts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kindacode.com'),
        ),
        // implement FutureBuilder
        body: FutureBuilder(
            future: _loadData(),
            builder: (BuildContext ctx, AsyncSnapshot<List> snapshot) =>
            snapshot.hasData
                ? ListView.builder(
              // render the list
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, index) => Card(
                margin: const EdgeInsets.all(10),
                // render list item
                child: ListTile(
                  contentPadding: const EdgeInsets.all(10),
                  title: Text(snapshot.data![index]['role']),

                ),
              ),
            )
                : const Center(
              // render the loading indicator
              child: CircularProgressIndicator(),
            )));
  }
}

 */