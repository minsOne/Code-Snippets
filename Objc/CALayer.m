/*
 CALayer optional methods and Code Snippets
 Platform : iOS / OSX
 Language : Objective-C
 Completion Scope : Method
 */

#pragma mark - Method

// CALayer shadow effective method
- (void)setShadowLayer:(CALayer *)layer
{
    layer.shadowOffset = CGSizeMake(<#width#>, <#height#>);
    layer.shadowRadius = <#radius#>;
    layer.shadowOpacity = <#opacity#>;
}

