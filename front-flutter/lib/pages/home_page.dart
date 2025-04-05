import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../constants/api.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  Future<List<dynamic>> getBoards() async {
    final dio = Dio();
    final response = await dio.get('$baseApi/boards');
    return response.data;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: FutureBuilder<List<dynamic>>(
          future: getBoards(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Text('에러 발생: ${snapshot.error}');
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Text('게시글이 없습니다.');
            }

            final boards = snapshot.data!;

            return ListView.builder(
              itemCount: boards.length,
              itemBuilder: (context, index) {
                final board = boards[index];
                final title = board['title'] ?? '제목 없음';
                final content = board['content'] ?? '내용 없음';

                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(content),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}