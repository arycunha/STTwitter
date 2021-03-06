//
//  ViewController.m
//  STTwitter_iOS
//
//  Created by Nicolas Seriot on 2/19/13.
//  Copyright (c) 2013 Nicolas Seriot. All rights reserved.
//

#import "ViewController.h"
#import "STTwitterAPIWrapper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

//    // see http://rndc.or.id/wiki/index.php/(Ab)Using_Twitter_Client
//    STTwitterAPIWrapper *twitter = [STTwitterAPIWrapper twitterAPIWithOAuthConsumerName:@"Tweetdeck"
//                                                                            consumerKey:@"yT577ApRtZw51q4NPMPPOQ"
//                                                                         consumerSecret:@""
//                                                                               username:@"username"
//                                                                               password:@"password"];
//    
//    [twitter verifyCredentialsWithSuccessBlock:^(NSString *username) {
//        
//        NSLog(@"Access granted for %@", username);
//
//        [twitter getUserTimelineWithScreenName:@"barackobama" successBlock:^(NSArray *statuses) {
//            NSLog(@"-- statuses: %@", statuses);
//        } errorBlock:^(NSError *error) {
//            NSLog(@"-- error: %@", error);
//        }];
//
//    } errorBlock:^(NSError *error) {
//        NSLog(@"-- error %@", error);
//    }];

    // see http://rndc.or.id/wiki/index.php/(Ab)Using_Twitter_Client
    STTwitterAPIWrapper *twitter = [STTwitterAPIWrapper twitterAPIApplicationOnlyWithConsumerKey:@"yT577ApRtZw51q4NPMPPOQ"
                                                                                  consumerSecret:@""];
    
    [twitter verifyCredentialsWithSuccessBlock:^(NSString *username) {
        
        NSLog(@"Access granted for %@", username);
        
        [twitter getUserTimelineWithScreenName:@"barackobama" successBlock:^(NSArray *statuses) {
            NSLog(@"-- statuses: %@", statuses);
        } errorBlock:^(NSError *error) {
            NSLog(@"-- error: %@", error);
        }];
        
    } errorBlock:^(NSError *error) {
        NSLog(@"-- error %@", error);
    }];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
