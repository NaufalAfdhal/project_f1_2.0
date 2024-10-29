import '../models/driver_model.dart';
import '../models/team_model.dart';
import '../models/race_schedule_model.dart';
import '../models/profile_model.dart';
import '../models/news_model.dart';

class ApiService {
  // Dummy API untuk mendapatkan data 20 pembalap
  static Future<List<Driver>> fetchDrivers() async {
    return [
      Driver(
        name: "Max Verstappen",
        team: "Red Bull Racing",
        points: 395,
        nationality: "Netherlands",
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/max-verstappen-f1-driver-profile-picture.png",
      ),
      Driver(
        name: "Lewis Hamilton",
        team: "Mercedes",
        points: 387,
        nationality: "UK",
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/lewis-hamilton-f1-driver-profile-picture.png",
      ),
      Driver(
        name: "Charles Leclerc",
        team: "Ferrari",
        points: 320,
        nationality: "Monaco",
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/charles-leclerc-f1-driver-profile-picture.png",
      ),
      Driver(
        name: "Sergio Perez",
        team: "Red Bull Racing",
        points: 315,
        nationality: "Mexico",
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/sergio-perez-f1-driver-profile-picture.png",
      ),
      Driver(
        name: "Carlos Sainz",
        team: "Ferrari",
        points: 290,
        nationality: "Spain",
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/carlos-sainz-f1-driver-profile-picture.png",
      ),
      Driver(
        name: "Lando Norris",
        team: "McLaren",
        points: 260,
        nationality: "UK",
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/lando-norris-f1-driver-profile-picture.png",
      ),
      Driver(
        name: "George Russell",
        team: "Mercedes",
        points: 240,
        nationality: "UK",
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/george-russell-f1-driver-profile-picture.png",
      ),
      Driver(
        name: "Valtteri Bottas",
        team: "KICK Sauber",
        points: 210,
        nationality: "Finland",
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/valtteri-bottas-f1-driver-profile-picture.png",
      ),
      Driver(
        name: "Fernando Alonso",
        team: "Aston Martin",
        points: 200,
        nationality: "Spain",
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/fernando-alonso-f1-driver-profile-picture.png",
      ),
      Driver(
        name: "Esteban Ocon",
        team: "Alpine",
        points: 180,
        nationality: "France",
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/esteban-ocon-f1-driver-profile-picture.png",
      ),
      Driver(
        name: "Pierre Gasly",
        team: "Alpine",
        points: 170,
        nationality: "France",
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/pierre-gasly-f1-driver-profile-picture.png",
      ),
      Driver(
        name: "Daniel Ricciardo",
        team: "Racing Bulls",
        points: 160,
        nationality: "Australia",
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/daniel-ricciardo-f1-driver-profile-picture.png",
      ),
      Driver(
        name: "Yuki Tsunoda",
        team: "Racing Bulls",
        points: 150,
        nationality: "Japan",
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/yuki-tsunoda-f1-driver-profile-picture.png",
      ),
      Driver(
        name: "Kevin Magnussen",
        team: "Haas",
        points: 140,
        nationality: "Denmark",
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/kevin-magnussen-f1-driver-profile-picture.png",
      ),
      Driver(
        name: "Mick Schumacher",
        team: "Haas",
        points: 130,
        nationality: "Germany",
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/mick-schumacher-f1-driver-profile-picture.png",
      ),
      Driver(
        name: "Lance Stroll",
        team: "Aston Martin",
        points: 120,
        nationality: "Canada",
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/lance-stroll-f1-driver-profile-picture.png",
      ),
      Driver(
        name: "Nico Hulkenberg",
        team: "Haas",
        points: 110,
        nationality: "Germany",
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/nico-hulkenberg-f1-driver-profile-picture.png",
      ),
      Driver(
        name: "Guanyu Zhou",
        team: "KICK Sauber",
        points: 100,
        nationality: "China",
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/zhou-guanyu-f1-driver-profile-picture.png",
      ),
      Driver(
        name: "Alex Albon",
        team: "Williams",
        points: 90,
        nationality: "Thailand",
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/alexander-albon-f1-driver-profile-picture.png",
      ),
      Driver(
        name: "Franco Colapinto",
        team: "Williams",
        points: 80,
        nationality: "Argentina",
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/franco-colapinto-f1-driver-profile-picture.png",
      ),
    ];
  }

  // Dummy API untuk mendapatkan data tim
  static Future<List<Team>> fetchTeams() async {
    return [
      Team(
        name: "Red Bull Racing",
        points: 650,
        logoUrl: "https://yt3.googleusercontent.com/4xRN1G8R1qUhnEIiDguTsy2ViklWLiCPel6sGL448K_QHyEi2qHprGzRAZ3EsMO_t98Yr7n-Dw=s900-c-k-c0x00ffffff-no-rj",
      ),
      Team(
        name: "Mercedes",
        points: 600,
        logoUrl: "https://i.pinimg.com/originals/85/f6/19/85f619efa631c0e45a2f22fdbab177f4.jpg",
      ),
      Team(
        name: "Ferrari",
        points: 590,
        logoUrl: "https://cdn.ferrari.com/cms/network/media/img/resize/668bd8af00058e00114e4d3b-scuderia-ferrari-hp-statement-2024?width=1080",
      ),
      Team(
        name: "McLaren",
        points: 550,
        logoUrl: "https://media.formula1.com/image/upload/f_auto,c_limit,q_75,w_1320/content/dam/fom-website/2018-redesign-assets/team%20logos/mclaren",
      ),
      Team(
        name: "Aston Martin",
        points: 500,
        logoUrl: "https://upload.wikimedia.org/wikipedia/commons/b/bf/Logo_Aston_Martin_F1_Team.jpg",
      ),
      Team(
        name: "Alpine",
        points: 480,
        logoUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Alpine_F1_Team_Logo.svg/523px-Alpine_F1_Team_Logo.svg.png",
      ),
      Team(
        name: "Racing Bulls",
        points: 450,
        logoUrl: "https://upload.wikimedia.org/wikipedia/it/9/97/Visa_Cash_App_Racing_Bulls.webp",
      ),
      Team(
        name: "Alfa Romeo",
        points: 420,
        logoUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMeAWnSMymXMYtfn1i-mmDTtBS4BxLvW-dSg&s",
      ),
      Team(
        name: "Haas",
        points: 400,
        logoUrl: "https://azertag.az/files/2023/1/1200x630/16728475842825711348_1200x630.jpg",
      ),
      Team(
        name: "Williams",
        points: 380,
        logoUrl: "https://cdn.williamsf1.tech/images/fnx611yr/production/95a38bd369dfc6af9483a5ea3cb9f4ad350e538b-1920x1080.jpg?rect=0,38,1920,1005&w=1200&h=628&auto=format",
      ),
    ];
  }

  // Dummy API untuk mendapatkan jadwal balapan
  static Future<List<RaceSchedule>> fetchRaceSchedules() async {
    return [
      RaceSchedule(
        raceName: "Bahrain Grand Prix",
        circuit: "Bahrain International Circuit",
        date: DateTime(2024, 3, 3),
        time: "15:00",
      ),
      RaceSchedule(
        raceName: "Saudi Arabian Grand Prix",
        circuit: "Jeddah Corniche Circuit",
        date: DateTime(2024, 3, 17),
        time: "17:00",
      ),
      RaceSchedule(
        raceName: "Australian Grand Prix",
        circuit: "Melbourne Grand Prix Circuit",
        date: DateTime(2024, 3, 31),
        time: "14:00",
      ),
      // Tambahkan jadwal balapan lainnya
    ];
  }

  // Dummy API untuk mendapatkan profil pembalap
  // Dummy API untuk mendapatkan profil pembalap (20 pembalap)
  static Future<List<DriverProfile>> fetchDriverProfiles() async {
    return [
      DriverProfile(
        name: "Max Verstappen",
        team: "Red Bull Racing",
        nationality: "Netherlands",
        number: 1,
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/max-verstappen-f1-driver-profile-picture.png",
      ),
      DriverProfile(
        name: "Lewis Hamilton",
        team: "Mercedes",
        nationality: "UK",
        number: 44,
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/lewis-hamilton-f1-driver-profile-picture.png",
      ),
      DriverProfile(
        name: "Charles Leclerc",
        team: "Ferrari",
        nationality: "Monaco",
        number: 16,
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/charles-leclerc-f1-driver-profile-picture.png",
      ),
      DriverProfile(
        name: "Sergio Perez",
        team: "Red Bull Racing",
        nationality: "Mexico",
        number: 11,
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/sergio-perez-f1-driver-profile-picture.png",
      ),
      DriverProfile(
        name: "Carlos Sainz",
        team: "Ferrari",
        nationality: "Spain",
        number: 55,
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/carlos-sainz-f1-driver-profile-picture.png",
      ),
      DriverProfile(
        name: "Lando Norris",
        team: "McLaren",
        nationality: "UK",
        number: 4,
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/lando-norris-f1-driver-profile-picture.png",
      ),
      DriverProfile(
        name: "George Russell",
        team: "Mercedes",
        nationality: "UK",
        number: 63,
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/george-russell-f1-driver-profile-picture.png",
      ),
      DriverProfile(
        name: "Valtteri Bottas",
        team: "KICK Sauber",
        nationality: "Finland",
        number: 77,
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/valtteri-bottas-f1-driver-profile-picture.png",
      ),
      DriverProfile(
        name: "Fernando Alonso",
        team: "Aston Martin",
        nationality: "Spain",
        number: 14,
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/fernando-alonso-f1-driver-profile-picture.png",
      ),
      DriverProfile(
        name: "Esteban Ocon",
        team: "Alpine",
        nationality: "France",
        number: 31,
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/esteban-ocon-f1-driver-profile-picture.png",
      ),
      DriverProfile(
        name: "Pierre Gasly",
        team: "Alpine",
        nationality: "France",
        number: 10,
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/pierre-gasly-f1-driver-profile-picture.png",
      ),
      DriverProfile(
        name: "Daniel Ricciardo",
        team: "Racing Bulls",
        nationality: "Australia",
        number: 3,
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/daniel-ricciardo-f1-driver-profile-picture.png",
      ),
      DriverProfile(
        name: "Yuki Tsunoda",
        team: "Racing Bulls",
        nationality: "Japan",
        number: 22,
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/yuki-tsunoda-f1-driver-profile-picture.png",
      ),
      DriverProfile(
        name: "Kevin Magnussen",
        team: "Haas",
        nationality: "Denmark",
        number: 20,
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/kevin-magnussen-f1-driver-profile-picture.png",
      ),
      DriverProfile(
        name: "Mick Schumacher",
        team: "Haas",
        nationality: "Germany",
        number: 47,
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/mick-schumacher-f1-driver-profile-picture.png",
      ),
      DriverProfile(
        name: "Lance Stroll",
        team: "Aston Martin",
        nationality: "Canada",
        number: 18,
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/lance-stroll-f1-driver-profile-picture.png",
      ),
      DriverProfile(
        name: "Nico Hulkenberg",
        team: "Haas",
        nationality: "Germany",
        number: 27,
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/nico-hulkenberg-f1-driver-profile-picture.png",
      ),
      DriverProfile(
        name: "Guanyu Zhou",
        team: "KICK Sauber",
        nationality: "China",
        number: 24,
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/zhou-guanyu-f1-driver-profile-picture.png",
      ),
      DriverProfile(
        name: "Alex Albon",
        team: "Williams",
        nationality: "Thailand",
        number: 23,
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/alexander-albon-f1-driver-profile-picture.png",
      ),
      DriverProfile(
        name: "Franco Colapinto",
        team: "Williams",
        nationality: "Argentina",
        number: 53,
        imageUrl: "https://www.kymillman.com/wp-content/uploads/f1/pages/driver-profiles/driver-faces/franco-colapinto-f1-driver-profile-picture.png",
      ),
    ];
  }


  // Dummy API untuk mendapatkan berita balapan
  static Future<List<News>> fetchNews() async {
    return [
      News(
        title: "Verstappen Wins Again!",
        content: "Max Verstappen secures another victory at the Bahrain Grand Prix...",
        imageUrl: "https://www.studlife.com/files/2023/09/GettyImages-1642674276.jpeg",
        publishedDate: DateTime.now(),
      ),
      News(
        title: "Hamilton Gearing Up for Next Race",
        content: "Lewis Hamilton is looking forward to the next race in Saudi Arabia...",
        imageUrl: "https://cdn.antaranews.com/cache/1200x800/2021/07/31/hamilton-hungaria-pole.jpg",
        publishedDate: DateTime.now(),
      ),
      // Tambahkan berita lainnya
    ];
  }
}
