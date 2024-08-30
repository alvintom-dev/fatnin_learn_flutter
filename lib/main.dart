import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> commentatorNames = [
    'Andrew Jason',
    'Matthew Evans',
    'Roney Coleman',
    'Ahcmad Hamid',
    'Mohd Bakhri',
    'Che Yau Peng',
    'Kumaran'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.keyboard_arrow_left,
          color: Colors.black,
        ),
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              height: 20,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.lightBlue.withOpacity(0.2),
              ),
              child: Icon(
                Icons.more_vert,
                size: 20,
                color: Colors.blue,
              ),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Simon Sinek',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  print('dev_log: Follow button was pressed!!');
                },
                child: Container(
                  width: double.infinity,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.person_add,
                          color: Colors.white,
                          size: 18,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'Follow',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  buildCategoryButton('About'),
                  const SizedBox(width: 10),
                  buildCategoryButton('Events'),
                  const SizedBox(width: 10),
                  buildCategoryButton('Reviews'),
                ],
              ),
              const SizedBox(height: 20),
              ...commentatorNames.map(
                (e) {
                  return buildCommentItem(name: e);
                },
              ).toList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategoryButton(String title) {
    return Expanded(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.blue.withOpacity(0.5)),
            color: Colors.blue.withOpacity(0.1)),
        child: Center(
            child: Text(
          title,
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }

  Widget buildCommentItem({
    required String name,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        '10 Feb',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      Icon(Icons.star, color: Colors.amber, size: 18),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur,adipisci velit.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
