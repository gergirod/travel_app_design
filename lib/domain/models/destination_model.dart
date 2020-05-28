
import 'activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;
  
  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities});

}

List<Destination> destinations = [
  Destination(
    imageUrl: 'https://www.azamara.com/sites/default/files/heros/qs-30-nov-2020-port-buenos-aires-argentina.jpg',
    city: 'Buenos Aires',
    country: 'Argentina',
    description: 'This is  a new description',
    activities: activities
  ),
  Destination(
      imageUrl: 'https://images.unsplash.com/photo-1483729558449-99ef09a8c325?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
      city: 'Rio De Janeiro',
      country: 'Brasil',
      description: 'This is  a new description',
      activities: activities
  ),

  Destination(
      imageUrl: 'https://lonelyplanetwp.imgix.net/2019/08/GettyImages-559975503-aad6f8b06d13.jpg?auto=format&fit=crop&q=40&sharp=10&vib=20&ixlib=react-8.6.4&h=1060&w=1600',
      city: 'Bogota',
      country: 'Colombia',
      description: 'This is  a new description',
      activities: activities
  ),
];

List<Activity> activities = [

  Activity(
    imageUrl: 'https://www.outsideonline.com/sites/default/files/styles/img_600x600/public/2018/09/11/family-hike-day_s.jpg?itok=KsspSND8',
    price: 20,
    name: 'hike',
    type: 'land',
    rating: 4,
    startTimes: ['8:00', '10:00']

  ),
  Activity(
      imageUrl: 'https://images.unsplash.com/photo-1554913968-6ba85b94df1f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
      price: 20,
      name: 'kayak',
      type: 'water',
      rating: 4,
      startTimes: ['8:00', '10:00']

  ),
  Activity(
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/f/f8/01_Auckland_New_Zealand-1000137.jpg',
      price: 20,
      name: 'sky tower',
      type: 'city',
      rating: 4,
      startTimes: ['8:00', '10:00']
  ),

  Activity(
      imageUrl: 'https://images.unsplash.com/photo-1538460120076-604b93a2ce88?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
      price: 20,
      name: 'temple',
      type: 'culture',
      rating: 4,
      startTimes: ['8:00', '10:00']

  ),
];

