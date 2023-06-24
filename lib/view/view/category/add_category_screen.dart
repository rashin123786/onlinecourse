import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:online_course/utils/constants/constants.dart';

class AddCategoryScreen extends StatelessWidget {
  const AddCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(' Add Category'),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(31),
                border: Border.all(color: Color.fromARGB(255, 184, 184, 184))),
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: backgroundColor,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          width: double.infinity,
          height: screenHeight * 0.5,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: screenHeight * 0.05,
                      child: ListTile(
                        title: Text('Create New Product Category'),
                        trailing: Icon(Icons.close),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Category Name'),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Color.fromARGB(255, 246, 246, 246),
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: '   Enter Your Category name',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Upload Category image'),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Color.fromARGB(255, 112, 112, 112))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: screenWidth * 0.3,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 199, 190, 190),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black)),
                            height: screenHeight * 0.05,
                            child: Center(child: Text('Choose Files')),
                          ),
                          Text('No File Choose'),
                          SizedBox(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 112, 112, 112),
                                ),
                                onPressed: () {},
                                child: Text('Cancel')),
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                              ),
                              onPressed: () {},
                              child: Text('Save'))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
