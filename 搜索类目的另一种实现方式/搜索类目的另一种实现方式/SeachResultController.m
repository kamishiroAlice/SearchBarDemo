//
//  SeachResultController.m
//  搜索类目
//
//  Created by narcissu on 15/10/27.
//  Copyright © 2015年 narcissu. All rights reserved.
//

#import "SeachResultController.h"
#import "SeachContentsView.h"
#import "Masonry.h"
#import "DSTalentsView.h"
#import "ResultCollectionView.h"
@interface SeachResultController ()<UICollectionViewDataSource,UICollectionViewDelegate,UITableViewDataSource,UITableViewDelegate,UISearchBarDelegate>
@property (weak, nonatomic) IBOutlet UISearchBar *TypeSearchBar;
@property (weak, nonatomic) IBOutlet ResultCollectionView *typeCollectionView;
@property (weak, nonatomic) IBOutlet UITableView *contentTableView;
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *typeCollectionFlowLayout;
@property(nonatomic,strong)NSMutableArray *modelArray;
@property(nonatomic,copy)NSString *typeName;
@property(nonatomic,strong)NSIndexPath* preClickCellIndex;

@end

@implementation SeachResultController
- (IBAction)cancelBtnClick:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

static NSString * const reuseIdentifier = @"Cell";

- (NSMutableArray *)modelArray{
    if (!_modelArray) {
        _modelArray = [NSMutableArray arrayWithArray:@[@"电商资讯",@"电商导师",@"项目合作",@"电商人才"]];
    }
    return  _modelArray;
}

- (void)loadView{
    [super loadView];
    [self settingUI];
}

- (void)settingUI{
    self.contentTableView.estimatedRowHeight = 100;
    self.typeCollectionView.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
    
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
}

- (void)setupUI{
    [self.typeCollectionView registerNib:[UINib nibWithNibName:@"seachContentsView" bundle:nil] forCellWithReuseIdentifier:@"seachContentsView"];
    [self.contentTableView registerNib:[UINib nibWithNibName:@"DSTalentsView" bundle:nil] forCellReuseIdentifier:@"DSTalentsView"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionViewDataSource
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    SeachContentsView *cell = (SeachContentsView *) [collectionView dequeueReusableCellWithReuseIdentifier:@"seachContentsView" forIndexPath:indexPath];
    UIButton *btn = (UIButton *) [cell viewWithTag:1001];
    [btn setTitle:self.modelArray[indexPath.row] forState:UIControlStateNormal];
    
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.modelArray.count;
}

#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    if (self.preClickCellIndex) {
        SeachContentsView *cell = (SeachContentsView *) [collectionView cellForItemAtIndexPath:self.preClickCellIndex];
        UIButton *btn = (UIButton *) [cell viewWithTag:1001];
        [btn setTintColor:[UIColor blueColor]];
    }
    SeachContentsView *cell = (SeachContentsView *) [collectionView cellForItemAtIndexPath:indexPath];
    self.preClickCellIndex = indexPath;
    UIButton *btn = (UIButton *) [cell viewWithTag:1001];
    [btn setTintColor:[UIColor greenColor]];
    self.typeName = btn.titleLabel.text;
    cell.clicked = YES;
    
}

#pragma mark - UISearchResultsUpdating
- (void)updateSearchResultsForSearchController:(UISearchController *)searchController{
    NSString  *searchStr = searchController.searchBar.text;
    [self getDataWithTypeName:self.typeName searchStr:searchStr];
    [self.resultCollectionView layoutIfNeeded];

}

#pragma mark - getData
- (void)getDataWithTypeName:(NSString *)typeName searchStr:(NSString *)searchStr{
    NSLog(@"%@+%@",typeName,searchStr);
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DSTalentsView"];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 114;
}

#pragma mark - UISearchBarDelegate

- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar{
    
}

- (void)searchBarTextDidEndEditing:(UISearchBar *)searchBar{

}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText{
    NSLog(@"%@+%@",self.typeName,searchBar.text);
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{

}
- (void)searchBarBookmarkButtonClicked:(UISearchBar *)searchBar{

}
- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar{

}
- (void)searchBarResultsListButtonClicked:(UISearchBar *)searchBar{

}
- (void)searchBar:(UISearchBar *)searchBar selectedScopeButtonIndexDidChange:(NSInteger)selectedScope{
    
}

@end
