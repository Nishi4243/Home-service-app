import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:oyelabs_assignment/welcome.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Splash2(),
    );
  }
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: const Welcome(),
      
      image:  Image.asset('assets/logo.png'),
      loadingText: const Text('Powered by Oyelabs',style: TextStyle(fontStyle: FontStyle.italic,color: Colors.grey),),
      useLoader: false,
      photoSize: 100.0,
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         
          body: Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            color: Colors.grey[300],
            child: SingleChildScrollView(
                child: Column(
              children: [
                ListTile(
                  tileColor: Colors.white,
                    title: Row(
                      children: const [
                        Icon(Icons.location_on),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                    subtitle:
                       const  Text('Inner Circle, Connaught Place, New Delhi, Del...'),
                    trailing: const Icon(Icons.search),
                  ),
                Image.asset('assets/banner.png'),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 1,
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    primary: false,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    crossAxisCount: 3,
                    children: <Widget>[
                      Container(

                          // padding: const EdgeInsets.all(2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.house_outlined,
                                color: Colors.blue[900],
                                size: 60,
                              ),
                              const Text('Renovation')
                            ],
                          ),
                          color: Colors.white),
                      Container(
                          // padding: const EdgeInsets.all(2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.handyman,
                                color: Colors.blue[900],
                                size: 60,
                              ),
                              const Text('Handyman')
                            ],
                          ),
                          color: Colors.white),
                      Container(
                          // padding: const EdgeInsets.all(2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.local_shipping_outlined,
                                color: Colors.blue[900],
                                size: 60,
                              ),
                              const Text('Home Shifting')
                            ],
                          ),
                          color: Colors.white),
                      Container(
                          // padding: const EdgeInsets.all(2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.landscape_outlined,
                                color: Colors.blue[900],
                                size: 60,
                              ),
                              const Text('Gardening')
                            ],
                          ),
                          color: Colors.white),
                      Container(
                          // padding: const EdgeInsets.all(2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.event_seat_outlined,
                                color: Colors.blue[900],
                                size: 60,
                              ),
                              const Text('Declutter')
                            ],
                          ),
                          color: Colors.white),
                      Container(
                          // padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.format_paint_outlined,
                                color: Colors.blue[900],
                                size: 60,
                              ),
                              const Text('Painting')
                            ],
                          ),
                          color: Colors.white),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 1,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Popular Services',
                        style:
                            TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.17,
                        width: MediaQuery.of(context).size.width * 1,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          // padding: const EdgeInsets.all(8),
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: SizedBox(
                                      height: 100,
                                      width: 150,
                                      child: Image.asset(
                                        'assets/service.png',
                                        fit: BoxFit.fill,
                                      )),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  'Kitchen Cleaning',
                                  style: TextStyle(fontSize: 17),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: SizedBox(
                                      height: 100,
                                      width: 150,
                                      child: Image.asset(
                                        'assets/service.png',
                                        fit: BoxFit.fill,
                                      )),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  'Sofa Cleaning',
                                  style: TextStyle(fontSize: 17),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: SizedBox(
                                      height: 100,
                                      width: 150,
                                      child: Image.asset(
                                        'assets/service.png',
                                        fit: BoxFit.fill,
                                      )),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  'Full House',
                                  style: TextStyle(fontSize: 17),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  height: MediaQuery.of(context).size.height * 0.12,
                  width: MediaQuery.of(context).size.width * 1,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/image.png')),
                          const Text(
                            'On Demand / \n Scheduled',
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/image.png')),
                          const Text(
                            'Verfied\nPartners',
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/image.png')),
                          const Text(
                            'Satisfaction\n Guarantee',
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/image.png')),
                          const Text(
                            'Upfront\n Pricing',
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/image.png')),
                          const Text(
                            'Highly Trained\n Professionals',
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  width: MediaQuery.of(context).size.width * 1,
                  color: Colors.white,
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.security,
                            size: 30,
                          ),
                          Text(
                            '  Why Choose Us',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Container(
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: ListTile(
                              leading: Image.asset('assets/image2.png'),
                              title: const Text('Quality Assurance',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                              subtitle: const Text('Your Satifaction is guaranteed',style: TextStyle(color: Colors.black,fontSize: 15),),
                            ),
                          )),
                      Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)),
                            child: Center(
                            child: ListTile(
                              leading: Image.asset('assets/image2.png'),
                              title: const Text('Fixed Price',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                              subtitle: const Text('No hidden costs, all prices are known\nand fixed before booking',style: TextStyle(color: Colors.black,fontSize: 12),),
                            ),
                          )
                      ),
                      Container(
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)),
                            child: Center(
                            child: ListTile(
                              leading: Image.asset('assets/image2.png'),
                              title: const Text('Hassel Free',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                              subtitle: const Text('convenient time saving and secure',style: TextStyle(color: Colors.black,fontSize: 15),),
                            ),
                          )
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 1,
                  color: Colors.black,
                  child: const Center(
                    child: Text('Best-in Class Safety Measures',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 1,
                  color: Colors.white,
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text('    HASSEL FREE\nQUALITY SERVICE',style: TextStyle(color: Colors.grey[400],fontWeight: FontWeight.bold,fontSize: 20),),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text('V 1.0',style: TextStyle(color: Colors.grey[400],fontSize: 20),)
                    ],
                  ),
                )

              ],
            )),
          )),
    );
  }
}
