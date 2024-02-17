// lib/screens/book_list_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_examen_1/models/book.dart';
import 'package:flutter_examen_1/services/data_services.dart';

class BookListScreen extends StatefulWidget {
  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  late List<Book> _books;

  @override
  void initState() {
    super.initState();
    _loadBooks();
  }

  Future<void> _loadBooks() async {
    Map<String, dynamic> data = await DataService.fetchData();
    List<dynamic> bookData = data['books'];
    setState(() {
      _books = bookData.map((book) => Book.fromJson(book)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book List'),
      ),
      body: _books == null
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _books.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_books[index].title),
                  onTap: () {
                    // Navegar a la pantalla de detalles del libro
                  },
                );
              },
            ),
    );
  }
}
