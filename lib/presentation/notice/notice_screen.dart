// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';

// class NoticeScreen extends StatelessWidget {
//   const NoticeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         extendBodyBehindAppBar: true,
//         body: Stack(
//           children: [
//             SizedBox(
//               width: double.infinity,
//               height: double.infinity,
//               child: Lottie.asset(
//                 'assets/animation/sky.json',
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ],
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:intl/intl.dart';

class NoticeScreen extends StatelessWidget {
  const NoticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('게시판'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned.fill(
            child: Lottie.asset(
              'assets/animation/sky.json',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: _buildPostList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 새 글 작성 로직 구현 필요
        },
        child: const Icon(Icons.edit),
      ),
    );
  }

  Widget _buildPostList() {
    return ListView.builder(
      itemCount: 10, // 샘플 데이터 개수
      itemBuilder: (context, index) {
        return Card(
          color: Colors.white.withOpacity(0.8),
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: ListTile(
            contentPadding: const EdgeInsets.all(12),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '게시글 제목 ${index + 1}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
              ],
            ),
            subtitle: Row(
              children: [
                const Icon(Icons.person, size: 16),
                const SizedBox(width: 4),
                const Text('작성자'),
                const SizedBox(width: 16),
                const Icon(Icons.access_time, size: 16),
                const SizedBox(width: 4),
                Text(DateFormat('yyyy.MM.dd HH:mm').format(DateTime.now())),
                const Spacer(),
                const Icon(Icons.thumb_up, size: 16),
                const SizedBox(width: 4),
                Text('${index * 2}'), // 샘플 추천 수
              ],
            ),
            onTap: () {
              // 게시글 상세보기 로직 구현 필요
            },
          ),
        );
      },
    );
  }
}

// 게시글 작성 화면
class CreatePostScreen extends StatelessWidget {
  CreatePostScreen({super.key});

  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('글 작성'),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              // 게시글 저장 로직 구현 필요
            },
            child: const Text('저장', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                hintText: '제목을 입력하세요',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: TextField(
                controller: contentController,
                maxLines: null,
                expands: true,
                decoration: const InputDecoration(
                  hintText: '내용을 입력하세요',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 게시글 상세 화면
class PostDetailScreen extends StatelessWidget {
  const PostDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('게시글'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'edit',
                child: Text('수정'),
              ),
              const PopupMenuItem(
                value: 'delete',
                child: Text('삭제'),
              ),
            ],
            onSelected: (value) {
              // 수정/삭제 로직 구현 필요
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '게시글 제목',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text('작성자'),
                const SizedBox(width: 16),
                Text(DateFormat('yyyy.MM.dd HH:mm').format(DateTime.now())),
              ],
            ),
            const Divider(height: 32),
            const Text('게시글 내용이 여기에 표시됩니다.'),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // 추천 로직 구현 필요
                  },
                  icon: const Icon(Icons.thumb_up),
                  label: const Text('추천'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
