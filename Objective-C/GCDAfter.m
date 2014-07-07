/*
 GCD dispatch_after for Excuting a block after a set times
 Platform : iOS / OSX
 Language : Objective-C
 Completion Scope : Function or Method
 */

#pragma mark - Method

dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(<#delayInSeconds#> * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    <#code to be executed after a specified delay#>
});