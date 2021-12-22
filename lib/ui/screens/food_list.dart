import 'package:flutter/material.dart';

class FoodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Analyzer',
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 70,
                  top: 45,
                ),
                child: Text(
                  'Food List',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.blue[600]),
                ),
              ),
              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 70,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: double.infinity,
                            child: Text("Food Image"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text("Food Name"),
                              Text("Food Category"),
                              Text("Food calory"),
                              Column(
                                children: [
                                  ElevatedButton(
                                      onPressed: () {}, child: Text("Edit")),
                                  IconButton(onPressed: (){}, icon:Icon(Icons.cancel))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
