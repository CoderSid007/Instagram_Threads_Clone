import 'package:flutter/material.dart';

void main() {
  runApp(ProfilePageCloneApp());
}

class ProfilePageCloneApp extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Threads Profile Page Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePageClone(),
    );
  }
}

class ProfilePageClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: const Color.fromARGB(255, 243, 241, 247),
         centerTitle: true,
         title: Text(
          
          
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0)),'Profile'),
         
        actionsIconTheme: IconThemeData.fallback(
          
        ),
        
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2023/01/21/15/16/ai-generated-7734340_1280.jpg',
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text('Bio description'),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Posts',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('123'),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Followers',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('456'),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Following',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('789'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 232, 250, 233),
                    ),
                     
                    onPressed: () {},
                    child: Text(
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),'Edit Profile'),
                  ),
                ],
              ),
            ),
            Divider(height: 0),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: 9,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://i.itworldcanada.com/wp-content/uploads/2022/01/GettyImages-13075344431.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
