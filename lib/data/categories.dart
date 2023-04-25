import '../models/bubo_category.dart';

///
/// This file provides the original category data
///

/// Original labels in german and bulgarian, english added as last value
const labels = [
["1", "Obst", "плодове", "vegetables", "frutas","des fruits"],
["2", "Farben", "цветове", "colors" ,"colores","couleurs"],
["3", "Moebel", "мебели", "furniture","muebles","meubles"],
["4", "Sachen", "дрехи", "clothes","ropa","vêtements"],
["5", "Spielzeug", "играчки", "toys","juguetes","jouets"],
["6", "Tiere", "животни", "animals","animales","animaux"],
["7", "Wilde Tiere", "диви животни", "wild animals","animales salvajes","animaux sauvages"],
["8", "Zahlen", "цифри", "digits","dígitos","chiffres"],
["9", "Wetter", "времето", "weather","clima","temps"],
["10", "Zu Hause", "вкъщи", "at home","en casa","chez soi"],
["11", "Natur", "природа", "nature","naturaleza","nature"],
["12", "Im Meer", "морето", "sea","mar","mer"],
["13", "Am Strand", "на плажа", "on the beach","en la playa","à la plage"],
["14", "Sport", "спорт", "sport","deporte","sport"],
["15", "Stadt", "град", "city","ciudad","ville"],
["16", "Berufe", "професии", "professions","profesiones","métiers"],
["17", "Fahrzeuge", "транспрорт", "transport","transporte","transport"]
];

///
/// Labels transformed into BuboCategories
///
/// This list can be used in the application for rendering the categories
///
List<BuboCategory> buboCategories = labels.map((categoryLabels) {
  return BuboCategory(
      int.parse(categoryLabels[0]),
      'assets/categories/cat_${categoryLabels[1].toLowerCase().replaceAll(' ', '_')}@3x.png',
      {
        'us': categoryLabels[3],
        'de': categoryLabels[1],
        'bg': categoryLabels[2],
        'es': categoryLabels[4],
        'fr': categoryLabels[5]
      });
}).toList();
