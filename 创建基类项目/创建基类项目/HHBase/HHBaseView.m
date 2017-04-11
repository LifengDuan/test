//
//  HHBaseView.m
//

#import "HHBaseView.h"

@implementation HHBaseView

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
