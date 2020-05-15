// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

/* `return exp;` where `exp` has static type `S` is an error if the future
 * value type of the function is neither `void` nor `dynamic`,
 * and `flatten(S)` is `void` or `void*`.
 */

Future<void> v = Future.value(null);

FutureOr<Object> test1() async {
  return v;
  //     ^
  // [analyzer] unspecified
  // [cfe] unspecified
}

FutureOr<Object?> test2() async {
  return v;
  //     ^
  // [analyzer] unspecified
  // [cfe] unspecified
}

FutureOr<Object> Function() test3 = () async {
  return v;
  //     ^
  // [analyzer] unspecified
  // [cfe] unspecified
};

FutureOr<Object?> Function() test4 = () async {
  return v;
  //     ^
  // [analyzer] unspecified
  // [cfe] unspecified
};

void main() {
  test1();
  test2();
  test3();
  test4();
}
