class LoginLocationModel {
    LoginLocationModel({
        required this.loactions,
        required this.area,
    });

    List<Loaction> loactions;
    List<Area> area;

    factory LoginLocationModel.fromJson(Map<String, dynamic> json) => LoginLocationModel(
        loactions: List<Loaction>.from(json["loactions"].map((x) => Loaction.fromJson(x))),
        area: List<Area>.from(json["area"].map((x) => Area.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "loactions": List<dynamic>.from(loactions.map((x) => x.toJson())),
        "area": List<dynamic>.from(area.map((x) => x.toJson())),
    };

  map(Function(dynamic e) param0) {}
}

class Area {
    Area({
        required this.value,
        required this.label,
    });

    String value;
    String label;

    factory Area.fromJson(Map<String, dynamic> json) => Area(
        value: json["value"],
        label: json["label"],
    );

    Map<String, dynamic> toJson() => {
        "value": value,
        "label": label,
    };
}

class Loaction {
    Loaction({
        required this.glId,
        required this.glName,
    });

    String glId;
    String glName;

    factory Loaction.fromJson(Map<String, dynamic> json) => Loaction(
        glId: json["gl_id"],
        glName: json["gl_name"],
    );

    Map<String, dynamic> toJson() => {
        "gl_id": glId,
        "gl_name": glName,
    };
}
