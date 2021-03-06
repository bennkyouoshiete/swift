// This source file is part of the Swift.org open source project
// Copyright (c) 2014 - 2017 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors

// RUN: %target-swift-frontend %s -emit-ir
// XFAIL: *
// TODO: Decide if this test should just be deleted, now String _is_ an RRC
// Test case submitted to project by https://github.com/tmu (Teemu Kurppa)

extension String : RangeReplaceableCollection {}

func f<S : RangeReplaceableCollection>(_ seq: S) -> S {
    return S() + seq
}

f("a")
