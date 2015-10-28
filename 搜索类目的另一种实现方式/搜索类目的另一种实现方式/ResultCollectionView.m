//
//  resultCollectionView.m
//  搜索类目
//
//  Created by narcissu on 15/10/27.
//  Copyright © 2015年 narcissu. All rights reserved.
//

#import "ResultCollectionView.h"

@interface ResultCollectionView ()

@end

@implementation ResultCollectionView

- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout{
    if (self = [super initWithFrame:frame collectionViewLayout:layout] ) {
        
    };
    return self;
}

//- (instancetype)init{
//    if (self = [super init]) {
//        self.collectionViewLayout = [[UICollectionViewFlowLayout alloc]init];
//    };
//    return self;
//}

- (void)layoutSubviews{
    [super layoutSubviews];
    [self settingLayout];
}

- (void)settingLayout{
    UICollectionViewFlowLayout *flowLayout = (UICollectionViewFlowLayout *) self.collectionViewLayout;
    flowLayout.itemSize = CGSizeMake(70, 30);
    flowLayout.minimumInteritemSpacing = 10;
    flowLayout.minimumLineSpacing = 0;
    flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
}

@end
