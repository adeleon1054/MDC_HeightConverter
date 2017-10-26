//
//  ViewController.m
//  sc01_HeightConverter
//
//  Created by user on 10/25/17.
//  Copyright © 2017 user. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UITextField *txtFeet;
@property (weak, nonatomic) IBOutlet UITextField *txtInches;


@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    SecondViewController * destination = [segue destinationViewController];
    destination.name = _txtName.text;
    destination.feet = [_txtFeet.text intValue];
    destination.inches = [_txtInches.text intValue];
}


@end
