//
//  CountdownView.m
//  TapkuCalendarDemo
//
//  Created by Aaditya's MacBook on 12/20/11.
//  Copyright (c) 2011 Developing in the Dark. All rights reserved.
//

#import "CountdownView.h"

@implementation CountdownView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        CGRect timeFrame = CGRectMake(self.frame.size.width/2.0 + 5, 5, self.frame.size.width/2.0 - 5, self.frame.size.height);
        UITextField* timeLeft = [[UITextField alloc] initWithFrame:timeFrame];
        timeLeft.text = @"10:23:34";
        timeLeft.font = [UIFont systemFontOfSize:12];
        timeLeft.textColor = [UIColor darkGrayColor];
        timeLeft.tag = 1;
        [self addSubview:timeLeft];
        [timeLeft release];
    }
    return self;
}

- (void) setCountDownTime:(NSString*)time
{
    for (UIView *subview in [self subviews])
    {
        if(subview.tag == 1)
        {
            UITextField* timeLeft = (UITextField*)subview;
            timeLeft.text = time;
        }
    }
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    CGContextSetStrokeColorWithColor(context, [[UIColor blackColor] CGColor]);
    CGContextSetLineWidth(context, 0.5);
    CGContextTranslateCTM(context, -0.5, -0.5);
    
    CGContextBeginPath(context);
    CGContextMoveToPoint(context,self.frame.size.width/2.0,0);
    CGContextAddLineToPoint(context,self.frame.size.width/2.0,self.frame.size.height);
    CGFloat dash1[] = {5.0, 1.0};
    CGContextSetLineDash(context, 0.0, dash1, 2);
    //CGContextClosePath(context);
    CGContextStrokePath(context);
    
    CGContextRestoreGState(context);
}


@end
