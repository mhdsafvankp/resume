
import 'package:my_resume/models/work_item.dart';
import 'package:my_resume/widgets/works_section.dart';

const myName = 'Mohamed Safvan KP';
const mySimpleSummary = 'I specialize in front-end development with a focus on Flutter, leveraging my Computer Science degree from Government Engineering College, Thrissur.';
const mySummary = 'I specialize in front-end development with a focus on Flutter, backed by a Computer Science degree from Government Engineering College, Thrissur. This foundation allows me to create effective Android and iOS solutions. By embracing agile methods and teamwork, I strive to deliver mobile apps that offer a smooth user experience. My goal is to improve applications continuously, using my problem-solving skills to tackle complex challenges.';
const address = 'Mohamed Safvan KP \nKavumpurath House \nPonmundam  \u2981  676106  \u2981  Kerala \nmhdsafvankp@gmail.com \n(+91) 7034192064 \nlinkedin.com/in/mohamed-safvan-kp';
const collegeName = 'Govt. Engineering College Thrissur';
const collegeSubText = 'B.Tech  \u2981  2016-2020';
const collegeSummary = 'Apj Abdul Kalam Kerala Technological University\nComputer Science and Engineering  \u2981  CGPA - 7.29';
const higherSecondaryName = 'B.Y.K.V.H.S.S Valavannur';
const higherSecondarySubText = 'Senior Secondary  \u2981  2013-2015';
const higherSecondarySummary = 'Science  \u2981  Score - 90 percentage';
const companyName = 'Market Simplified India Limited';
const companyWorkTitle1 = 'Flutter Developer  \u2981   Jun 2020 - Present ';
const companyWorkTitle2 = 'Android Developer  \u2981   Jun 2020 - 2021 ';
const companyWorkExperiance1 = ' ○  Developed and maintained a User registration (KYC) process through the Flutter module for existing native projects. '
    '\n ○  Collaborated with cross-functional teams to define, design, and ship new features.'
    '\n ○  Worked with third-party libraries and APIs to integrate new features into existing applications.'
    '\n ○  Participated in code reviews to ensure quality and maintainability.'
    '\n ○  Developed and implemented unit tests to ensure quality and functionality.'
    '\n ○  Created and maintained project documentation.'
    '\n ○  Worked on Firebase for configurations and conducted A/B testing using Firebase'
    '\n ○  Utilized Firebase Analytics and clickstream analytics';
const companyWorkExperiance2 = ' ○  Contributed to developing and maintaining online stock trading features for India\'s leading trading application. '
    '\n ○  Utilized Java and Kotlin to work on a high-profile trading application project.'
    '\n ○  Worked closely with cross-functional teams to ensure seamless feature implementations.';

// Skills
const skills = 'SKILLS';
const languages = 'Languages  \u2981  FrameWork';
const tools = 'Tools  \u2981  Libraries  \u2981  APIs';
const personal = 'Personals';
const flutter = 'Flutter';
const android = 'Android';
const dart = 'Dart';
const java = 'Java';
const kotlin = 'Kotlin';
const toolsList = [
  'Android Studio',
  'VS code',
  'Xcode',
  'Firebase',
  'Git',
  'Jira Board',
  'Postman',
  'Bloc',
  'Dio',
  'Http',
  'Google APIs',
  'Glide',
  'Payment Gateways',
  'Camera component',
  'Hive',
  'get_it'
];

const personalList = [
  'Problem-solving',
  'Teamwork',
  'Adaptability',
  'Communication',
  'Time management',
];

final workList = [
  WorkItem(
    title: 'RPS',
    subTitle: 'Flutter Game Project',
    img: 'assest/rock_paper.png',
    desc:
    'Designed and coded a Rock Paper Scissors game in Flutter, and successfully launched it on the Play Store.',
    link:
    'https://play.google.com/store/apps/details?id=com.firstthing.rps&hl=en_US',
  ),
  WorkItem(
    title: 'Weather App',
    subTitle: 'Using openWeather API',
    img: 'assest/weather_img.png',
    desc:
    'Created a weather app using Domain-Driven Design (DDD) architecture. '
        'Implemented Hive for local storage, auto_route for route mechanism, get_it for dependency injection,'
        ' bloc for state management, and firebase for user Authentication',
    link:
    'https://github.com/mhdsafvankp/weather_app',
  ),
  WorkItem(
    title: 'Instagram Clone UI',
    subTitle: 'Using Flutter Framework',
    img: 'assest/insta_img.png',
    desc:
    'Developed a user interface for an Instagram clone using Flutter\n'
    'Replicated the visual design, including user profiles, image feeds, comments, and likes.\n'
    'Showcased proficiency in Flutter\'s UI\/UX design capabilities.',
    link:
    'https://github.com/mhdsafvankp/instagram_ui_clone/tree/master',
  ),
  WorkItem(
    title: 'Android Selfie Camera',
    subTitle: 'With Face Liveness Check \nUsing Google ML Kit',
    img: 'assest/selfie_img.png',
    desc: 'Developed an Android selfie camera application using Google ML Kit for face liveness verification.\n '
        'Implemented real-time detection of live faces to enhance security.\n '
        'Showcased skills in Android development and machine learning integration',
    link: '',
  ),
  WorkItem(
    title: 'Kaithaangu',
    subTitle: 'Android Java Project for Chit Fund',
    img: 'assest/chit_img.png',
    desc: 'An Android Java project to manage balances and statements for a Chitty \n using the Firebase backend',
    link: 'https://github.com/safvankp/kaithaangu',
  ),
  WorkItem(
    title: 'Custom Date Widget',
    subTitle: 'Flutter Open Source Contributions',
    img: 'assest/flutter_img.png',
    desc: 'Date input widget with dd/mm/yyyy hint\n'
        '  \u2981   release items:'
        '\n ○ DD/MM/YYYY hint maintaining based on the input'
        '\n ○ minor (18 years old validation)'
        '\n ○ error call backs and indications'
        '\n ○ right calendar opening icon press handling',
    link: 'https://pub.dev/packages/custom_date_widget',
  ),
];

const checkoutMyPersonalProject = 'CHECK OUT SOME OF MY WORKS.';
