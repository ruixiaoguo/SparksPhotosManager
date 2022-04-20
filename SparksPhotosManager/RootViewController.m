//
//  RootViewController.m
//  SparksPhotosManager
//
//  Created by GRX on 2022/4/20.
//

#import "RootViewController.h"
#import "SPPhotoTailoringManager.h"
@interface RootViewController ()
@property (strong, nonatomic) UIImageView * imageView;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *imageV = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 270, 420)];
    imageV.center = self.view.center;
    imageV.backgroundColor = [UIColor purpleColor];
    imageV.layer.cornerRadius = 10;
    self.imageView = imageV;
    [self.view addSubview:self.imageView];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(choosePhotoAction)];
    self.imageView.userInteractionEnabled = YES;
    [self.imageView addGestureRecognizer:tap];
    self.imageView.layer.masksToBounds = YES;
}

- (void)choosePhotoAction
{
    WS(weakSelf)
    [[SPPhotoTailoringManager sharedTool]photoTailoring:^(UIImage *image) {
        weakSelf.imageView.image = image;
    }];
}

@end
