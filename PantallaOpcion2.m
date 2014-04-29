//
//  PantallaOpcion2.m
//  Primer juego
//
//  Created by Berganza on 29/04/14.
//  Copyright (c) 2014 Berganza. All rights reserved.
//

#import "PantallaOpcion2.h"

@implementation PantallaOpcion2
-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        
        // 1
        self.backgroundColor = [SKColor brownColor];
        self.scaleMode = SKSceneScaleModeAspectFit;
        [self addChild:self.volver];
    }
    return self;
}

- (SKLabelNode *)volver {
    SKLabelNode *volver = [SKLabelNode labelNodeWithFontNamed:@"Futura-Medium"];
    volver.text = @"volver";
    volver.fontSize = 24;
    volver.position = CGPointMake(CGRectGetMidX(self.frame),CGRectGetMidY(self.frame));
    volver.name = @"volver";
    return volver;
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    SKNode *node = [self nodeAtPoint:location]; //1
    
    if ([node.name isEqualToString:@"volver"]) { //2
        
        //3
        SKTransition *reveal = [SKTransition doorsCloseVerticalWithDuration:1];
        EscenaPresentacion * scene = [EscenaPresentacion sceneWithSize:self.frame.size];
        [self.view presentScene:scene transition: reveal];
    }
}

@end
