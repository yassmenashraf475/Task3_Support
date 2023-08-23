import 'package:flutter/material.dart';
import 'package:task_support_3/modles/categories/categories_model.dart';
import 'package:task_support_3/shared/components/components.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

    List<CategoriesModel> categories=[
      CategoriesModel(
          imagePath: 'https://i.pinimg.com/564x/e6/1c/ef/e61cef37dffe3af9ce48d9e119176203.jpg',
          text: 'Food',
      ),
      CategoriesModel(
          imagePath: 'https://i.pinimg.com/564x/f9/ce/6b/f9ce6b6ce9140da9179756227f615535.jpg',
          text: 'Groceries',
      ),
      CategoriesModel(
          imagePath: 'https://i.pinimg.com/564x/58/92/fd/5892fd649c747412d14982f278c18a79.jpg',
          text: 'Flowers',
      ),
      CategoriesModel(
          imagePath: 'https://i.pinimg.com/564x/18/28/6c/18286c49658591181e69edf29b0b26a6.jpg',
          text: 'Health',
      ),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        titleSpacing: 20.0,
        backgroundColor: Colors.grey[100],
        title: Row(
        children: [
          CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/111275391?s=400&u=d5617984a5fdf73ab9a82de832ab8192f567ef83&v=4'),
          ),
          SizedBox(
            width: 15.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello',
                style: TextStyle(
                  color: Colors.brown[300],
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Yassmen Ashraf',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),

        ],
       ),
     ),
      backgroundColor:Colors.grey[100] ,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Talabat',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Colors.orange[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                          fontFamily: "fonttry",
                      ),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    CircleAvatar(
                      child: Icon(
                        Icons.search,
                      ),
                      backgroundColor: Colors.orange[800],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.orange[800],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orange.shade800.withOpacity(0.35),
                      spreadRadius: 3,
                      blurRadius:4,
                      offset: Offset(0, 5), // Offset for the shadow (x, y)
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Talabat mart 20 mins delivery',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'What you order what you get, anytime uoy need',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize:10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          defaultButton(
                            height: 25.0,
                            colorText: Colors.orange.shade800,
                            colorButton: Colors.white,
                            width: 100,
                            text: 'Shop Now',
                            function: (){
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 40.0,
                    ),
                    Expanded(
                      child: Stack(
                        alignment: Alignment.topRight,
                        children:[
                          Image(
                              image: NetworkImage('https://i.pinimg.com/564x/d7/3b/b1/d73bb1ab2d3ece2d807c82de6a18bd7f.jpg',),
                            height: 100,
                            width: 150,
                          ),
                          Icon(
                            Icons.cancel_outlined,
                            color: Colors.brown[600],
                          ),
                        ]
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Categories',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 150.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildCategoryItem(categories[index]),
                  separatorBuilder: (context, index) =>  SizedBox(
                    width: 10.0,
                  ),
                  itemCount: categories.length,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Offers',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'View All',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.orange[800],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.orange[800],
                  ),
                ],
              ),
              SizedBox(
                height: 2.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  width: double.infinity,
                  child: Image(
                    image: NetworkImage('https://i.pinimg.com/564x/f2/48/44/f248440209fb7cfe6b08473dc113f1a5.jpg',),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

Widget buildCategoryItem(CategoriesModel categories) =>
    Stack(
  alignment: Alignment.bottomLeft,
  children: [
    ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image(
        image: NetworkImage('${categories.imagePath}') ,
        width: 150.0,
        //height: 150.0,
        fit: BoxFit.cover,
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 10.0
      ),
      child: Text(
        '${categories.text}',
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.w400
        ),
      ),
    ),
  ],
);