//
//  Bullet.h
//  SpeedTest
//
//  Created by Jacob O'Donnell on 6/27/12.
//  Copyright (c) 2012 Cyrus Innovation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cocos2d.h"

@interface Bullet : NSObject {
    CCSprite *sprite;
    int position;
}

@property (retain, nonatomic) CCSprite *sprite;
@property (nonatomic) int position;

@end
