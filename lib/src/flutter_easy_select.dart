part of '../flutter_easy_select.dart';

class FlutterEasySelect {
  static Future<T?> single<T>({
    required BuildContext context,
    required List<T> items,
    required Widget Function(T item) itemBuilder,
    required String Function(T item) searchProperty,
    required String title,
    double heightFactor = 0.8,
    bool enableFreeText = false,
    bool isSearchEnabled = true,
    void Function(String)? freeTextSelected,
    T? initialSelectedItem,
    InputDecoration? fieldDecoration,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * (heightFactor),
      ),
      builder: (BuildContext context) {
        return SingleSelectWidget<T>(
          items: items,
          itemBuilder: itemBuilder,
          searchProperty: searchProperty,
          title: title,
          enableFreeText: enableFreeText,
          isSearchEnable: isSearchEnabled,
          freeTextSelected: freeTextSelected,
          initialSelectedItem: initialSelectedItem,
          fieldDecoration: fieldDecoration,
        );
      },
    );
  }

  static Future<List<T>?> multi<T>({
    required BuildContext context,
    required List<T> items,
    required Widget Function(T item) itemBuilder,
    required String Function(T item) searchProperty,
    required String Function(T item) itemIdentifier,
    required String title,
    double heightFactor = 0.8,
    bool enableFreeText = false,
    bool isSearchEnabled = true,
    void Function(String)? freeTextSelected,
    List<T>? initialSelectedItems,
    InputDecoration? fieldDecoration,
  }) {
    return showModalBottomSheet<List<T>>(
      context: context,
      isScrollControlled: true,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * (heightFactor),
      ),
      builder: (BuildContext context) {
        return MultiSelectWidget<T>(
          items: items,
          itemBuilder: itemBuilder,
          searchProperty: searchProperty,
          itemIdentifier: itemIdentifier,
          title: title,
          enableFreeText: enableFreeText,
          isSearchEnable: isSearchEnabled,
          freeTextSelected: freeTextSelected,
          initialSelectedItems: initialSelectedItems,
          fieldDecoration: fieldDecoration,
        );
      },
    );
  }
}
