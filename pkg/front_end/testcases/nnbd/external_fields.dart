// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class Annotation {
  const Annotation();
}


@Annotation()
external int topLevelField;

@Annotation()
external final int finalTopLevelField;

external var untypedTopLevelField;

external final untypedFinalTopLevelField;

class A {
  @Annotation()
  external int instanceField;

  @Annotation()
  external final int finalInstanceField;

  @Annotation()
  external covariant num covariantInstanceField;

  @Annotation()
  external static int staticField;

  @Annotation()
  external static final int finalStaticField;

  external var untypedInstanceField;

  external final untypedFinalInstanceField;

  external covariant var untypedCovariantInstanceField;

  external static var untypedStaticField;

  external static final untypedFinalStaticField;
}

mixin B {
  @Annotation()
  external int instanceField;

  @Annotation()
  external final int finalInstanceField;

  @Annotation()
  external covariant num covariantInstanceField;

  @Annotation()
  external static int staticField;

  @Annotation()
  external static final int finalStaticField;

  external var untypedInstanceField;

  external final untypedFinalInstanceField;

  external covariant var untypedCovariantInstanceField;

  external static var untypedStaticField;

  external static final untypedFinalStaticField;
}

extension Extension on A {
  @Annotation()
  external int extensionInstanceField;

  @Annotation()
  external final int finalExtensionInstanceField;

  @Annotation()
  external static int extensionStaticField;

  @Annotation()
  external static final int finalExtensionStaticField;

  external var untypedExtensionInstanceField;

  external final untypedFinalExtensionInstanceField;

  external static var untypedExtensionStaticField;

  external static final untypedFinalExtensionStaticField;
}

class C implements A {
  external var instanceField;

  external final finalInstanceField;

  external var covariantInstanceField;

  external var untypedInstanceField;

  external final untypedFinalInstanceField;

  external var untypedCovariantInstanceField;
}

main() {}
