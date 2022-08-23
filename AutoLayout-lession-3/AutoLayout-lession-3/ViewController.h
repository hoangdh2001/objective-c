//
//  ViewController.h
//  AutoLayout-lession-3
//
//  Created by Do Huy Hoang on 19/08/2022.
//

#import <UIKit/UIKit.h>
#define NONE 0
#define PLUS 1
#define MINUS 2
#define MULTIPLY 3
#define DIVIDE 4
#define EQUAL 5

@interface ViewController : UIViewController<UICollectionViewDelegate>
@property (strong, nonatomic) IBOutlet UILabel *label;
@property NSString *value1;
@property NSString *value2;
@property NSInteger operand;
@end

