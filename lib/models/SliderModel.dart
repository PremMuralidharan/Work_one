class SliderModel {
  String image;
  String title;
  // String description;

  // Constructor for variables
  SliderModel({required this.image,required this.title});

  void setImage(String getImage) {
    image = getImage;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  // void setDescription(String getDescription) {
  //   description = getDescription;
  // }

  String getImage() {
    return image;
  }

  String getTitle() {
    return title;
  }

  // String getDescription() {
  //   return description;
  // }
}

// List created
List<SliderModel> getSlides() {
  List<SliderModel> slides = [];
  SliderModel sliderModel = SliderModel(image: "",title: "");

  // Item 1
  sliderModel.setImage("images/pana.png");
  sliderModel.setTitle("Connect with your Doctor over chat for your health issues.");
  // sliderModel?.setDescription("Interested in buying Copper Handicrafts");
  slides.add(sliderModel);

  sliderModel = SliderModel(image: "",title: "");

  // Item 2
  sliderModel.setImage("images/doctor.png");
  sliderModel.setTitle("Connect with your Doctor over chat for your health issues.");
  // // sliderModel?.setDescription("Interested in buying Copper Handicrafts");
  slides.add(sliderModel);

  sliderModel = SliderModel(image: "",title: "");

  // // Item 3
  sliderModel.setImage("images/group.png");
  sliderModel.setTitle("Connect with your Doctor over chat for your health issues.");
  // // sliderModel?.setDescription("Interested in buying Copper Handicrafts");
  slides.add(sliderModel);

  sliderModel = SliderModel(image: "",title: "");
  return slides;
}