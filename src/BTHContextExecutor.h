#import "RCTContextExecutor.h"

/**
This class exists so that a client-created `JSContext`
instance can be injected into an `RCTContextExecutor`.

This class is designed to work with the `JSContext`
having been created on the main thread.
*/
@interface BTHContextExecutor : RCTContextExecutor

/**
Sets the context that will be used when `init`ing an instance
of this class.

@param context the context
 */
+(void) setContext:(JSContext*)context;

@end
