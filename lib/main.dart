import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.blue; // Warna awal container
  Color color2 = Colors.green; // Warna awal container

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout Example'),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Layout Screen',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Widget Size',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        // Fungsi yang dijalankan saat container1 ditekan
                        // Misalnya, mengubah warna container1
                        setState(() {
                          color1 = Colors.yellow;
                        });
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        color: color1,
                        child: Center(
                          child: Text('1'),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Fungsi yang dijalankan saat container2 ditekan
                        // Misalnya, mengubah warna container2
                        setState(() {
                          color2 = Colors.purple;
                        });
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        color: color2,
                        child: Center(
                          child: Text('2'),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      SizedBox(width: 5),
                      Text(
                        'Manage Widget',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.orange,
                  child: Center(
                    child: Text(
                      'Special Layout',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                // Bagian Snackbar
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('This is a Snackbar'),
                      ),
                    );
                  },
                  child: Text('Show Snackbar'),
                ),

                SizedBox(height: 40),
                // Bagian SafeArea
                SafeArea(
                  child: Container(
                    color: Colors.amber,
                    height: 50,
                    child: Center(
                      child: Text('This is inside SafeArea'),
                    ),
                  ),
                ),

                SizedBox(height: 30),
                // Bagian Expanded
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.red,
                        height: 50,
                        child: Center(
                          child: Text('Expanded 1'),
                        ),
                      ),
                    ),
                    Container(
                      child: Container(
                        color: Colors.blue,
                        height: 50,
                        child: Center(
                          child: Text('Expanded 2'),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),
                // Bagian Regular ListView - Static Data
                ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(leading: Icon(Icons.map), title: Text('Item 1')),
                    ListTile(
                        leading: Icon(Icons.photo_album),
                        title: Text('Item 2')),
                    ListTile(leading: Icon(Icons.phone), title: Text('Item 3')),
                  ],
                ),

                SizedBox(height: 30),
                // Bagian Builder ListView - Dynamic Data
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(title: Text('Dynamic Item $index'));
                  },
                ),

                SizedBox(height: 30),
                // Bagian Special Widget Layout - Stack Widget
                Stack(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                    ),
                    Positioned(
                      top: 20,
                      left: 20,
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),
                // Bagian Special Widget Layout - Grid Widget
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: [
                    Container(color: Colors.red),
                    Container(color: Colors.blue),
                    Container(color: Colors.green),
                    Container(color: Colors.yellow),
                  ],
                ),

                SizedBox(height: 30),
                // Bagian GridView.Extent()
                GridView.extent(
                  shrinkWrap: true,
                  maxCrossAxisExtent: 150,
                  children: [
                    Container(color: Colors.orange),
                    Container(color: Colors.purple),
                    Container(color: Colors.cyan),
                    Container(color: Colors.indigo),
                  ],
                ),

                SizedBox(height: 30),
                // Bagian GridView.Count()
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  children: [
                    Container(color: Colors.pink),
                    Container(color: Colors.teal),
                    Container(color: Colors.lime),
                    Container(color: Colors.brown),
                  ],
                ),

                SizedBox(height: 30),
                // Bagian Table Widget
                Table(
                  children: [
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.cyan,
                            height: 30,
                            child: Center(child: Text('Row 1, Cell 1')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.lime,
                            height: 30,
                            child: Center(child: Text('Row 1, Cell 2')),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            color: Colors.amber,
                            height: 30,
                            child: Center(child: Text('Row 2, Cell 1')),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            color: Colors.deepOrange,
                            height: 30,
                            child: Center(child: Text('Row 2, Cell 2')),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
