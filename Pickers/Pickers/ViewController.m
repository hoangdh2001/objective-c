//
//  ViewController.m
//  Pickers
//
//  Created by Do Huy Hoang on 19/08/2022.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addPickerView];
}

- (void)addPickerView {
    self.pickerArray = [[NSArray alloc] initWithObjects:@"Chess", @"Criket", @"Tennis", @"Volleyball", nil];
    self.myTextField = [[UITextField alloc] initWithFrame:CGRectMake(10, 100, 300, 30)];
    self.myTextField.borderStyle = UITextBorderStyleRoundedRect;
    self.myTextField.textAlignment = NSTextAlignmentCenter;
    self.myTextField.delegate = self;
    [self.view addSubview:self.myTextField];
    [self.myTextField setPlaceholder:@"Pick a Sport"];
    self.myPickerView = [[UIPickerView alloc] init];
    self.myPickerView.dataSource = self;
    self.myPickerView.delegate = self;
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(done:)];
    UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height, 320, 50)];
    [toolbar setBarStyle:UIBarStyleBlack];
    NSArray *toolbarItems = [NSArray arrayWithObjects:doneButton, nil];
    [toolbar setItems:toolbarItems];
    self.myTextField.inputView = self.myPickerView;
    self.myTextField.inputAccessoryView = toolbar;
}

#pragma mark - Text field delegates

#pragma mark - Picker View Data source
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
   return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView
   numberOfRowsInComponent:(NSInteger)component {
   return [self.pickerArray count];
}

#pragma mark- Picker View Delegate

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:
   (NSInteger)row inComponent:(NSInteger)component {
   [self.myTextField setText:[self.pickerArray objectAtIndex:row]];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:
   (NSInteger)row forComponent:(NSInteger)component {
   return [self.pickerArray objectAtIndex:row];
}


@end
