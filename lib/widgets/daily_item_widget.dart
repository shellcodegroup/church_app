class DailyItem {
  final String announcement;
  final String verse;

  DailyItem({required this.announcement, required this.verse});
}

List<DailyItem> getDailyItems() {
  return [
    DailyItem(
        announcement: 'Coffee Morning every Tuesday at 10 AM',
        verse: 'Proverbs 3:5-6 - Trust in the Lord with all your heart...'),
  ];
}
