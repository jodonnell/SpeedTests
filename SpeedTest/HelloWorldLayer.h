//
//  HelloWorldLayer.h
//  SpeedTest
//
//  Created by Jacob O'Donnell on 6/26/12.
//  Copyright Cyrus Innovation 2012. All rights reserved.
//


#import <GameKit/GameKit.h>
#import "Bullet.h"
// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"

// HelloWorldLayer
@interface HelloWorldLayer : CCLayer
{
    NSMutableArray *bullets;
}
@property (retain, nonatomic) NSMutableArray *bullets;

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

@end
