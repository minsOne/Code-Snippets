// ScrollView optional method and Code Snippets
// Platform : iOS / OSX
// Language : Objective-C
// Completion Scope: Method


#pragma mark - Methods

// ScrollView Direction Detecting Method
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGPoint currentOffset = scrollView.contentOffset;
    
    // Direction is Down
    if (scrollView.contentOffset.y > lastContentOffset.y) {
        hasCellAnimating = YES;
    }
    // Direction is Upper
    else {
        hasCellAnimating = NO;
    }
    
    lastContentOffset = currentOffset;
}
