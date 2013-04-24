Copyright (c) 2013, <torjelucian@gmail.com>

Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

XamarinWrapper
==============

Use xamarin to wrap and existing ios app which is compiled into a library (see TestAppXCode project) and bind into a Xamarin dll (see TestAppBinding project) which is used by a Xamarin app (see TestAppXamarin project). The same AppDelegate's code used by the native Objective C app is wrapped and used from the Xamarin app.


Build Instructions
==================

1. Open TestAppXCode/TestApp.xcodeproj and build both the app and the library for ipad
2. Test if the app works and right clikc of Products/libTestAppLib.a  (you may find and already built version inside TestAppXCode folder)
3. Copy libTestAppLib.a to folder <output> and rename it to libTestAppLib-armv7.a
4. Perform steps 1 and 2 but now build it for simulator
5. Copy libTestAppLib.a to folder <output> and rename it to libTestAppLib-sim.a
6. Run lipo -create -output libTestAppLib.a libTestAppLib-armv7.a libTestAppLib-sim.a  - this will ouput a fat static library with both armv7 & simulator library
7. Add the library to the TestAppBinding folder
8. Open TestAppXamarin.sln and build all
9. Test the xamarin app

Enjoy!