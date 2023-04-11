import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 51, 51, 51),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 70,
                  ),
                  Expanded(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://thumbnews.nateimg.co.kr/view610///news.nateimg.co.kr/orgImg/do/2021/02/08/105325025.1.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 250,
                  ),
                  Expanded(
                    child: Icon(
                      Icons.add,
                      size: 50,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 40,
                child: Text(
                  'Monday 16',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "TODAY",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: Icon(
                      Icons.brightness_1,
                      size: 10,
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '17',
                      style: TextStyle(
                        color: Color.fromARGB(255, 194, 189, 189),
                        fontSize: 40,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '18',
                      style: TextStyle(
                        color: Color.fromARGB(255, 194, 189, 189),
                        fontSize: 40,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '19',
                      style: TextStyle(
                        color: Color.fromARGB(255, 194, 189, 189),
                        fontSize: 40,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      '20',
                      style: TextStyle(
                        color: Color.fromARGB(255, 194, 189, 189),
                        fontSize: 40,
                      ),
                    ),
                  ),
                ],
              ),
              Scrollbar(
                child: Column(
                  children: const [
                    Button(
                      text: 'DESIGN\nMEETING',
                      bgColor: Colors.yellow,
                      textColor: Colors.black,
                      charger: 'ALEX   HELENA   HANA',
                      fromHour: '11',
                      fromMin: '30',
                      toHour: '12',
                      toMin: '20',
                    ),
                    Button(
                      text: 'DAILY\nPROJECT',
                      bgColor: Colors.purple,
                      textColor: Colors.black,
                      charger: 'Me   RICHARD   CIRY   +4',
                      fromHour: '12',
                      fromMin: '35',
                      toHour: '14',
                      toMin: '10',
                    ),
                    Button(
                      text: 'WEEKLY\nPLANNING',
                      bgColor: Colors.green,
                      textColor: Colors.black,
                      charger: 'DEN   HANA   MARK',
                      fromHour: '15',
                      fromMin: '00',
                      toHour: '16',
                      toMin: '30',
                    ),
                  ],
                ),
              )
              // const MyStatefulWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;
  final String charger;
  final String fromHour;
  final String fromMin;
  final String toHour;
  final String toMin;

  const Button({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
    required this.charger,
    required this.fromHour,
    required this.fromMin,
    required this.toHour,
    required this.toMin,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: 400,
        height: 200,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(45),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      fromHour,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      fromMin,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Icon(
                      Icons.unfold_more,
                      size: 20,
                    ),
                    Text(
                      toHour,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      toMin,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                        color: textColor,
                        fontSize: 60,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    charger,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
