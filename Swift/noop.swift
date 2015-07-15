/// Defining noop
/// Platform : iOS / OSX
/// Language : Swift

func noop() {}

func noop<T>(value: T) {}

func noop<T>() -> T? { return nil }

func noop<T, S>(value: T) -> S? { return nil }