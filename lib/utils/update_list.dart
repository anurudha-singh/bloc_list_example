class UpdateTheList {
  static List<int> numbersList = [1, 2, 3];

  static List<int> toUpdateTheList() {
    int lastPlusOne = numbersList.last + 1;
    numbersList.add(lastPlusOne);
    return numbersList;
  }
}
