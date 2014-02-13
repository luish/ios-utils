#import "UILabel+LineSpacing.h"

@implementation UILabel (LineSpacing)

- (UILabel*)labelWithLineSpacing:(NSInteger)lineSpacing
{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self.text];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineSpacing];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [self.text length])];
    self.attributedText = attributedString;
    
    return self;
}

- (CGSize)sizeOfLabelWithMaximumSize:(CGSize)maximumSize andLineSpacing:(NSInteger)lineSpacing
{
    CGSize size = [self.text sizeWithFont:self.font
                        constrainedToSize:maximumSize
                            lineBreakMode:self.lineBreakMode];
    
    return size;
}

@end
