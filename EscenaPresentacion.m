//
//  EscenaPresentacion.m
//  Primer juego
//
//  Created by Berganza on 29/04/14.
//  Copyright (c) 2014 Berganza. All rights reserved.
//

#import "EscenaPresentacion.h"



@implementation EscenaPresentacion


- (void)didMoveToView: (SKView *) view {
    if (!self.contentCreated)
    {
        [self createSceneContents];
        self.contentCreated = YES;
    }
}


- (void)createSceneContents {
    self.backgroundColor = [SKColor blueColor];
    self.scaleMode = SKSceneScaleModeAspectFit;
    [self addChild: self.newHelloNode];
    [self addChild:self.opciones];
    [self addChild:self.op1];
    [self addChild:self.op2];
    [self addChild:self.op3];
   
}

- (SKLabelNode *)newHelloNode {
    SKLabelNode *helloNode = [SKLabelNode labelNodeWithFontNamed:@"Futura-Medium"];
    helloNode.text = @"Pantalla Inicial";
    helloNode.fontSize = 42;
    helloNode.position = CGPointMake(CGRectGetMidX(self.frame),CGRectGetMidY(self.frame) * 1/3);
    return helloNode;
}


- (SKLabelNode *)opciones {
    SKLabelNode *opciones = [SKLabelNode labelNodeWithFontNamed:@"Futura-Medium"];
    opciones.text = @"Menu Opciones";
    opciones.fontSize = 24;
    opciones.position = CGPointMake(CGRectGetMidX(self.frame),CGRectGetMidY(self.frame) * 10/6);
    
    return opciones;

}

- (SKLabelNode *)op1 {
    SKLabelNode *op1 = [SKLabelNode labelNodeWithFontNamed:@"Futura-Medium"];
    op1.text = @"- Opcion 1";
    op1.fontSize = 12;
    op1.position = CGPointMake(CGRectGetMidX(self.frame)*1/3,CGRectGetMidY(self.frame) * 9/6);
    op1.name=@"op1";
    return op1;
    
}
- (SKLabelNode *)op2 {
    SKLabelNode *op2 = [SKLabelNode labelNodeWithFontNamed:@"Futura-Medium"];
    op2.text = @"- Opcion 2";
    op2.fontSize = 12;
    op2.position = CGPointMake(CGRectGetMidX(self.frame)*1/3,CGRectGetMidY(self.frame) * 8/6);
    op2.name = @"op2";
    return op2;
    
}
- (SKLabelNode *)op3 {
    SKLabelNode *op3 = [SKLabelNode labelNodeWithFontNamed:@"Futura-Medium"];
    op3.text = @"- Opcion 3";
    op3.fontSize = 12;
    op3.position = CGPointMake(CGRectGetMidX(self.frame)*1/3,CGRectGetMidY(self.frame) * 7/6);
    op3.name = @"op3";
    return op3;
    
}



- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    SKNode *node = [self nodeAtPoint:location]; //1
    
    if ([node.name isEqualToString:@"op1"]) { //2
        
        //3
        SKTransition *reveal = [SKTransition doorsOpenVerticalWithDuration:1];
        PantallaOpcion1 * scene1 = [PantallaOpcion1 sceneWithSize:self.frame.size];
        [self.view presentScene:scene1 transition: reveal];
        
    }
    
    if ([node.name isEqualToString:@"op2"]) { //2
        
        //3
        SKTransition *reveal = [SKTransition doorsOpenVerticalWithDuration:1];
        PantallaOpcion2 * scene2 = [PantallaOpcion2 sceneWithSize:self.frame.size];
        [self.view presentScene:scene2 transition: reveal];
        
    }
    
    if ([node.name isEqualToString:@"op3"]) { //2
        
        //3
        SKTransition *reveal = [SKTransition doorsOpenVerticalWithDuration:1];
        PantallaOpcion3 * scene2 = [PantallaOpcion3 sceneWithSize:self.frame.size];
        [self.view presentScene:scene2 transition: reveal];
        
    }
    
    
    
    
}


@end
