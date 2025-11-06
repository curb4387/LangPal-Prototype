import 'package:flutter/material.dart';
import 'dart:math';

// App Colors
const Color kRedBar = Color.fromRGBO(249, 107, 81, 1);
const Color kRedIcon = Color.fromRGBO(246, 70, 41, 1);
const Color kYellow = Color.fromRGBO(254, 207, 35, 1);
const Color kBackground = Color.fromRGBO(254, 247, 233, 1);
const Color kBackgroundDark = Color.fromARGB(255, 87, 79, 66);
const Color kBackgroundLight = Color.fromARGB(255, 132, 119, 101);
const Color kBackgroundLighter = Color.fromARGB(255, 182, 168, 144);
const Color kBlue = Color.fromRGBO(7, 171, 190, 1);
const Color kGreen = Color.fromRGBO(72, 188, 89, 1);
const Color kGreenProg = Color.fromARGB(255, 159, 192, 164);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LangPal',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackground,

        // theme for buttons
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kBackground,
            foregroundColor: Colors.blueGrey,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
      home: SafeArea(child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 228, 217, 195),
      backgroundColor: kBackground,
      body: Column(
        children: [
          MyAppBar(
            title: Text(
              'LangPal'
            )
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: kYellow,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(
                                  Icons.menu_book_rounded,
                                  color: kBackgroundDark,
                                  size: 35,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Progress',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: kBackgroundLight,
                                      ),
                                    ),
                                    // progress bar
                                    const SizedBox(height: 2),
                                    SizedBox(
                                      height: 10,
                                      width: 100,
                                      child: LinearProgressIndicator(
                                        value: 0.25,
                                        backgroundColor: kGreenProg,
                                        color: kGreen,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Spanish: Beginner',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: kBackgroundLight,
                                      ),
                                    ),
                                    Text(
                                      'Meeting People',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: kBackgroundDark,
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
                    SizedBox(height: 15),

                    // another row for language content
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Tooltip(
                          message: 'Saying hello',
                          child: ElevatedButton(
                            onPressed: () {
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 4,
                              shape: CircleBorder(),
                              padding: const EdgeInsets.all(20),
                              backgroundColor: kGreen,
                              foregroundColor: kBackground,
                            ),
                            child: const Icon(
                              Icons.people_alt_rounded,
                              size: 50,
                              color: kBackground,
                            ),
                          ),
                        ),
                        Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          color: kYellow,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: kGreen,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: kGreen,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: kGreenProg,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          color: kYellow,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: kGreen,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: kGreenProg,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: kGreenProg,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Tooltip(
                          message: 'Asking questions',
                          child: ElevatedButton(
                            onPressed: () {
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 4,
                              shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              padding: const EdgeInsets.all(15),
                              backgroundColor: kGreen,
                              foregroundColor: kBackground,
                            ),
                            child: const Icon(
                              Icons.question_answer_rounded,
                              size: 50,
                              color: kBackground,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Tooltip(
                          message: 'Ordering food',
                          child: Material(
                            color: kGreen,
                            shape: StarBorder(
                              pointRounding: 0.9, // makes flower shape
                            ),
                            elevation: 4,
                            child: IconButton(
                              iconSize: 45,
                              color: kBackground,
                              padding: const EdgeInsets.all(18),
                              icon: const Icon(Icons.fastfood_rounded),
                              onPressed: () {
                              },
                            ),
                          ),
                        ),
                        Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          color: kYellow,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: kGreenProg
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: kGreenProg
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: kGreenProg
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          color: kYellow,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: kGreenProg,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: kGreenProg,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: kGreenProg,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Tooltip(
                          message: 'Describing family',
                          child: ElevatedButton(
                            onPressed: () {
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 4,
                              shape: CircleBorder(),
                              padding: const EdgeInsets.all(20),
                              backgroundColor: kGreen,
                              foregroundColor: kBackground,
                            ),
                            child: const Icon(
                              Icons.family_restroom_rounded,
                              size: 50,
                              color: kBackground,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),
          MyNavBar(),
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  final bool isMissionPage;
  const MyAppBar({
    this.isMissionPage = false,
    required this.title,
    super.key
  });

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        color: kRedBar,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const IconButton(
            icon: Icon(
              Icons.language,
              size: 35,
              color: kYellow,
            ),
            tooltip: 'Language',
            onPressed: null, // null disables the button
          ),
          // LangPal icon
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/LangPal_Logo1.png'),
          ),
          IconButton(
            icon: Icon(
              isMissionPage ? Icons.home_rounded : Icons.view_agenda_outlined,
              size: 35,
              color: kBackground,
            ),
            tooltip: isMissionPage ? 'Home' : 'Missions',
            onPressed: () {
              if (isMissionPage) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                  (route) => false,
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MissionPage(),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

class MyNavBar extends StatelessWidget {
  final bool isConversationPage;
  final bool isProfilePage;
  const MyNavBar({
    this.isConversationPage = false,
    this.isProfilePage = false,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: const BoxDecoration(
        color: kYellow,
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(
              // change icon depending on what page user is on
              isConversationPage ? Icons.home_rounded : Icons.message_rounded,
              size: 35,
              color: kBlue,
            ),
            tooltip: isConversationPage ? 'Home' : 'Start Conversation',
            onPressed: () {
              // switch pages if button is pressed
              if (isConversationPage) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                  (route) => false,
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ConversationPage(),
                  ),
                );
              }
            },
          ),
          const IconButton(
            icon: Icon(
              Icons.leaderboard_rounded,
              size: 35,
              color: kRedIcon,
              ),
            tooltip: 'Leaderboard',
            onPressed: null, // null disables the button
          ),
          IconButton(
            icon: Icon(
              isProfilePage ? Icons.home_rounded : Icons.account_box_rounded,
              size: 35,
              color: kGreen,
            ),
            tooltip: isProfilePage ? 'Home' : 'Profile',
            onPressed: () {
              if (isProfilePage) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                  (route) => false,
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

// Page to find a Pal to chat with
class ConversationPage extends StatefulWidget {
  const ConversationPage({super.key});

  @override
  ConversationPageState createState() => ConversationPageState();
}

class ConversationPageState extends State<ConversationPage> {
  late final List<String> pals;

  final Random _random = Random();

  // words to generate random usernames
  final List<String> nameParts = [
    'Pal', 'Parrot', 'Froggy', 'Star', 'Green',
    'Alien', 'Galaxy', 'Sea', 'Pirate', 'Orc'
  ];

  @override
  void initState() {
    super.initState();
    // generate list of 10 random usernames
    pals = List.generate(10, (_) => _generateRandomUsername());
  }

  // username = random word 1 + random word 2 + random number from 0-99
  String _generateRandomUsername() {
    final part1 = nameParts[_random.nextInt(nameParts.length)];
    final part2 = nameParts[_random.nextInt(nameParts.length)];
    final number = _random.nextInt(100);
    return '$part1$part2$number';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        children: [
          MyAppBar(
            title: const Text(
              'Conversation - LangPal',
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // title box
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: const Color.fromARGB(255, 163, 206, 211),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Start a Conversation',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            ),
                          ),
                          SizedBox(height: 3),
                          Text(
                            'Choose a Pal to learn with.',
                            style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 5),
                  const Text(
                    'Pals available to chat:',
                    style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                  ),

                  // scrollable list of pals available to chat with
                  Expanded(
                    child: ListView.builder(
                      itemCount: pals.length,
                      itemBuilder: (context, index) {
                        final pal = pals[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Container(
                            decoration: BoxDecoration(
                              color: kBlue,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 22,
                                        // random profile pictures
                                        foregroundImage: NetworkImage('https://picsum.photos/seed/$pal/200'),
                                        // default image if profile photo fails to load
                                        backgroundImage: AssetImage('assets/images/LangPal_Logo1.png'),
                                        // fallback icon if profile photo and default photo fails to load
                                        child: Icon(Icons.person, color: Colors.blueGrey),
                                      ),
                                      const SizedBox(width: 12),
                                      Text(
                                        pal,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: kBackground,
                                        ),
                                      ),
                                    ],
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      print('Chat with $pal'); // successful click: print to terminal
                                    },
                                    child: const Text('Chat'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          MyNavBar(isConversationPage: true),
        ],
      ),
    );
  }
}

// Page to show user's profile
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        children: [
          MyAppBar(
            title: const Text(
              'Profile - LangPal',
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: kGreen,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 90,
                              foregroundImage: NetworkImage('https://avatar.iran.liara.run/public'),
                              backgroundImage: AssetImage('assets/images/LangPal_Logo1.png'),
                              // fallback icon if profile photo fails to load
                              child: Icon(Icons.person, color: kGreen, size: 150),
                            ),
                            Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              color: kBackground,
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'LangPal_Parrot',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromARGB(255, 66, 121, 74),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '7 Day Streak',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(255, 66, 121, 74),
                                          ),
                                        ),
                                        const Icon(
                                          Icons.local_fire_department_rounded,
                                          color: Colors.orange,
                                        ),
                                      ],
                                    ),
                                    
                                    // line to separate content
                                    const Divider(
                                      color: Color.fromARGB(255, 187, 216, 192),
                                      thickness: 2,
                                    ),
                                    
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Native Language',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromARGB(255, 116, 158, 122),
                                          ),
                                        ),
                                        Text(
                                          'Learning',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromARGB(255, 116, 158, 122),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'English',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(255, 66, 121, 74),
                                          ),
                                        ),
                                        Text(
                                          'Spanish',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(255, 66, 121, 74),
                                          ),
                                        ),
                                      ],
                                    ),

                                    const Divider(
                                      color: Color.fromARGB(255, 187, 216, 192),
                                      thickness: 2,
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Trophies',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromARGB(255, 116, 158, 122),
                                          ),
                                        ),
                                        Text(
                                          'Leaderboard',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromARGB(255, 116, 158, 122),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '18',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(255, 66, 121, 74),
                                          ),
                                        ),
                                        Text(
                                          'Silver',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color.fromARGB(255, 66, 121, 74),
                                          ),
                                        ),
                                      ],
                                    ),

                                    const Divider(
                                      color: Color.fromARGB(255, 187, 216, 192),
                                      thickness: 2,
                                    ),

                                    const Text(
                                      'New Trophies',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromARGB(255, 66, 121, 74),
                                      ),
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        const Icon(
                                          Icons.emoji_events_rounded,
                                          size: 50,
                                          color: Colors.amber,
                                        ),
                                        const Icon(
                                          Icons.workspace_premium_rounded,
                                          size: 50,
                                          color: Colors.deepPurple,
                                        ),
                                        const Icon(
                                          Icons.star_rounded,
                                          size: 50,
                                          color: Colors.yellow,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          MyNavBar(isProfilePage: true),
        ],
      ),
    );
  }
}

// Page to view and complete missions
class MissionPage extends StatefulWidget {
  const MissionPage({super.key});

  @override
  MissionPageState createState() => MissionPageState();
}

class MissionPageState extends State<MissionPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        children: [
          MyAppBar(
            title: const Text(
              'Missions - LangPal',
            ),
            isMissionPage: true,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Missions card at top of screen
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: kBackgroundLighter,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Missions',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: kBackgroundDark,
                                      ),
                                    ),
                                    Text(
                                      'Complete missions to earn the monthly trophy',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: kBackground,
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

                    // Monthly Trophy card
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: const Color.fromARGB(255, 234, 226, 212),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'November Trophy',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: kBackgroundDark,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                const Icon(
                                  Icons.emoji_events_rounded,
                                  size: 40,
                                  color: Colors.amber,
                                ),
                              ],
                            ),
                            const SizedBox(height: 3),
                            // monthly progress bar
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                SizedBox(
                                  width: 200,
                                  child: LinearProgressIndicator(
                                    value: 0.4,
                                    minHeight: 20,
                                    backgroundColor: kGreenProg,
                                    color: kGreen,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                const Text(
                                  '40%',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Daily missions card
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: kBackground,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Daily Missions',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: kBackgroundLight,
                                  ),
                                ),
                              ],
                            ),

                            // line to separate content
                            const Divider(
                              color: kBackgroundLighter,
                              thickness: 2,
                            ),

                            // daily missions
                            // 1 daily mission
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Complete 4 lessons',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: kBackgroundLight,
                                      ),
                                    ),
                                    // progress bar
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        SizedBox(
                                          width: 200,
                                          child: LinearProgressIndicator(
                                            value: 0.5,
                                            minHeight: 18,
                                            backgroundColor: kGreenProg,
                                            color: kGreen,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                        ),
                                        const Text(
                                          '2 of 4',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 3),
                            // 2 daily mission
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Score 80% in 3 lessons',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: kBackgroundLight,
                                      ),
                                    ),
                                    // progress bar
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        SizedBox(
                                          width: 200,
                                          child: LinearProgressIndicator(
                                            value: 0.33,
                                            minHeight: 18,
                                            backgroundColor: kGreenProg,
                                            color: kGreen,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                        ),
                                        const Text(
                                          '1 of 3',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 3),
                            // 3 daily mission
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Chat with 2 Pals',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: kBackgroundLight,
                                      ),
                                    ),
                                    // progress bar
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        SizedBox(
                                          width: 200,
                                          child: LinearProgressIndicator(
                                            value: 0.5,
                                            minHeight: 18,
                                            backgroundColor: kGreenProg,
                                            color: kGreen,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                        ),
                                        const Text(
                                          '1 of 2',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    
                    // Weekly missions card
                    Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: const Color.fromARGB(255, 234, 226, 212),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Weekly Missions',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: kBackgroundLight,
                                  ),
                                ),
                              ],
                            ),

                            // line to separate content
                            const Divider(
                              color: kBackgroundLighter,
                              thickness: 2,
                            ),

                            // weekly missions
                            // 1 weekly mission
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Complete 1 unit',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: kBackgroundLight,
                                      ),
                                    ),
                                    // progress bar
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        SizedBox(
                                          width: 200,
                                          child: LinearProgressIndicator(
                                            value: 0,
                                            minHeight: 18,
                                            backgroundColor: kGreenProg,
                                            color: kGreen,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                        ),
                                        const Text(
                                          '0 of 1',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 3),
                            // 2 weekly mission
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Score 100% in 5 lessons',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: kBackgroundLight,
                                      ),
                                    ),
                                    // progress bar
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        SizedBox(
                                          width: 200,
                                          child: LinearProgressIndicator(
                                            value: 0.2,
                                            minHeight: 18,
                                            backgroundColor: kGreenProg,
                                            color: kGreen,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                        ),
                                        const Text(
                                          '1 of 5',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 3),
                            // 3 weekly mission
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Compete with 2 Pals',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: kBackgroundLight,
                                      ),
                                    ),
                                    // progress bar
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        SizedBox(
                                          width: 200,
                                          child: LinearProgressIndicator(
                                            value: 0,
                                            minHeight: 18,
                                            backgroundColor: kGreenProg,
                                            color: kGreen,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                        ),
                                        const Text(
                                          '0 of 2',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          MyNavBar(),
        ],
      ),
    );
  }
}