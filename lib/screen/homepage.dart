import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testapp/screen/userdetailpage.dart';
import '../provider/userprovider.dart';
import '../usermodel.dart';
/*

final isGridViewProvider = StateProvider<bool>((ref) => true);

class Homepage extends ConsumerWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userListAsync = ref.watch(userListProvider);
    final isGridView = ref.watch(isGridViewProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
        actions: [
          IconButton(
            icon: Icon(isGridView ? Icons.view_list : Icons.grid_view),
            onPressed: () {
              ref.read(isGridViewProvider.notifier).state = !isGridView;
            },
          )
        ],
      ),
      body: userListAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text('Error: $e')),
        data: (users) {
          if (isGridView) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: users.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 3 / 4,
                ),
                itemBuilder: (context, index) {
                  final user = users[index];
                  return _UserCard(user: user);
                },
              ),
            );
          } else {
            return ListView.builder(
              itemCount: users.length,
              padding: const EdgeInsets.all(8),
              itemBuilder: (context, index) {
                final user = users[index];
                return Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => UserDetailPage(user: user),
                        ),
                      );
                    },                    leading: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey.shade200,
                      backgroundImage: NetworkImage(user.avatar ?? ''),
                      onBackgroundImageError: (_, __) {},
                    ),
                    title: Text(user.name ?? 'No Name'),
                    subtitle: Text(user.email ?? ''),
                    trailing: Chip(
                      label: Text(user.role ?? 'N/A'),
                      backgroundColor: Colors.blue.shade100,
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
class _UserCard extends StatelessWidget {
  final UserModel user;

  const _UserCard({required this.user});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => UserDetailPage(user: user),
          ),
        );
      },
      borderRadius: BorderRadius.circular(12),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 8),
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey.shade200,
              backgroundImage: NetworkImage(user.avatar ?? ''),
              onBackgroundImageError: (_, __) {},
            ),
            const SizedBox(height: 8),
            Text(
              user.name ?? 'No Name',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              user.email ?? '',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(user.role ?? 'N/A'),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
*/

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 25,
                // backgroundImage: AssetImage("assets/images/image1.png"),
                backgroundImage: NetworkImage(
                    "https://plus.unsplash.com/premium_photo-1678197937465-bdbc4ed95815?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text("Hello"),
                  Text("Lets shop"),
                ],
              )
            ],
          ),
          actions: const [
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.shopping_cart),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: demo(),
        ));
  }
}

class demo extends StatelessWidget {
  const demo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            hintText: "Search",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),

      ],
    );
  }
}


