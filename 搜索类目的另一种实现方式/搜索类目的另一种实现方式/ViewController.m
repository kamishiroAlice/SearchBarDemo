//
//  ViewController.m
//  搜索类目的另一种实现方式
//
//  Created by narcissu on 15/10/28.
//  Copyright © 2015年 narcissu. All rights reserved.
//

#import "ViewController.h"
#import "SeachResultController.h"
@interface ViewController ()<UISearchBarDelegate>
@property (weak, nonatomic) IBOutlet UISearchBar *typeSearchBar;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText{
    
}

- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar{
    [self presentViewController:[UIStoryboard storyboardWithName:@"TypeSearch" bundle:nil].instantiateInitialViewController animated:YES completion:nil];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
