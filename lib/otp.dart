import 'package:flutter/material.dart';
import 'package:oyelabs_assignment/services.dart';

class Verification extends StatelessWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                // padding: EdgeInsets.all(20),
               
                child: Image.network('https://ouch-cdn2.icons8.com/n9XQxiCMz0_zpnfg9oldMbtSsG7X6NwZi_kLccbLOKw/rs:fit:392:392/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNDMv/MGE2N2YwYzMtMjQw/NC00MTFjLWE2MTct/ZDk5MTNiY2IzNGY0/LnN2Zw.png'),
                
              ),
              const SizedBox(
                height: 80,
              ),
              const Text(
                'OTP Verification',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: const TextSpan(
                    text: 'Enter the OTP sent to    ',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w300),
                    children: [
                      TextSpan(
                        text: '+1 9879878975 ',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                      )
                    ]),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 40,
                      child: const AspectRatio(
                        aspectRatio: 1,
                        child: TextField(
                          maxLength: 1,
                          autofocus: true,
                          showCursor: false,
                          readOnly: false,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            counter: Offstage(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 40,
                      child: const AspectRatio(
                        aspectRatio: 1,
                        child: TextField(
                          maxLength: 1,
                          autofocus: true,
                          showCursor: false,
                          readOnly: false,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            counter: Offstage(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 40,
                      child: const AspectRatio(
                        aspectRatio: 1,
                        child: TextField(
                          maxLength: 1,
                          autofocus: true,
                          showCursor: false,
                          readOnly: false,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            counter: Offstage(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: 40,
                      child: const AspectRatio(
                        aspectRatio: 1,
                        child: TextField(
                          maxLength: 1,
                          autofocus: true,
                          showCursor: false,
                          readOnly: false,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            counter: Offstage(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: const TextSpan(
                    text: 'OTP not recieved?   ',
                    style: TextStyle(color: Colors.grey),
                    children: [
                      TextSpan(
                        text: 'Resend again',
                        style: TextStyle(color: Colors.blue),
                      )
                    ]),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Service()),
  );
                },
                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'VERIFY & PROCEED',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  height: 62,
                  width: 322,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(32))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}