//
//  ViewController.h
//  Day21_NsUserDefault
//
//  Created by Student P_04 on 24/03/17.
//  Copyright © 2017 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *loadText;
@property (weak, nonatomic) IBOutlet UITextField *fetchText;

- (IBAction)saveButton:(id)sender;
- (IBAction)fetchButton:(id)sender;

@end

