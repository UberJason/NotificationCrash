//
//  ViewController.m
//  NotificationCrash
//
//  Created by Ji, Jason Y on 8/4/15.
//  Copyright (c) 2015 The MITRE Corporation. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)fireLocalNotification:(id)sender {
    UILocalNotification *notification = [UILocalNotification new];
    notification.alertBody = @"Swipe left to crash the phone.";
    notification.category = @"requestHelp";
    notification.fireDate = [[NSDate date] dateByAddingTimeInterval:60];
    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Scheduled" message:@"Your notification will fire in 1 minute. Lock the phone now. When the notification arrives, swipe left on it to crash." preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
    [self presentViewController:alert animated:YES completion:nil];
}
@end
