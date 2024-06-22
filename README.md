# Task_stock_viewer

This is a Stock Management application built using Flutter and Riverpod. The app displays a list of stock items with pagination, allowing the user to load more items as they scroll. Each item is displayed inside a card with padding and includes the quantity, name, and producer. The app supports keyboard navigation and item selection, highlighting the selected item.

## Screenshots
<a href="https://ibb.co/4s8QqRL"><img src="https://i.ibb.co/8zrhCgw/Screenshot-2024-06-22-at-22-27-22.png" alt="Screenshot-2024-06-22-at-22-27-22" border="0" width=300></a>
<a href="https://ibb.co/0jT5Ww0"><img src="https://i.ibb.co/fYfJKc3/Screenshot-2024-06-22-at-22-27-31.png" alt="Screenshot-2024-06-22-at-22-27-31" border="0" width=300></a>
<a href="https://ibb.co/9wcDb0f"><img src="https://i.ibb.co/5YG0r3z/Screenshot-2024-06-22-at-22-27-41.png" alt="Screenshot-2024-06-22-at-22-27-41" border="0" width=300></a>
##
https://github.com/Muhammadumar2502/Test_stock_viewer/assets/86619302/dd1be754-05ff-41b7-840d-17921f7deeab

## Features

- **Pagination**: Items are loaded in batches of 50, with new items loaded as the user scrolls.
- **Keyboard Navigation**: Navigate through the list using the up and down arrow keys.
- **Item Selection**: Click on an item to select it, with the selected item highlighted.
- **Clean Architecture**: The project follows Clean Architecture principles, ensuring a well-organized and maintainable codebase.
- **Flutter Riverpod**: State management is handled using Riverpod for a scalable and easy-to-use state management solution.

## Directory Structure

The project is organized as follows:

> ```console
> lib/
> ├── app.dart
> ├── data/
> │ ├── models/
> │ │ └── stock_item_model.dart
> │ ├── repositories/
> │ │ └── stock_repository_impl.dart
> ├── domain/
> │ ├── entities/
> │ │ └── stock_item.dart
> │ ├── repositories/
> │ │ └── stock_repository.dart
> │ └── usecases/
> │ └── fetch_stock_items.dart
> ├── presentation/
> │ ├── pages/
> │ │ └── stock_list_page.dart
> │ ├── state/
> │ │ └── stock_list_state.dart
> │ └── providers.dart
> ├── main.dart
> ├── exports.dart
> ```


## Getting Started

To get started with the project, follow these steps:

1. **Clone the repository**:
    ```sh
    git clone https://github.com/Muhammadumar2502/Test_stock_viewer.git
    ```

2. **Navigate to the project directory**:
    ```sh
    cd Test_stock_viewer
    ```

3. **Install dependencies**:
    ```sh
    flutter pub get
    ```

4. **Run the app**:
    ```sh
    flutter run
    ```

## Dependencies

- **Flutter**: The UI framework.
- **Flutter Riverpod**: For state management.

## Contributing

Contributions are welcome! If you have any improvements or suggestions, feel free to create a pull request or open an issue.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


