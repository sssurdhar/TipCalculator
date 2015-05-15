//
//  ViewController.m
//  TipCalculator
//
//  Created by Sunny Surdhar on 2015-05-15.
//  Copyright (c) 2015 Sunny Surdhar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;

- (IBAction)calculateTip:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Have the calculateTip method work out what a 15% tip would be
//    UIButton* calculateTip = [UIutton alloc]
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateTip:(id)sender {
    
    NSString *textInput = [self.billAmountTextField text];
    float billAmount = [textInput floatValue];
    float tipCalculation = (billAmount * .15);
    
    NSString *customInput = [self.tipPercentageTextField text];
    float customTipPercentage = [customInput floatValue];
    float customTip = ((customTipPercentage/100)*billAmount);
    
    if ([customInput isEqualToString:@""]) {
        [self.tipAmountLabel setText:[NSString stringWithFormat:@"$%0.2f", tipCalculation]];
    } else {
        [self.tipAmountLabel setText:[NSString stringWithFormat:@"$%0.2f",customTip]];
    }
    
}

@end