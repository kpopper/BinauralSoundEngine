//
//  BinauralPlayer.m
//  BinauralSoundEngine
//
//  Created by Ian on 04/01/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BinauralPlayer.h"


@implementation BinauralPlayer

@synthesize audioFileUrl;
@synthesize pan;

- (id)initWithAudioFileUrl:(NSURL *)urlOfAudioFile
{
	if( self = [super init] )
	{
		[self setAudioFileUrl:urlOfAudioFile];
	}
	return self;
}

- (void)dealloc
{
	[audioFileUrl release];
	[super dealloc];
}

- (void)moveSound:(double)percentage
{
	[self setPan:percentage];
}


@end
