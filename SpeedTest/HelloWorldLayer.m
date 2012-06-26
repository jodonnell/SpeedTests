//
//  HelloWorldLayer.m
//  SpeedTest
//
//  Created by Jacob O'Donnell on 6/26/12.
//  Copyright Cyrus Innovation 2012. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"

// Needed to obtain the Navigation Controller
#import "AppDelegate.h"

#pragma mark - HelloWorldLayer



// HelloWorldLayer implementation
@implementation HelloWorldLayer

// Helper class method that creates a Scene with the HelloWorldLayer as the only child.
+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];

	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];

	// add layer as a child to scene
	[scene addChild: layer];

	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super's" return value
	if( (self=[super init]) ) {
    }
	return self;
}

-(void) onEnter {
    [super onEnter];
    [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"sprites.plist"];
    id sceneSpriteBatchNode = [CCSpriteBatchNode batchNodeWithFile:@"sprites.png"];
    [self addChild:sceneSpriteBatchNode z:1 tag: 0];
    
    for (int x = 0; x < 450; x++) {
        CCSprite *sprite = [CCSprite spriteWithSpriteFrameName:@"bullet.png"];
        [sprite setPosition:ccp(CCRANDOM_0_1() * 360.0f, CCRANDOM_0_1() * 400.0f)];
        [sceneSpriteBatchNode addChild:sprite z:1 tag:x];
    }
    [self scheduleUpdate];
}


-(void) update:(ccTime)deltaTime {
    for (int x =0; x < 450; x++) {
        id node = [self getChildByTag: 0];
        id sprite = [node getChildByTag: x];
        if ([sprite position].y > 500)
            [sprite setPosition:ccp([sprite position].x, 0)];
        else
            [sprite setPosition:ccp([sprite position].x, [sprite position].y + 10)];
    }
}


// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)

	// don't forget to call "super dealloc"
	[super dealloc];
}

#pragma mark GameKit delegate

-(void) achievementViewControllerDidFinish:(GKAchievementViewController *)viewController
{
	AppController *app = (AppController*) [[UIApplication sharedApplication] delegate];
	[[app navController] dismissModalViewControllerAnimated:YES];
}

-(void) leaderboardViewControllerDidFinish:(GKLeaderboardViewController *)viewController
{
	AppController *app = (AppController*) [[UIApplication sharedApplication] delegate];
	[[app navController] dismissModalViewControllerAnimated:YES];
}
@end
