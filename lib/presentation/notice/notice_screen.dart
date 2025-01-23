import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:navida_v2/core/routing/routerPath.dart';
import 'package:navida_v2/presentation/component/notice/notice_box.dart';
import 'package:navida_v2/presentation/notice/notice_view_model.dart';
import 'package:provider/provider.dart';
import 'package:navida_v2/domain/model/notice_model.dart';

class NoticeScreen extends StatelessWidget {
  const NoticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<NoticeModel> notices = [
      NoticeModel(
        title: '회원 탈퇴',
        icon: Icons.delete,
      ),
      NoticeModel(
        title: '로그아웃',
        icon: Icons.logout,
      ),
      NoticeModel(
        title: '회원 약관',
        icon: Icons.link,
      ),
    ];

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('공지사항', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Lottie.asset(
              'assets/animation/sky.json',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                NoticeBox(
                  noticeModel: notices[0],
                  onTap: () => context
                      .read<NoticeViewModel>()
                      .showDeleteAccountDialog(context),
                ),
                const SizedBox(height: 16),
                NoticeBox(
                  noticeModel: notices[1],
                  onTap: () async {
                    context.read<NoticeViewModel>().signOut();
                    context.go(Routerpath.loginRoot);
                  },
                ),
                const SizedBox(height: 16),
                NoticeBox(
                  noticeModel: notices[2],
                  onTap: () => context.read<NoticeViewModel>().launchURL(
                      'https://oxidized-sphynx-29f.notion.site/6187d001e3fe41d0abb3695454e930c3?pvs=4'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
