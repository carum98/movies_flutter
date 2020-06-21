
class Cast {
  List<Actor> actores = new List();

  Cast.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;
    jsonList.forEach((element) {
      final actor = Actor.fromJsonMap(element);
      actores.add(actor);
    });
  }
}


class Actor {
  int castId;
  String character;
  String creditId;
  int gender;
  int id;
  String name;
  int order;
  String profilePath;

  Actor({
    this.castId,
    this.character,
    this.creditId,
    this.gender,
    this.id,
    this.name,
    this.order,
    this.profilePath,
  });


  Actor.fromJsonMap(Map<String, dynamic> json) {
    castId        = json['cast_id'];
    character     = json['character'];
    creditId      = json['credit_id'];
    gender        = json['gender'];
    id            = json['id'];
    name          = json['name'];
    order         = json['order'];
    profilePath   = json['profile_path'];
  }

   getPhoto () {
    if (profilePath == null) {
      return 'https://i0.wp.com/crowd-literature.eu/wp-content/uploads/2015/01/no-avatar.gif?fit=150%2C150&ssl=1';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$profilePath';
    }
  }
}
