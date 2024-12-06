
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';

   class SettingsPage extends StatelessWidget {
     final FirebaseAuth _auth = FirebaseAuth.instance;

     static const String route = '/settings';

     @override
     Widget build(BuildContext context) {
       final user = _auth.currentUser;

       return Scaffold(
         appBar: AppBar(
           title: const Text('Настройки аккаунта'),
         ),
         body: Padding(
           padding: const EdgeInsets.all(16.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Email'),
                  subtitle: Text(user?.email ?? 'Нет email'),
                ),
                const ListTile(
                  leading: Icon(Icons.verified),
                  title: Text('Статус аккаунта'),
                  subtitle: Text('Верифицирован'),
                ),
               IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () {
                  context.go('/login');
              },
            ),
             ],
           ),
         ),
       );
     }
   }
   
