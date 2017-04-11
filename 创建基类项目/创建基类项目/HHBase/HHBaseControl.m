//
//  HHBaseControl.m
//

#import "HHBaseControl.h"

@implementation HHBaseControl

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)awakeFromNib {

    [self setupUI];
}

- (void)setupUI {}

@end
