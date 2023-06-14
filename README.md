Need to handle error UI states in Flutter?🙄 No problem just use this simple Flutter package🤩

The package will show a simple error message with a title and a description. Optional you can also add a refresh method that will also show a refresh icon.

# Getting started 🚀
Just simply add the `error_text_widget` package to your dependencies:
```yaml
dependencies:
  error_text_widget:
    git:
      url: https://github.com/musiolmarco/error_text_widget
      ref: main
```

## Use the Widget 👉
```dart
ErrorTextWidget()
```
To say it simple: This is it. This will now show a basic error message with a title/description. 

<img src="https://github.com/musiolmarco/error_text_widget/assets/64715619/55fa2692-f759-48dc-9684-9db33c4fb421" width="300">

Of course there is a lot of things you can customize. Let us take a look at it.


## Refresh method 🔄
You can add a `onRefresh` method. This will display a refresh `IconButton` which will execute this method. Here you can pass a method that will refetch some data for example if something failed.
```dart
ErrorTextWidget(
   onRefresh: () => log('Refreshing data...'),
),
```
<img src="https://github.com/musiolmarco/error_text_widget/assets/64715619/a995e582-3f8c-4f28-8d34-631d8b8d27b8" width="300">

## Customize the Widget 🧑‍🎨
```dart
ErrorTextWidget(
          titleText: 'This is a sample title',
          titleFontStyle: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent,
          ),
          descriptionText: 'This is a sample description',
          descriptionFontStyle: TextStyle(
            color: Colors.redAccent[200],
          ),
          onRefreshIcon: Icon(
            Icons.refresh,
            color: Colors.redAccent[700],
          ),
          onRefresh: () => log('Refreshing data...'),
        ),
```
The widget can be customized very easily. Take a look at this code snippet. With this code our Widget will look like this:

<img src="https://github.com/musiolmarco/error_text_widget/assets/64715619/92102b4d-5210-47df-8ecb-5e78539013da" width="300">


