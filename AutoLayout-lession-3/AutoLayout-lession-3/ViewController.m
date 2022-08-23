//
//  ViewController.m
//  AutoLayout-lession-3
//
//  Created by Do Huy Hoang on 19/08/2022.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize value1, value2, operand, label;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.value1 = @"0";
    self.value2 = @"0";
    self.operand = NONE;
}

- (IBAction)buttonClicked:(id)sender {
    NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
    [nf setNumberStyle:NSNumberFormatterDecimalStyle];
    if (operand == NONE) {
        if (value1.doubleValue < 100000000) {
            if ([label.text isEqualToString:@"0"]) {
                value1 = [sender titleLabel].text;
            } else {
                value1 = [value1 stringByAppendingString:[sender titleLabel].text];
            }
            label.text = [nf stringFromNumber:@(value1.doubleValue)];
        }
    } else if (operand == EQUAL) {
        label.text = @"0";
        if ([label.text isEqualToString:@"0"]) {
            value1 = [sender titleLabel].text;
        } else {
            value1 = [value1 stringByAppendingString:[sender titleLabel].text];
        }
        label.text = [nf stringFromNumber:@(value1.doubleValue)];
        operand = NONE;
    } else {
        if (value2.doubleValue < 100000000) {
            if ([label.text isEqualToString:@"0"]) {
                value2 = [sender titleLabel].text;
            } else {
                value2 = [value2 stringByAppendingString:[sender titleLabel].text];
            }
            label.text = [nf stringFromNumber:@(value2.doubleValue)];
        }
    }
    
}

- (IBAction)dotClicked:(id)sender {
    NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
    [nf setNumberStyle:NSNumberFormatterDecimalStyle];
    if (![label.text containsString:@"."]) {
        if (operand == NONE) {
            if (value1.doubleValue < 100000000) {
                value1 = [value1 stringByAppendingString:[sender titleLabel].text];
                label.text = [NSString stringWithFormat:@"%@.",[nf stringFromNumber:@(value1.doubleValue)]];
            }
        } else if (operand == EQUAL) {
            value1 = @"0";
            value1 = [value1 stringByAppendingString:[sender titleLabel].text];
            label.text = [NSString stringWithFormat:@"%@.",[nf stringFromNumber:@(value1.doubleValue)]];
            operand = NONE;
        } else {
            if (value2.doubleValue < 100000000) {
                value2 = [value2 stringByAppendingString:[sender titleLabel].text];
                label.text = [NSString stringWithFormat:@"%@.", [nf stringFromNumber:@(value2.doubleValue)]];
            }
        }
    }
}

- (IBAction)acClicked:(id)sender {
    self.label.text = @"0";
    if (operand == NONE) {
        value1 = @"0";
    } else {
        value2 = @"0";
    }
}

- (IBAction)plusClicked:(id)sender {
    if (operand != NONE && operand != EQUAL) {
        [self progressCalculator];
    } else {
        self.label.text = @"0";
    }
    operand = PLUS;
}

- (IBAction)minusClicked:(id)sender {
    if (operand != NONE && operand != EQUAL) {
        [self progressCalculator];
    } else {
        self.label.text = @"0";
    }
    operand = MINUS;
}

- (IBAction)mutipleClicked:(id)sender {
    if (operand != NONE && operand != EQUAL) {
        [self progressCalculator];
    } else {
        self.label.text = @"0";
    }
    operand = MULTIPLY;
}

- (IBAction)divideClicked:(id)sender {
    if (operand != NONE && operand != EQUAL) {
        [self progressCalculator];
    } else {
        self.label.text = @"0";
    }
    operand = DIVIDE;
}

- (IBAction)equalClicked:(id)sender {
    if (operand != NONE && operand != EQUAL) {
        [self progressCalculator];
    }
}

- (void) progressCalculator {
    NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
    [nf setNumberStyle:NSNumberFormatterDecimalStyle];
    NSNumber *rs = @(0);
    if (operand == PLUS) {
        rs = @(value1.doubleValue + value2.doubleValue);
    } else if (operand == MINUS) {
        rs = @(value1.doubleValue - value2.doubleValue);
    } else if (operand == MULTIPLY) {
        rs = @(value1.doubleValue * value2.doubleValue);
    } else if (operand == DIVIDE) {
        rs = @(value1.doubleValue / value2.doubleValue);
    }
    value1 = rs.stringValue;
    value2 = @"0";
    label.text = [nf stringFromNumber:rs];
    operand = EQUAL;
}

- (IBAction)setNegativeValue:(id)sender {
    NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
    [nf setNumberStyle:NSNumberFormatterDecimalStyle];
    if (operand == NONE || operand == EQUAL) {
        if ([value1 containsString:@"-"]) {
            value1 = [value1 stringByReplacingOccurrencesOfString:@"-" withString:@""];
        } else {
            value1 = [NSString stringWithFormat:@"-%@", value1];
        }
        label.text = [nf stringFromNumber:@(value1.doubleValue)];
    } else {
        if ([value2 containsString:@"-"]) {
            value2 = [value2 stringByReplacingOccurrencesOfString:@"-" withString:@""];
        } else {
            value2 = [NSString stringWithFormat:@"-%@", value2];
        }
        label.text = [nf stringFromNumber:@(value2.doubleValue)];
    }
}

- (IBAction)percentClicked:(id)sender {
    NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
    [nf setNumberStyle:NSNumberFormatterDecimalStyle];
    if (operand == NONE || operand == EQUAL) {
        value1 = [NSString stringWithFormat:@"%lf", (value1.doubleValue / 100)];
        label.text = [nf stringFromNumber:@(value1.doubleValue)];
    } else {
        value2 = [NSString stringWithFormat:@"%lf", (value2.doubleValue / 100)];
        label.text = [nf stringFromNumber:@(value2.doubleValue)];
    }
}

@end
