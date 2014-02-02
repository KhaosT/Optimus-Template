//
//  OptimusDemo.m
//  OptimusDemo
//
//  Created by Khaos Tian on 2/1/14.
//  Copyright (c) 2014 Oltica. All rights reserved.
//

#import "OptimusDemo.h"

@implementation OptimusDemo

@synthesize button,isActive,updateTimer,backgroundImage;

- (id)initWithButton:(MXButton *)arg1{
	if(self = [super init]){
        NSBundle *classBundle = [NSBundle bundleForClass:[OptimusDemo class]];
        NSString *path = [classBundle pathForResource:@"background" ofType:@"png"];
        backgroundImage = [[NSImage alloc]initWithContentsOfFile:path];
        button = arg1;
	}
	return self;
}

- (void)updateImage{
    if (isActive) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            NSImage *orgImage = [(MXButton *)button getImage];
            [orgImage lockFocus];
            [backgroundImage drawInRect:NSMakeRect(0, 0, orgImage.size.width, orgImage.size.height)];
            //// Color Declarations
            NSColor* color0 = [NSColor colorWithCalibratedRed: 0.944 green: 0.167 blue: 0.201 alpha: 1];
            
            //// Group
            {
                //// Bezier Drawing
                NSBezierPath* bezierPath = [NSBezierPath bezierPath];
                [bezierPath moveToPoint: NSMakePoint(68.85, 57.31)];
                [bezierPath lineToPoint: NSMakePoint(67.46, 57.31)];
                [bezierPath curveToPoint: NSMakePoint(65.97, 58.41) controlPoint1: NSMakePoint(66.83, 57.31) controlPoint2: NSMakePoint(66.16, 57.8)];
                [bezierPath lineToPoint: NSMakePoint(65.17, 60.34)];
                [bezierPath curveToPoint: NSMakePoint(65.44, 62.18) controlPoint1: NSMakePoint(64.87, 60.9) controlPoint2: NSMakePoint(65, 61.73)];
                [bezierPath lineToPoint: NSMakePoint(66.43, 63.16)];
                [bezierPath curveToPoint: NSMakePoint(66.43, 64.79) controlPoint1: NSMakePoint(66.88, 63.61) controlPoint2: NSMakePoint(66.88, 64.34)];
                [bezierPath lineToPoint: NSMakePoint(64.79, 66.42)];
                [bezierPath curveToPoint: NSMakePoint(63.16, 66.42) controlPoint1: NSMakePoint(64.34, 66.87) controlPoint2: NSMakePoint(63.61, 66.87)];
                [bezierPath lineToPoint: NSMakePoint(62.18, 65.44)];
                [bezierPath curveToPoint: NSMakePoint(60.34, 65.17) controlPoint1: NSMakePoint(61.73, 64.99) controlPoint2: NSMakePoint(60.9, 64.87)];
                [bezierPath lineToPoint: NSMakePoint(58.41, 65.96)];
                [bezierPath curveToPoint: NSMakePoint(57.31, 67.46) controlPoint1: NSMakePoint(57.81, 66.15) controlPoint2: NSMakePoint(57.31, 66.83)];
                [bezierPath lineToPoint: NSMakePoint(57.31, 68.85)];
                [bezierPath curveToPoint: NSMakePoint(56.15, 70) controlPoint1: NSMakePoint(57.31, 69.48) controlPoint2: NSMakePoint(56.79, 70)];
                [bezierPath lineToPoint: NSMakePoint(53.85, 70)];
                [bezierPath curveToPoint: NSMakePoint(52.69, 68.85) controlPoint1: NSMakePoint(53.21, 70) controlPoint2: NSMakePoint(52.69, 69.48)];
                [bezierPath lineToPoint: NSMakePoint(52.69, 67.46)];
                [bezierPath curveToPoint: NSMakePoint(51.59, 65.96) controlPoint1: NSMakePoint(52.69, 66.83) controlPoint2: NSMakePoint(52.2, 66.15)];
                [bezierPath lineToPoint: NSMakePoint(49.66, 65.17)];
                [bezierPath curveToPoint: NSMakePoint(47.83, 65.44) controlPoint1: NSMakePoint(49.1, 64.87) controlPoint2: NSMakePoint(48.28, 64.99)];
                [bezierPath lineToPoint: NSMakePoint(46.84, 66.42)];
                [bezierPath curveToPoint: NSMakePoint(45.21, 66.42) controlPoint1: NSMakePoint(46.39, 66.87) controlPoint2: NSMakePoint(45.66, 66.87)];
                [bezierPath lineToPoint: NSMakePoint(43.58, 64.79)];
                [bezierPath curveToPoint: NSMakePoint(43.58, 63.16) controlPoint1: NSMakePoint(43.13, 64.34) controlPoint2: NSMakePoint(43.13, 63.61)];
                [bezierPath lineToPoint: NSMakePoint(44.56, 62.18)];
                [bezierPath curveToPoint: NSMakePoint(44.83, 60.34) controlPoint1: NSMakePoint(45.01, 61.73) controlPoint2: NSMakePoint(45.13, 60.9)];
                [bezierPath lineToPoint: NSMakePoint(44.04, 58.41)];
                [bezierPath curveToPoint: NSMakePoint(42.54, 57.31) controlPoint1: NSMakePoint(43.85, 57.8) controlPoint2: NSMakePoint(43.18, 57.31)];
                [bezierPath lineToPoint: NSMakePoint(41.15, 57.31)];
                [bezierPath curveToPoint: NSMakePoint(40, 56.16) controlPoint1: NSMakePoint(40.52, 57.31) controlPoint2: NSMakePoint(40, 56.79)];
                [bezierPath lineToPoint: NSMakePoint(40, 53.85)];
                [bezierPath curveToPoint: NSMakePoint(41.15, 52.69) controlPoint1: NSMakePoint(40, 53.21) controlPoint2: NSMakePoint(40.52, 52.69)];
                [bezierPath lineToPoint: NSMakePoint(42.54, 52.69)];
                [bezierPath curveToPoint: NSMakePoint(44.03, 51.59) controlPoint1: NSMakePoint(43.18, 52.69) controlPoint2: NSMakePoint(43.85, 52.2)];
                [bezierPath lineToPoint: NSMakePoint(44.83, 49.66)];
                [bezierPath curveToPoint: NSMakePoint(44.56, 47.82) controlPoint1: NSMakePoint(45.13, 49.1) controlPoint2: NSMakePoint(45.01, 48.27)];
                [bezierPath lineToPoint: NSMakePoint(43.58, 46.84)];
                [bezierPath curveToPoint: NSMakePoint(43.58, 45.21) controlPoint1: NSMakePoint(43.13, 46.39) controlPoint2: NSMakePoint(43.13, 45.66)];
                [bezierPath lineToPoint: NSMakePoint(45.21, 43.58)];
                [bezierPath curveToPoint: NSMakePoint(46.84, 43.58) controlPoint1: NSMakePoint(45.66, 43.13) controlPoint2: NSMakePoint(46.39, 43.13)];
                [bezierPath lineToPoint: NSMakePoint(47.83, 44.56)];
                [bezierPath curveToPoint: NSMakePoint(49.66, 44.83) controlPoint1: NSMakePoint(48.27, 45) controlPoint2: NSMakePoint(49.1, 45.13)];
                [bezierPath lineToPoint: NSMakePoint(51.59, 44.03)];
                [bezierPath curveToPoint: NSMakePoint(52.69, 42.53) controlPoint1: NSMakePoint(52.2, 43.84) controlPoint2: NSMakePoint(52.69, 43.17)];
                [bezierPath lineToPoint: NSMakePoint(52.69, 41.15)];
                [bezierPath curveToPoint: NSMakePoint(53.85, 40) controlPoint1: NSMakePoint(52.69, 40.52) controlPoint2: NSMakePoint(53.21, 40)];
                [bezierPath lineToPoint: NSMakePoint(56.15, 40)];
                [bezierPath curveToPoint: NSMakePoint(57.31, 41.15) controlPoint1: NSMakePoint(56.79, 40) controlPoint2: NSMakePoint(57.31, 40.52)];
                [bezierPath lineToPoint: NSMakePoint(57.31, 42.53)];
                [bezierPath curveToPoint: NSMakePoint(58.41, 44.03) controlPoint1: NSMakePoint(57.31, 43.17) controlPoint2: NSMakePoint(57.81, 43.84)];
                [bezierPath lineToPoint: NSMakePoint(60.35, 44.83)];
                [bezierPath curveToPoint: NSMakePoint(62.18, 44.56) controlPoint1: NSMakePoint(60.91, 45.13) controlPoint2: NSMakePoint(61.73, 45.01)];
                [bezierPath lineToPoint: NSMakePoint(63.16, 43.58)];
                [bezierPath curveToPoint: NSMakePoint(64.79, 43.58) controlPoint1: NSMakePoint(63.61, 43.13) controlPoint2: NSMakePoint(64.34, 43.13)];
                [bezierPath lineToPoint: NSMakePoint(66.43, 45.21)];
                [bezierPath curveToPoint: NSMakePoint(66.43, 46.84) controlPoint1: NSMakePoint(66.88, 45.66) controlPoint2: NSMakePoint(66.88, 46.39)];
                [bezierPath lineToPoint: NSMakePoint(65.44, 47.82)];
                [bezierPath curveToPoint: NSMakePoint(65.17, 49.66) controlPoint1: NSMakePoint(65, 48.27) controlPoint2: NSMakePoint(64.87, 49.1)];
                [bezierPath lineToPoint: NSMakePoint(65.97, 51.59)];
                [bezierPath curveToPoint: NSMakePoint(67.46, 52.69) controlPoint1: NSMakePoint(66.16, 52.19) controlPoint2: NSMakePoint(66.83, 52.69)];
                [bezierPath lineToPoint: NSMakePoint(68.85, 52.69)];
                [bezierPath curveToPoint: NSMakePoint(70, 53.85) controlPoint1: NSMakePoint(69.48, 52.69) controlPoint2: NSMakePoint(70, 53.21)];
                [bezierPath lineToPoint: NSMakePoint(70, 56.16)];
                [bezierPath curveToPoint: NSMakePoint(68.85, 57.31) controlPoint1: NSMakePoint(70, 56.79) controlPoint2: NSMakePoint(69.48, 57.31)];
                [bezierPath closePath];
                [bezierPath moveToPoint: NSMakePoint(60.77, 55)];
                [bezierPath curveToPoint: NSMakePoint(55.01, 49.23) controlPoint1: NSMakePoint(60.77, 51.82) controlPoint2: NSMakePoint(58.19, 49.23)];
                [bezierPath curveToPoint: NSMakePoint(49.23, 55) controlPoint1: NSMakePoint(51.82, 49.23) controlPoint2: NSMakePoint(49.23, 51.82)];
                [bezierPath curveToPoint: NSMakePoint(55.01, 60.77) controlPoint1: NSMakePoint(49.23, 58.19) controlPoint2: NSMakePoint(51.82, 60.77)];
                [bezierPath curveToPoint: NSMakePoint(60.77, 55) controlPoint1: NSMakePoint(58.19, 60.77) controlPoint2: NSMakePoint(60.77, 58.19)];
                [bezierPath closePath];
                [bezierPath setMiterLimit: 4];
                [color0 setFill];
                [bezierPath fill];
            }
            [orgImage unlockFocus];
            dispatch_async(dispatch_get_main_queue(), ^{
                [button update];
            });
        });
    }
}

- (void)activate{
	isActive = YES;
    if (updateTimer != nil) {
        [updateTimer invalidate];
        updateTimer = nil;
    }
    updateTimer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(updateImage) userInfo:nil repeats:YES];
}

- (void)deactivate{
    isActive = NO;
    if (updateTimer != nil) {
        [updateTimer invalidate];
        updateTimer = nil;
    }
}

- (float)getVersion{
	return 1.0;
}

@end
