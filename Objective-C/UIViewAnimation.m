/*
 Image animation via UIImageView
 Platform : iOS / OSX
 Language : Objective-C
 Completion Scope : Code Expression
 */

#pragma mark - Code Expression

UIImageView *animationImageView = [[UIImageView alloc] initWithFrame:<#(CGRect)#>];
[animationImageView setAnimationImages:<#(NSArray *)#>]; // set image array
[animationImageView setAnimationDuration:<#(NSTimeInterval)#>]; //set animation Duration
[animationImageView setAnimationRepeatCount:<#(NSInteger)#>]; //set animation repeat count
[animationImageView startAnimating]; // animation start
[animationImageView stopAnimating]; // animation stop
