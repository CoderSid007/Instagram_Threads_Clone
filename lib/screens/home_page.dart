import 'package:flutter/material.dart';
import 'package:threads_clone/data/datasource.dart';
import 'package:threads_clone/screens/thread_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(padding: EdgeInsets.only(top: 10),
              child: Image.asset(
                "assets/threads.png",
                height: 35,
              ),),
            ),
            SliverList(
              
              delegate: SliverChildBuilderDelegate(
                childCount: threadRemoteDataSource().getThread().length,
                (context , index){
              final threadlist = threadRemoteDataSource().getThread()[index];
              return InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThreadScreen(),
                  ));
                },
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/${threadlist.profileImage}',
                            ),
                          ),
                          title: Row(
                            children: [
                              Text(
                                threadlist.name ?? 'name',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(threadlist.posted!,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade500,
                              ),),
                              SizedBox(width: 10),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                          subtitle: Text(
                            threadlist.description!,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        if(threadlist.image != '')
                        Padding(padding: EdgeInsets.only(
                          right: 20,
                          left: 70,
                        ),
                        child: Container(
                          height: 300,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11),
                            color: Colors.amber,
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/${threadlist.image}"),
                                fit: BoxFit.cover, 
                              )
                          ),
                        ),
                        ),
                        SizedBox(height: 20,),
                        Padding(padding: EdgeInsets.only(left: 70),
                        child: Row(
                          children: [
                            Icon(Icons.favorite_border),
                            SizedBox(width: 10,),
                            Icon(Icons.chat_bubble_outline),
                            SizedBox(width: 10,),
                            Icon(Icons.cached),
                            SizedBox(width: 10,),
                            Icon(Icons.send),
                            SizedBox(width: 10,),
                          ],),),
                          SizedBox(height: 10,),
                          Container(
                            padding: EdgeInsets.only(bottom: 10,left: 20),
                            alignment: Alignment.bottomLeft,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.only(left: 70),
                              child: Text(
                                '${threadlist.replies} replies . ${threadlist.likes} likes',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.w500,
                                ),
                                ),),
                          ),
                      ],
                    ),
                    Positioned(
                      left: 35,
                      top: 63,
                      child: Container(
                        height: 400,
                        width: 3,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(1),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 330,
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(1),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                right: 0,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    "assets/${threadlist.replier}",
                                    ),
                                    radius: 9,
                                  ),

                              ),
                              Positioned(
                                left: 0,
                                top: 10,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    "assets/${threadlist.replier1}",
                                    ),
                                    radius: 9,
                                  ),

                              ),
                              Positioned(
                                bottom: 0,
                                right: 8,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    "assets/${threadlist.replier2}",
                                    ),
                                    radius: 6,
                                  ),

                              )

                            ],
                          ),
                      ),
                    )
                  ],
                ),
              );
              
            }))
          ],
        ),
      ),
    );
  }
}