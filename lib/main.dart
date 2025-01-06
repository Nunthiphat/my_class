import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My CIS',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<Student> data = [
    Student(name: "นายอภิวัฒน์ ดาวโคกสูง", id: "643450093-9", image: "../assets/images/unknow_icons.png", gender: "Male"),
    Student(name: "นางสาวนริศรา วงค์บุตรศรี", id: "643450328-8", image: "../assets/images/unknow_icons.png", gender: "FeMale"),
    Student(name: "นายเสฏฐวุฒิ สาระกุล", id: "643450333-5", image: "../assets/images/unknow_icons.png", gender: "Male"),
    Student(name: "นายปฏิภัทร ดำทองสุก", id: "643450508-6", image: "../assets/images/unknow_icons.png", gender: "Male"),
    Student(name: "นายจารุวิทย์ แสงแก้วสิริกุล", id: "653450086-7", image: "../assets/images/unknow_icons.png", gender: "Male"),
    Student(name: "นายชวกร เนืองภา", id: "653450087-5", image: "../assets/images/chawakorn.jpg", gender: "Male"),
    Student(name: "นายณัฐดนัย ภาคภูมิ", id: "653450088-3", image: "../assets/images/unknow_icons.png", gender: "Male"),
    Student(name: "นางสาวณัฐวรรณ พวงมะลัย", id: "653450089-1", image: "../assets/images/Puu.jpg", gender: "FeMale"),
    Student(name: "นายถิรวัฒน์ โชติธนกิจไพศาล", id: "653450090-6", image: "../assets/images/Tin.jpg", gender: "Male"),
    Student(name: "นายเทพฤทธิ์ อินทรประพันธ์", id: "653450091-4", image: "../assets/images/Big.jpg", gender: "Male"),
    Student(name: "นายธนาพร ชนิดกุล", id: "653450092-2", image: "../assets/images/unknow_icons.png", gender: "Male"),
    Student(name: "นายนันทิพัฒน์ บุตรวัง", id: "653450094-8", image: "../assets/images/nunthiphat.jpg", gender: "Male"),
    Student(name: "นายพิชชากร สกุลไทย", id: "653450095-6", image: "../assets/images/unknow_icons.png", gender: "Male"),
    Student(name: "นายพิชัย ทองอาสา", id: "653450096-4", image: "../assets/images/Ta.jpg", gender: "Male"),
    Student(name: "นายพิพิธธน พิพิธกุล", id: "653450097-2", image: "../assets/images/fork.jpg", gender: "Male"),
    Student(name: "นายพิริยกร พันธุ์พานิชย์", id: "653450098-0", image: "../assets/images/PP.jpg", gender: "Male"),
    Student(name: "นายภานุวัฒน์ ธรรมบุตร", id: "653450099-8", image: "../assets/images/Nu.jpg", gender: "Male"),
    Student(name: "นายเมธากร สิงห์คาน", id: "653450100-9", image: "../assets/images/Zack.jpg", gender: "Male"),
    Student(name: "นายวงศธร ทองอินทร์", id: "653450101-7", image: "../assets/images/unknow_icons.png", gender: "Male"),
    Student(name: "นายวิชญ์พล ยืนยง", id: "653450103-3", image: "../assets/images/wichcapon.jpg", gender: "Male"),
    Student(name: "นางสาวศานต์ฤทัย สายบุตร", id: "653450104-1", image: "../assets/images/Noey.jpg", gender: "FeMale"),
    Student(name: "นายอนิวัตติ์ ณ หนองคาย", id: "653450106-7", image: "../assets/images/Mix.jpg", gender: "Male"),
    Student(name: "นางสาวอรปรียา จันทะโคตร", id: "653450107-5", image: "../assets/images/Mo.jpg", gender: "FeMale"),
    Student(name: "นายอัครวิชญ์ พบวงษา", id: "653450108-3", image: "../assets/images/Ice.jpg", gender: "Male"),
    Student(name: "นายกฤตชวกร ชวลิตกิตติวงศ์", id: "653450279-6", image: "../assets/images/Pu.png", gender: "Male"),
    Student(name: "นางสาวจันทิมา พรมวัง", id: "653450280-1", image: "../assets/images/Piano.jpg", gender: "FeMale"),
    Student(name: "นางสาวชฎาพร พินิจสัย", id: "653450281-9", image: "../assets/images/mind.jpg", gender: "FeMale"),
    Student(name: "นายณภัทร สุยังกุล", id: "653450282-7", image: "../assets/images/Pun.jpg", gender: "Male"),
    Student(name: "นายณัฏฐกิตติ์ มิตรสูงเนิน", id: "653450283-5", image: "../assets/images/unknow_icons.png", gender: "Male"),
    Student(name: "นางสาวณัฐณิชา พรมปิก", id: "653450284-3", image: "../assets/images/Bam.jpg", gender: "FeMale"),
    Student(name: "นายธนกร สว่างสูงเนิน", id: "653450285-1", image: "../assets/images/korn.jpg", gender: "Male"),
    Student(name: "นางสาวธนพร รัตนศิระประภา", id: "653450286-9", image: "../assets/images/Icecy.jpg", gender: "FeMale"),
    Student(name: "นายธนาโชค สุวรรณ์", id: "653450287-7", image: "../assets/images/Boss.jpg", gender: "Male"),
    Student(name: "นายธีร ริ้วทวี", id: "653450288-5", image: "../assets/images/unknow_icons.png", gender: "Male"),
    Student(name: "นายนภสินธุ์ ศรีบุรินทร์", id: "653450290-8", image: "../assets/images/Not.jpg", gender: "Male"),
    Student(name: "นายนันธวัฒน์ แผ่ความดี", id: "653450291-6", image: "../assets/images/Gus.jpg", gender: "Male"),
    Student(name: "นายเนติธร ศรีมี", id: "653450292-4", image: "../assets/images/Ger.jpg", gender: "Male"),
    Student(name: "นายปฏิพัทธ์ มาตรา", id: "653450293-2", image: "../assets/images/palm.jpg", gender: "Male"),
    Student(name: "นายประจักษ์ ศรีทอง", id: "653450294-0", image: "../assets/images/unknow_icons.png", gender: "Male"),
    Student(name: "นายภานุวัฒน์ สารวงษ์", id: "653450295-8", image: "../assets/images/unknow_icons.png", gender: "Male"),
    Student(name: "นายมหัคฆพันธ์ ปลั่งกลาง", id: "653450296-6", image: "../assets/images/Mark.jpg", gender: "Male"),
    Student(name: "นางสาวรามิล ไกยบุตร", id: "653450297-4", image: "../assets/images/Min.jpg", gender: "FeMale"),
    Student(name: "นายวรชิต ทองเลิศ", id: "653450298-2", image: "../assets/images/dung.jpg", gender: "Male"),
    Student(name: "นายวรโชติ ทองเลิศ", id: "653450299-0", image: "../assets/images/dom.jpg", gender: "Male"),
    Student(name: "นายฮารูณ ซิดดิ๊ก คูเรซิ", id: "653450300-1", image: "../assets/images/Haroon.jpg", gender: "Male"),
    Student(name: "นายชาคริต พูลพิพิธ", id: "653450507-9", image: "../assets/images/unknow_icons.png", gender: "Male"),
    Student(name: "นายณภัทร สีหะวงค์", id: "653450508-7", image: "../assets/images/unknow_icons.png", gender: "Male"),
    Student(name: "นายทวีศิลป์ ใจดี", id: "653450509-5", image: "../assets/images/Plem.jpg", gender: "Male"),
    Student(name: "นายนันทวัฒน์ แซ่ฮวม", id: "653450510-0", image: "../assets/images/Mungkorn.jpg", gender: "Male"),
    Student(name: "นางสาวศิริพร แก้วลินลา", id: "653450513-4", image: "../assets/images/tal.png", gender: "FeMale"),
  ];

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My CIS"),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,            
            children: [  
              for (var item in data)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0), // Add gap between rows
                  child: studentListItem(
                    name: item.name,
                    id: item.id,
                    image: item.image,
                    gender: item.gender,
                  ),
                ),
            ], //children
          ),
        ),
      ),
    );
  }

  Widget studentListItem({required String name, required String id, required String? image, required String gender}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StudentDetailPage(student: Student(name: name, id: id, gender: gender, image: image))),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: gender == "Male" ? Colors.blue : Colors.orange,
          borderRadius: BorderRadius.circular(8.0), // Rounded edges for the row
        ),
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                image ?? 'assets/images/default.jpg',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(id, style: TextStyle(fontSize: 14)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Student {
    String name;
    String id;
    String? image; //Nullable
    String gender;
    Student(
      {required this.name,
      required this.id,
      required this.gender,
      this.image = "../assets/images/ambatukam.jpg"}
    );
  }

class StudentDetailPage extends StatelessWidget {
  final Student student;

  const StudentDetailPage({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(student.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipOval(
              child: Image.asset(
                student.image ?? 'assets/images/default.jpg',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Text(student.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(student.id, style: TextStyle(fontSize: 20)),
            Text(student.gender, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
