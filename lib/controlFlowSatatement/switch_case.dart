enum Weather {
  Summer,
  Spring,
  Winter,
  Autumn,
}

void main(List<String> args) {
  var day = "Monday";

  switch (day) {
    case "Monday":
      print("today is " + day);
    case "tuesday":
      print("Today is " + day);

      break;
    case "wednesday":
      print("Today is " + day);
      break;
    case "thursday":
      print("Today is " + day);
      break;
    case "friday":
      print("Today is " + day);
      break;
    case "saturday":
      print("Today is " + day);
      break;
    case "sunday":
      print("Today is " + day);
      break;

    default:
  }

  var weather = Weather.Summer;
  switch (weather) {
    case Weather.Summer:
      print("Summer");

      break;
    case Weather.Spring:
      print("Spring");
      break;
    case Weather.Winter:
      print("Winter");
      break;
    case Weather.Autumn:
      print("Autumn");
    default:
  }
}
