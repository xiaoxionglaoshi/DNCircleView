//
//  ViewController.m
//  CircleProgress
//
//  Created by mainone on 16/5/17.
//  Copyright © 2016年 wjn. All rights reserved.
//

#import "ViewController.h"
#import "CircleView.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet CircleView *circleView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)sliderChangeValue:(UISlider *)sender {
     self.circleView.progress = sender.value;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
