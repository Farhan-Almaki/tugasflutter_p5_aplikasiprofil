import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final String userName = 'Farhan Al Maki';
  final String role = 'Mahasiswa Teknik Informatika';

  // daftar pengalaman kerja/ kalau saya pengelaman projek
  final List<String> experiences = const [
    'Projek 1 - Website Ecommerce Penjualan Sendal Pada Toko Jimi Collection Store',
    'Projek 2 - Website Ecommerce Penjualan Hijab Pada Brand BYDIIV',
    'Projek Tugas - Website Penyewaan Perlengkapan Mendaki Gunung ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Pengguna'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ProfileAvatar(),
            const SizedBox(height: 16),
            ProfileInfo(userName: userName, role: role),
            const SizedBox(height: 24),
            const ProfileStats(),
            const SizedBox(height: 24),

            // Judul Bagian Pengalaman Kerja/projek
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Pengalaman projek',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(),

            // Menambahkan ListView.builder yang dibungkus Expanded
            Expanded(
              child: ListView.builder(
                itemCount: experiences.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2,
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    child: ListTile(
                      leading: const Icon(Icons.work, color: Colors.blueAccent),
                      title: Text(experiences[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Custom Widget 1: ProfileAvatar
class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: Colors.grey,
      child: Icon(Icons.person, size: 50, color: Colors.white),
    );
  }
}

// Custom Widget 2: ProfileInfo
class ProfileInfo extends StatelessWidget {
  final String userName;
  final String role;

  const ProfileInfo({super.key, required this.userName, required this.role});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          userName,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          role,
          style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}


// Custom Widget 3: ProfileStats
class ProfileStats extends StatelessWidget {
  const ProfileStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StatItem(count: '22', label: 'Proyek'),
          SizedBox(width: 24),
          StatItem(count: '422', label: 'Followers'),
          SizedBox(width: 24),
          StatItem(count: '67', label: 'Following'),
        ],
      ),
    );
  }
}

// Custom Widget 4: StatItem
class StatItem extends StatelessWidget {
  final String count;
  final String label;

  const StatItem({
    super.key,
    required this.count,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}