//
//  SecondViewController.m
//  sc01_HeightConverter
//
//  Created by user on 10/25/17.
//  Copyright © 2017 user. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblFinal;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    float meters = 0.00;
    float totalInches = (_feet*12)+_inches;
    meters = (totalInches * 2.54)/100;
    
    [_lblFinal setText:[NSString stringWithFormat:@"Hello %@, your height of %i\'%i\" inches converts to %.2f meters.",_name,_feet,_inches,meters]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

