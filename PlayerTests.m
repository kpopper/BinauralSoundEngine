//
//  PlayerTests.m
//  BinauralSoundEngine
//
//  Created by Ian on 04/01/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PlayerTests.h"
#import "BinauralPlayer.h"

@implementation PlayerTests

@synthesize player;

- (void)setUp
{
	[self setPlayer:[[BinauralPlayer alloc] initWithAudioFileUrl:nil]];
}

- (void)tearDown
{
	[player release], player = nil;
}

#if USE_APPLICATION_UNIT_TEST     // all code under test is in the iPhone Application


#else                           // all code under test must be linked into the Unit Test bundle

- (void)test_itShouldPanTheSoundRightWhenPassedAPositiveValue
{
	[[self player] moveSound:1.0];
	
	STAssertTrue( [[self player] pan] > 0, @"player sound should have panned to the right" );
}

- (void)test_itShouldPanTheSoundLeftWhenPassedANegativeValue
{
	[[self player] moveSound:-1.0];
	
	STAssertTrue( [[self player] pan] < 0, @"player sound should have panned to the right" );
}

#endif


@end
