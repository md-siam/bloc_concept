<img src="screenshots/badges/built-with-love.svg" height="28px"/>&nbsp;&nbsp;
<img src="screenshots/badges/flutter-dart.svg" height="28px" />&nbsp;&nbsp;
<a href="https://choosealicense.com/licenses/mit/" target="_blank"><img src="screenshots/badges/license-MIT.svg" height="28px" /></a>&nbsp;&nbsp;
<img src="screenshots/badges/Flutter-3.svg" height="28px" />&nbsp;&nbsp;
<img src="screenshots/badges/dart-null_safety-blue.svg" height="28px"/>

# BLoC Tutorial - [Udemy](https://www.udemy.com/course/bloc-from-zero-to-hero/)

<img align="right" src="screenshots/logo/playstore.png" height="190"></img>

This tutorial video is also available on [youtube](https://www.youtube.com/watch?v=THCkkQ-V1-8). If you want, then instead of buying the Udemy tutorial, you can follow the youtube tutorial. The full documentation on BLoC package is available in [bloclibrary.dev](https://bloclibrary.dev/).

Bloc was designed with three core values in mind:

```
1. Simple: Easy to understand & can be used by developers with
               varying skill levels.

2. Powerful: Help make amazing, complex applications by composing
               them of smaller components.

3. Testable: Easily test every aspect of an application so that we
               can iterate with confidence.
```

**Overall, Bloc attempts to make state changes predictable by regulating when a state change can occur and enforcing a single way to change state throughout an entire application.**

## BLoC Core Concept

<img align="right" src="screenshots/2_core_concept/bloc_n_cubit.png" height="250"></img>

**1. Stream:** <br>
It is the foundation of BLoC. The stream is a river , which transport some data, on a boat, from the sender to the receiver. The transported data is asynchronous.<br>

**2. Cubit:** <br>
A cubit is the minimal version of a BLoC. BLoC actually extends cubit.

**3. Bloc:** <br>
BLoC is the big brain of the project. Where as cubit is used to optimize the functionality of the project.

\*\*Note: Start with a cubit. If you see the necessity, then modify your cubit into BLoC.

## Flutter BLoC Concept

<img align="right" src="screenshots/2_core_concept/flutter_bloc.png" height="250"></img>

<p>
Some vital Flutter concepts to get going (widget, widget tree).

1. BlocProvider + CounterApp implementation.
2. BlocBuilder + CounterApp implementation.
3. BlocListener + CounterApp implementation.
4. BlocConsumer + CounterApp implementation.
5. RepositoryProvider
6. MultiBlocListener, MultiBlocProvider, MultiRepositoryProvider
</p>

**`RepositoryProvider` is a class. Which has the main function which makes flutter communicate with outer data layer i.e. internet, APIs, databases, etc.**

<table align="center" style="margin: 0px auto;">
  <tr>
    <td><img align="right" src="screenshots/bloc_vital_concept.png"></img></td>
  </tr>
</table>

<p align="center">BlocBuilder & BlocListener can be combined together to from BlocConsumer</p>

## BLoC Architecture

<table align="center" style="margin: 0px auto;">
  <tr>
    <td><img align="right" src="screenshots/4_bloc_architecture/bloc_architect.png"></img></td>
  </tr>
</table>

<img align="left" src="screenshots/4_bloc_architecture/folder_structure.png"></img>

BLoC follows a specific folder pattern. The "Business logic" layer is separated from the "Presentation" layer and from the "Data" layer.<br>

&nbsp;1. First design the models. A model is a `blueprint` of the data an application will work with.<br><br>
&nbsp;2. Next the data providers. The data providers' responsibility is to provide raw data to it's successor, which is the `repositories`. It is actually an `API` for our own application. <br><br>
&nbsp;3. The repository is mainly a `wrapper` around one, or more data providers. Repositories are also `classes`, which contains dependencies of the respective data providers.

## BLoC Testing

A test is defined by how we programmatically tell flutter to `double check` the output given by a feature is equal to the expected response we planned on receiving. Packages needed for testing a BLoC:

```yaml
dependencies:
  flutter:
    sdk: flutter
  # Helpful for testing equal instances
  equatable: ^2.0.3
  # For testing
  bloc_test: ^9.0.3
```

In Dart language, **TWO INSTANCES** of the same exact class are not equal even though they are basically identical. This is because, these two instances are stored in different part of the memory, and dart compares their location in memories instead of their value.<br>
Hence, we need `equatable` package to solve this problem. Equatable package simply `@overrides` the equal operator.

```dart
    CounterState stateA = CounterState(counterValue:0);
    CounterState stateB = CounterState(counterValue:0);

                statA != stateB
```

## BLoC Access

```dart
  BlocProvider() vs BlocProvider.value()
```

Local Access & Route Access

Three types of routing:

1. Anonymous routing
2. Named routing
3. Generated routing

## App Screenshots

<table align="center" style="margin: 0px auto;">
  <tr>
    <th>Folder No.</th>
    <th>Name of the App</th>
    <th>Logic Files</th>
    <th>Screenshots</th>
  </tr>
  <tr>
    <td align="center">3</td>
    <td><a href="lib/3_flutter_bloc_concept/main.dart">Counter Using Cubit</a></td>
    <td>
      <a href="lib/3_flutter_bloc_concept/cubit/counter_cubit.dart">counter_cubit.dart</a><br>
      <a href="lib/3_flutter_bloc_concept/cubit/counter_state.dart">counter_state.dart</a>
      </td>
    <td><img align="center" src="screenshots/gif/3_flutter_bloc_concept.gif" width="250"></img></td>
  </tr>
  <tr>
    <td align="center">5</td>
    <td><a href="lib/5_bloc_testing/main.dart">BLoC Testing</a></td>
    <td>
      <a href="lib/5_bloc_testing/cubit/counter_cubit.dart">counter_cubit.dart</a><br>
      <a href="lib/5_bloc_testing/cubit/counter_state.dart">counter_state.dart</a>
      </td>
    <td><img align="center" src="screenshots/gif/5_bloc_testing.gif" width="250"></img></td>
  </tr>
</table>
