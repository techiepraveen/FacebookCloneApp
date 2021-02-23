import 'package:flutter/material.dart';

class Group extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Group Page"),
          ],
        )
      ],
    );
  }
}

class Watch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Watch Page"),
          ],
        )
      ],
    );
  }
}

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Accoung Page"),
          ],
        )
      ],
    );
  }
}

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Notification Page"),
          ],
        )
      ],
    );
  }
}

class More extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
