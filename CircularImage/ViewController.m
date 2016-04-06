//
//  ViewController.m
//  CircularImage
//
//  Created by test on 4/5/16.
//  Copyright © 2016 test. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *ImgView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    [self performSelector:@selector(setCircleForImage:) withObject:_ImgView afterDelay:0];
    //[self setCircleForImage:_ImgView];
}

-(void)setCircleForImage:(UIImageView*)img
{
    img.layer.cornerRadius=_ImgView.frame.size.height/2.0;
    img.clipsToBounds=YES;
    
}

@end
