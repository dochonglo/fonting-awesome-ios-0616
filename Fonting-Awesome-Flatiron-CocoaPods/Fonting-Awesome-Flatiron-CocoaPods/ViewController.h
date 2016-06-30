//
//  ViewController.h
//  Fonting-Awesome-Flatiron-CocoaPods
//
//  Created by Ismael Barry on 6/30/16.
//  Copyright © 2016 Ismael Barry. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FontAwesomeKit.h"
#import "FAKFontAwesome.h"
#import "FontAwesomeKit/FAKFontAwesome.h"
#import "FontAwesomeKit/FAKFoundationIcons.h"
#import "FontAwesomeKit/FAKZocial.h"
#import "FontAwesomeKit/FAKIonIcons.h"
#import "CWStatusBarNotification.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) FAKFontAwesome *starIcon;
@property (strong, nonatomic) FAKFoundationIcons *bookmarkIcon;
@property (strong, nonatomic) FAKZocial *twitterIcon;
@property (strong, nonatomic) FAKIonIcons *mailIcon;

@property (strong, nonatomic) CWStatusBarNotification *notification;


@end

