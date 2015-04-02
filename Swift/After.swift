/*
 Timer
 Platform : iOS / OSX
 Language : Swift
 */

#pragma mark - Function

func after(aTime: NSTimeInterval, fn: () -> () ) {
  let time: dispatch_time_t = dispatch_time(DISPATCH_TIME_NOW, Int64(aTime) * Int64(NSEC_PER_SEC))
  dispatch_after(time, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), fn)
}

#pragma mark - Use

after(5.0) {
    // ToDo
}