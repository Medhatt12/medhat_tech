class RecentWork {
  final String image, category, title, projectUrl, mockupUrl, description;
  final int id;

  RecentWork(
      {this.id,
      this.image,
      this.category,
      this.projectUrl,
      this.mockupUrl,
      this.description,
      this.title});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "3D Maze generation",
    category: "Game Development",
    projectUrl: "http://medhat.tech/MazeGenerationWebGL/index.html",
    mockupUrl: "assets/images/work_1.png",
    description:
        "This game is developed using Unity game engine and C#. Maze generation is done using recursive backtracker algorithm.",
    image: "assets/images/work_1.png",
  ),
  RecentWork(
    id: 2,
    title: "LDC Game",
    category: "Game Development",
    projectUrl: "https://ldcgamedata.000webhostapp.com/LDCGameWebGL/index.html",
    mockupUrl: "assets/images/work_2.png",
    description:
        "This is a game I developed for my bachelor project. This is a game that helps in identifying learning disabilities and autism in children under the age of 14. The game is developed using Unity and C#, the backend is developed using MySQL database. The game is currently being used at Hope academy in Egypt; Hope academy is an acaedmy for children with learning disabilities and autism. The game is based on VB-MAPP; VB-MAPP stands for Verbal Behavior Milestones Assessment and Placement Program.",
    image: "assets/images/work_2.png",
  ),
  RecentWork(
    id: 3,
    title: "FlapKap App",
    category: "Cross-Platform App Development",
    projectUrl: "https://github.com/Medhatt12/flapkap_flutter_challenge",
    mockupUrl: "assets/images/FlapKap-mockup.png",
    description:
        "An app that shows orders, analytics and graphs provided from a JSON file.",
    image: "assets/images/work_3.png",
  ),
  RecentWork(
    id: 4,
    title: "E-commerce App",
    category: "Cross-Platform App Development",
    projectUrl: "https://github.com/Medhatt12/shop_app",
    mockupUrl: "assets/images/Ecommerce-mockup.png",
    description:
        "A shop app developed using Flutter and backend using Firebase. App includes Firebase authentication, Firebase real-time database; to store products data and orders for each user.",
    image: "assets/images/work_4.png",
  ),
  RecentWork(
    id: 5,
    title: "Egypt Real Estate Tax Calculator",
    category: "Cross-Platform App Development",
    projectUrl: "https://github.com/Medhatt12/tax_v1",
    mockupUrl: "assets/images/RTA-mockup.png",
    description:
        "An App used to calculate real estate tax and offers other services",
    image: "assets/images/work_5.png",
  ),
  RecentWork(
    id: 6,
    title: "All About Clubs App",
    category: "Cross-Platform App Development",
    projectUrl: "https://github.com/Medhatt12/all_about_clubs_app",
    mockupUrl: "assets/images/allaboutapps-mockup.png",
    description:
        "All about apps flutter app developer coding challenge. This is an app that displays an up-to-date ranking of top European soccer teams; The ranking is based on market value.The data is provided by an online json file.",
    image: "assets/images/work_6.png",
  ),
  RecentWork(
    id: 7,
    title: "AcadiA E-commerce shop",
    category: "WordPress",
    projectUrl: "https://acadia-pharma.com/shop/",
    mockupUrl: "assets/images/work_7.png",
    description:
        "An e-commerce website for AcadiA Pharma; An egyptian cosmetics company. I developed this website as a freelance WordPress developer. Website is developed using WordPress and woocommerce plugin.",
    image: "assets/images/work_7.png",
  ),
];
