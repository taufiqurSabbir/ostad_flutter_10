import 'package:flutter/material.dart';

class LifeCycleTest extends StatefulWidget {
  const LifeCycleTest({super.key});

  @override
  State<LifeCycleTest> createState() => _LifeCycleTestState();
}

class _LifeCycleTestState extends State<LifeCycleTest> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('InitState from page 2');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  @override
  void dispose() {
    print('dispose from page 2');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
