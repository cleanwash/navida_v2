import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navida_v2/presentation/component/drawer/drawer_view_model.dart';
import 'package:provider/provider.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<DrawerViewModel>();
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.delete),
            title: const Text('회원탈퇴'),
            onTap: () => viewModel.showDeleteAccountDialog(context),
          ),
          ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('로그아웃'),
              onTap: () async {
                viewModel.signOut();
                context.go('/login');
              }),
          ListTile(
            leading: const Icon(Icons.link),
            title: const Text('회원 약관'),
            onTap: () => viewModel.launchURL(
                'https://oxidized-sphynx-29f.notion.site/6187d001e3fe41d0abb3695454e930c3?pvs=4'),
          ),
        ],
      ),
    );
  }
}
