import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BookList extends StatefulWidget {
  const BookList({Key? key}) : super(key: key);

  @override
  _BookListState createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late Stream<QuerySnapshot> _bookStream;

  @override
  void initState() {
    super.initState();
    _bookStream = _firestore.collection("books").snapshots();
  }

  Future<void> _deleteBook(String documentId) async {
    try {
      await _firestore.collection("books").doc(documentId).delete();
    } catch (e) {
      // Handle any potential errors here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book List'),
      ),
      body: StreamBuilder(
        stream: _bookStream,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text("Connection error");
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading...");
          }

          var docs = snapshot.data!.docs;
          return ListView.builder(
            itemCount: docs.length,
            itemBuilder: (context, index) {
              var doc = docs[index];
              var documentId = doc.id;

              return ListTile(
                leading: const Icon(Icons.book),
                title: Text(doc["name"]),
                subtitle: Text("${doc["quantity"]}"),
                trailing: IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text("Delete Book"),
                          content: Text(
                              "Are you sure you want to delete this book?"),
                          actions: [
                            TextButton(
                              child: Text("Cancel"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: Text("Delete"),
                              onPressed: () async {
                                await _deleteBook(documentId);
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
