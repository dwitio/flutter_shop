import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../aset/data.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          height: 40,
          color: Colors.white,
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: 'Cari Produk',
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        backgroundColor: Colors.deepOrangeAccent,
        bottom: const TabBar(
          tabs: [
            Tab(text: 'Semua'),
            Tab(text: 'Buah'),
            Tab(text: 'Sayuran'),
            Tab(text: 'Protein'),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              var price = products[index]['price'];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          '${products[index]['image']}',
                          height: 130,
                          width: 130,
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 14.0,),
                            Text(
                              '${products[index]['name']}',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Text(
                              'Min. order ${products[index]['minimum']} x ${products[index]['unit']}',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  NumberFormat.currency(locale: 'id', decimalDigits: 0, symbol: '').format(price),
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                      // /${products[index]['unit']}
                                ),
                                Text('/${products[index]['unit']}')
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: 150,
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.all(10.0),
                          child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                                )
                              ),
                              onPressed: (){},
                              child: Text(
                                'Beli',
                                style: TextStyle(color: Colors.white),
                              )
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
          ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              var price = products[index]['price'];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          '${products[index]['image']}',
                          height: 130,
                          width: 130,
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 14.0,),
                            Text(
                              '${products[index]['name']}',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Text(
                              'Min. order ${products[index]['minimum']} x ${products[index]['unit']}',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w300
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  NumberFormat.currency(locale: 'id', decimalDigits: 0, symbol: '').format(price),
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                  // /${products[index]['unit']}
                                ),
                                Text('/${products[index]['unit']}')
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: 150,
                          alignment: Alignment.bottomRight,
                          padding: EdgeInsets.all(10.0),
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  )
                              ),
                              onPressed: (){},
                              child: Text(
                                'Beli',
                                style: TextStyle(color: Colors.white),
                              )
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
          ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                var price = products[index]['price'];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            '${products[index]['image']}',
                            height: 130,
                            width: 130,
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 14.0,),
                              Text(
                                '${products[index]['name']}',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(
                                height: 16.0,
                              ),
                              Text(
                                'Min. order ${products[index]['minimum']} x ${products[index]['unit']}',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w300
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    NumberFormat.currency(locale: 'id', decimalDigits: 0, symbol: '').format(price),
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                    // /${products[index]['unit']}
                                  ),
                                  Text('/${products[index]['unit']}')
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 150,
                            alignment: Alignment.bottomRight,
                            padding: EdgeInsets.all(10.0),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20)
                                    )
                                ),
                                onPressed: (){},
                                child: Text(
                                  'Beli',
                                  style: TextStyle(color: Colors.white),
                                )
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
          ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                var price = products[index]['price'];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            '${products[index]['image']}',
                            height: 130,
                            width: 130,
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 14.0,),
                              Text(
                                '${products[index]['name']}',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(
                                height: 16.0,
                              ),
                              Text(
                                'Min. order ${products[index]['minimum']} x ${products[index]['unit']}',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w300
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    NumberFormat.currency(locale: 'id', decimalDigits: 0, symbol: '').format(price),
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                    // /${products[index]['unit']}
                                  ),
                                  Text('/${products[index]['unit']}')
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 150,
                            alignment: Alignment.bottomRight,
                            padding: EdgeInsets.all(10.0),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20)
                                    )
                                ),
                                onPressed: (){},
                                child: Text(
                                  'Beli',
                                  style: TextStyle(color: Colors.white),
                                )
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ],
      )
    );
  }
}
