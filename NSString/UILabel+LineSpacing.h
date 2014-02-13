#import <UIKit/UIKit.h>

@interface UILabel (LineSpacing)

- (UILabel*)labelWithLineSpacing:(NSInteger)lineSpacing;
- (CGSize)sizeOfLabelWithMaximumSize:(CGSize)maximumSize andLineSpacing:(NSInteger)lineSpacing;

@end
