//
//  BinauralPlayer.h
//  BinauralSoundEngine
//
//  Created by Ian on 04/01/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface BinauralPlayer : NSObject 
{
@private
	NSURL *audioFileUrl;
	double pan;
}

@property (nonatomic, retain) NSURL *audioFileUrl;
@property (nonatomic, assign) double pan;

- (id)initWithAudioFileUrl:(NSURL *)urlOfAudioFile;

- (void)moveSound:(double)percentage;

@end
