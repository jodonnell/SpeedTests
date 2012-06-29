//
//  Bullet.m
//  SpeedTest
//
//  Created by Jacob O'Donnell on 6/27/12.
//  Copyright (c) 2012 Cyrus Innovation. All rights reserved.
//

#import "Bullet.h"

@implementation Bullet

@synthesize sprite;
@synthesize position;

-(id) init
{
    if( (self=[super init]) ) {
        sprite = [CCSprite spriteWithSpriteFrameName:@"bullet.png"];
        [sprite setPosition:ccp(CCRANDOM_0_1() * 360.0f, CCRANDOM_0_1() * 400.0f)];        
    }
    return self;
}


@end
