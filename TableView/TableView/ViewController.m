//
//  ViewController.m
//  TableView
//
//  Created by Do Huy Hoang on 18/08/2022.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSArray *myData;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    self.myData = [[NSMutableArray alloc]initWithObjects:
       @"Data 1 in array",@"Data 2 in array",@"Data 3 in array",
       @"Data 4 in array",@"Data 5 in array",@"Data 5 in array",
       @"Data 6 in array",@"Data 7 in array",@"Data 8 in array",
       @"Data 9 in array", nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.myData count] / 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    NSString *stringForCell;
    
    if (indexPath.section == 0) {
        stringForCell = [self.myData objectAtIndex:indexPath.row];
    } else if (indexPath.section == 1) {
        stringForCell = [self.myData objectAtIndex:indexPath.row + [self.myData count] / 2];
    }
    cell.textLabel.text = stringForCell;
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSString *headerTitle;
    
    if (section == 0) {
        headerTitle = @"Section 1 Header";
    } else {
        headerTitle = @"Section 2 Header";
    }
    return headerTitle;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    NSString *footerTitle;
    
    if (section == 0) {
        footerTitle = @"Section 1 Footer";
    } else {
        footerTitle = @"Section 2 Footer";
    }
    return footerTitle;
}

#pragma mark - TableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"Section:%ld Row:%ld selected and its data is %@", indexPath.section, indexPath.row, cell.textLabel.text);
}


@end
