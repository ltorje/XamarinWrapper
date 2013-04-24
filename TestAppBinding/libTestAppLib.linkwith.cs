using System;
using MonoTouch.ObjCRuntime;

[assembly: LinkWith ("libTestAppLib.a", LinkTarget.Simulator|LinkTarget.ArmV7s, ForceLoad = true, Frameworks="Foundation UIKit CoreGraphics")]
