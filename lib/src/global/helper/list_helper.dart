addRemoveToList(dynamic item, List<dynamic> list) {
  if (!isSelected(item, list)) {
    list.add(item);
  } else {
    list.removeWhere((element) => element.id == item.id);
  }
}

bool isSelected(dynamic item, List<dynamic> list) {
  try {
    list.firstWhere((element) => element.id == item.id);
    return true;
  } catch (e) {
    return false;
  }
}
