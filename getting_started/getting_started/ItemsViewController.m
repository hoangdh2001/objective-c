//
//  ViewController.m
//  getting_started
//
//  Created by Do Huy Hoang on 18/08/2022.
//

#import "ItemsViewController.h"

@interface ItemsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property 
@end

@implementation ItemsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    [self addTextFieldWithDifferenceKeyboard];
//    [self addDifferenceTypesOfButton];
//    [self addLabel];
    [self addToolbar];
}

// InputType - TextField
- (void)addTextFieldWithDifferenceKeyboard {
    
    double widthTextField = self.view.bounds.size.width - 40;
    
    UITextField *textField1= [[UITextField alloc]initWithFrame:
                              CGRectMake(20, 50, widthTextField, 30)];
    textField1.delegate = self;
    textField1.borderStyle = UITextBorderStyleRoundedRect;
    textField1.placeholder = @"Default Keyboard";
    [self.view addSubview:textField1];
    
    UITextField *textField2 = [[UITextField alloc]initWithFrame:
                               CGRectMake(20, 100, widthTextField, 30)];
    textField2.delegate = self;
    textField2.borderStyle = UITextBorderStyleRoundedRect;
    textField2.keyboardType = UIKeyboardTypeASCIICapable;
    textField2.placeholder = @"ASCII keyboard";
    [self.view addSubview:textField2];
    
    UITextField *textField3 = [[UITextField alloc]initWithFrame:
                               CGRectMake(20, 150, widthTextField, 30)];
    textField3.delegate = self;
    textField3.borderStyle = UITextBorderStyleRoundedRect;
    textField3.keyboardType = UIKeyboardTypePhonePad;
    textField3.placeholder = @"Phone pad keyboard";
    [self.view addSubview:textField3];
    
    UITextField *textField4 = [[UITextField alloc]initWithFrame:
                               CGRectMake(20, 200, widthTextField, 30)];
    textField4.delegate = self;
    textField4.borderStyle = UITextBorderStyleRoundedRect;
    textField4.keyboardType = UIKeyboardTypeDecimalPad;
    textField4.placeholder = @"Decimal pad keyboard";
    [self.view addSubview:textField4];
    
    UITextField *textField5= [[UITextField alloc]initWithFrame:
                              CGRectMake(20, 250, widthTextField, 30)];
    textField5.delegate = self;
    textField5.borderStyle = UITextBorderStyleRoundedRect;
    textField5.keyboardType = UIKeyboardTypeEmailAddress;
    textField5.placeholder = @"Email keyboard";
    [self.view addSubview:textField5];
    
    UITextField *textField6= [[UITextField alloc]initWithFrame:
                              CGRectMake(20, 300, widthTextField, 30)];
    textField6.delegate = self;
    textField6.borderStyle = UITextBorderStyleRoundedRect;
    textField6.keyboardType = UIKeyboardTypeURL;
    textField6.placeholder = @"URL keyboard";
    [self.view addSubview:textField6];
}

// Button
- (void)addDifferenceTypesOfButton {
    UIButton *roundedRectButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [roundedRectButton setFrame:CGRectMake(60, 50, 200, 40)];
    [roundedRectButton setTitle:@"Rounded Rect Button" forState:UIControlStateNormal];
    [self.view addSubview:roundedRectButton];
    
    UIButton *customButton = [UIButton buttonWithType:UIButtonTypeCustom];
    customButton.backgroundColor = UIColor.lightGrayColor;
    [customButton setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    [customButton setFrame:CGRectMake(60, 100, 200, 40)];
    [customButton setTitle:@"Custom Button" forState:UIControlStateNormal];
    [self.view addSubview:customButton];
    
    UIButton *contactButton = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [contactButton setFrame:CGRectMake(60, 200, 200, 40)];
    [self.view addSubview:contactButton];
    
    UIButton *infoLightButton = [UIButton buttonWithType:UIButtonTypeInfoLight];
    [infoLightButton setFrame:CGRectMake(60, 300, 200, 40)];
    [self.view addSubview:infoLightButton];
}

// Label
- (void)addLabel {
    UILabel *aLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, 200, 280, 80)];
    aLabel.numberOfLines = 0;
    aLabel.textColor = [UIColor blueColor];
    aLabel.backgroundColor = [UIColor clearColor];
    aLabel.textAlignment = NSTextAlignmentCenter;
    aLabel.text = @"This is a sample text\n of mutiple lines. here number of lines is not limited.";
    [self.view addSubview:aLabel];
}

// Toolbar
- (void)addToolbar {
    UIBarButtonItem *spaceItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    UIBarButtonItem *customItem1 = [[UIBarButtonItem alloc]initWithTitle:@"Tool1" style:UIBarButtonItemStylePlain target:self action:@selector(toolBarItem1:)];
    UIBarButtonItem *customItem2 = [[UIBarButtonItem alloc]initWithTitle:@"Tool2" style:UIBarButtonItemStyleDone target:self action:@selector(toolBarItem2:)];
    NSArray *toolbarItems = [NSArray arrayWithObjects:customItem1, spaceItem, customItem2, nil];
    UIToolbar *toolbar = [[UIToolbar alloc]initWithFrame:CGRectMake(0, self.view.bounds.size.height - 50, self.view.bounds.size.width, 50)];
    [toolbar setBarStyle:UIBarStyleBlack];
    [self.view addSubview:toolbar];
    [toolbar setItems:toolbarItems];
}

- (IBAction)toolBarItem1:(id)sender {
    [self.label setText:@"Tool 1 Selected"];
}

- (IBAction)toolBarItem2:(id)sender {
    [self.label setText:@"Tool 2 Selected"];
}

// ImageView
- (void) addImageView {
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 300, 400)];
    [imgView setImage:[UIImage imageNamed:@"plus"]];
    [imgView setContentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:imgView];
}

// ImageView with animation
- (void) addImageViewWithAnimation {
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 300, 400)];
    
    imgView.animationImages = [NSArray arrayWithObjects:[UIImage imageNamed:@"plus1"], [UIImage imageNamed:@"plus2"], nil];
    imgView.animationDuration = 4.0;
    imgView.contentMode = UIViewContentModeCenter;
    [imgView startAnimating];
    [self.view addSubview:imgView];
}

// TextView
//- (void)addTextView {
//    UITextView *myTextView = [[UITextView alloc]initWithFrame:CGRectMake(10, 50, 300, 200)];
//    [myTextView setText:@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda. Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aiqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."];
//
//}

// Switch


@end
