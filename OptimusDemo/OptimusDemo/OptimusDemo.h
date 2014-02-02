#import <Foundation/Foundation.h>

//
//  OptimusDemo.h
//  OptimusDemo
//
//  Created by Khaos Tian on 2/1/14.
//  Copyright (c) 2014 Oltica. All rights reserved.
//

@protocol MXPluginButtonProtocol <NSObject>

- (id)getImage;
- (void)update;

@end

@interface MXButton : NSObject<MXPluginButtonProtocol>

//After drawing the key image, call -update to update the view.
- (void)update;
//Get a NSImage to draw on it.
- (NSImage *)getImage;
//Get size of the key's screen.
- (NSSize)getSize;

@end

#warning Remember change MXDisplayPlugins and MXBundleDescription in Info.plist\
Format If your class name is PopularisTest then the name should be popularis.test
@interface OptimusDemo : NSObject
{
    MXButton    *button;
    BOOL        isActive;
    NSTimer     *updateTimer;
    NSImage     *backgroundImage;
}

@property (nonatomic,strong) NSTimer    *updateTimer;
@property (nonatomic,strong) MXButton   *button;
@property (nonatomic,strong) NSImage    *backgroundImage;
@property (nonatomic,readwrite) BOOL    isActive;

- (id)initWithButton:(MXButton *)arg1;
- (void)updateImage;
- (void)activate;
- (void)deactivate;
- (float)getVersion;

@end
