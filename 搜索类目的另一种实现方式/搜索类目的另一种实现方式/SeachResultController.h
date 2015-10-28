//
//  SeachResultController.h
//  搜索类目
//
//  Created by narcissu on 15/10/27.
//  Copyright © 2015年 narcissu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ResultCollectionView.h"
@interface SeachResultController : UIViewController<UISearchResultsUpdating>
@property(nonatomic,strong)ResultCollectionView *resultCollectionView;
@property(nonatomic,strong)UITableView *searchTableView;
@end
