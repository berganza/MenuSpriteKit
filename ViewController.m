//
//  ViewController.m
//  Primer juego
//
//  Created by Berganza on 29/04/14.
//  Copyright (c) 2014 Berganza. All rights reserved.
//

#import "ViewController.h"
#import "EscenaPresentacion.h"


@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    SKView * spriteView = (SKView *) self.view;
    
    spriteView.showsDrawCount = YES;
    spriteView.showsFPS = YES;
    spriteView.showsNodeCount = YES;
    spriteView.showsPhysics = YES;
    
    
    EscenaPresentacion * presentacion = [EscenaPresentacion sceneWithSize:spriteView.bounds.size];

    presentacion.scaleMode = SKSceneScaleModeAspectFill;
    
    [spriteView presentScene:presentacion];
    
    // Do any additional setup after loading the view.
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
