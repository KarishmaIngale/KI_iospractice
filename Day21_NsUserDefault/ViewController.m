//
//  ViewController.m
//  Day21_NsUserDefault
//
//  Created by Student P_04 on 24/03/17.
//  Copyright © 2017 Felix. All rights reserved.
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
-(void)save
{
    NSString *value=self.loadText.text;
    NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
    [defaults setObject:value forKey:@"Message"];
}

- (IBAction)saveButton:(id)sender {
    [self save];
}

-(bool)textFieldShouldReturn:(UITextField *)textField
{
    [self save];
    self.fetchText.text=[[NSUserDefaults standardUserDefaults]stringForKey:@"Message"];
    return YES;
}

- (IBAction)fetchButton:(id)sender {
    self.fetchText.text=[[NSUserDefaults standardUserDefaults]stringForKey:@"Message"];
}
@end
