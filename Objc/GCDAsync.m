/*
 GCD dispatch_async for Background Processing
 Platform : iOS / OSX
 Language : Objective-C
 Completion Scope : Function or Method
 */

#pragma mark - Method

dispatch_async(dispatch_get_global_queue(<#dispatch_queue_priority_t priority#>, <#unsigned long flags#>), ^{
    <#Background Task Code#>
    
    // If Task is done, Update Main UI using Main Thread
    dispatch_async(dispatch_get_main_queue(), ^{
        <#Update Main UI Task Code#>
    });
});