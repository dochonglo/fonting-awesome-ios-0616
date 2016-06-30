//
//  ViewController.m
//  Fonting-Awesome-Flatiron-CocoaPods
//
//  Created by Ismael Barry on 6/30/16.
//  Copyright © 2016 Ismael Barry. All rights reserved.
//

// Objectives:

// 1.) FontAwesomeKit creates an NSAttributedString with the attributedString method. To assign an attributedString to a UIButton title you need to use the setAttributedTitle:forState: method. (2.) Add a button in the center of the view controller's canvas. At run time, make its title display an icon that you like from the FontAwesomeKit framework. (3.) When the button is pressed, it should show a different icon from the FontAwesomeKit framework.
// 2.) Use CWStatusBarNotification's documentation to figure out how to tell your user that they are pressing (and holding) the button that has an awesome font.

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *firstButton;
@property (weak, nonatomic) IBOutlet UIButton *secondButton;
@property (weak, nonatomic) IBOutlet UIButton *thirdButton;
@property (weak, nonatomic) IBOutlet UIButton *fourthButton;
@property (weak, nonatomic) IBOutlet UIButton *fifthButton;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.starIcon = [FAKFontAwesome starIconWithSize:15];
    self.bookmarkIcon = [FAKFoundationIcons bookmarkIconWithSize:15];
    self.twitterIcon = [FAKZocial twitterIconWithSize:15];
    self.mailIcon = [FAKIonIcons iosEmailIconWithSize:48];
    
    self.notification = [CWStatusBarNotification new];
    self.notification.notificationStyle = CWNotificationStyleNavigationBarNotification;
    self.notification.notificationAnimationInStyle = CWNotificationAnimationStyleTop;
    self.notification.notificationAnimationOutStyle = CWNotificationAnimationStyleTop;
    self.notification.notificationLabelBackgroundColor = [UIColor blueColor];
    self.notification.notificationLabelTextColor = [UIColor whiteColor];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// FontAwesomeKit creates an NSAttributedString with the attributedString method. To assign an attributedString to a UIButton title you need to use the setAttributedTitle:forState: method.
- (IBAction)firstButtonDidTouch:(id)sender {
    
    [self.firstButton setAttributedTitle:[self.starIcon attributedString] forState:UIControlStateNormal];
    
    // Dismiss notification in here:
    [self.notification dismissNotification];
}

- (IBAction)firstButtonDidTouchDown:(id)sender {
    
    [self.notification displayNotificationWithAttributedString:[self.starIcon attributedString] completion:nil];
}

- (IBAction)secondButtonDidTouch:(id)sender {
    
    [self.secondButton setAttributedTitle:[self.bookmarkIcon attributedString] forState:UIControlStateNormal];

    // Dismiss notification in here:
    [self.notification dismissNotification];
}

- (IBAction)secondButtonDidTouchDown:(id)sender {
    
    [self.notification displayNotificationWithAttributedString:[self.bookmarkIcon attributedString] completion:nil];
    
}

- (IBAction)thirdButtonDidTouch:(id)sender {

    [self.thirdButton setAttributedTitle:[self.twitterIcon attributedString] forState:UIControlStateNormal];
    
    // Dismiss notification in here:
    [self.notification dismissNotification];
}

- (IBAction)thirdButtonDidTouchDown:(id)sender {
 
    [self.notification displayNotificationWithAttributedString:[self.twitterIcon attributedString] completion:nil];
    
}

- (IBAction)fourthButtonDidTouch:(id)sender {
    
    [self.fourthButton setAttributedTitle:[self.mailIcon attributedString] forState:UIControlStateNormal];
    
    // Dismiss notification in here:
    [self.notification dismissNotification];
    
}

- (IBAction)fourthButtonDidTouchDown:(id)sender {
    
    [self.notification displayNotificationWithAttributedString:[self.mailIcon attributedString] completion:nil];
    
}

@end
