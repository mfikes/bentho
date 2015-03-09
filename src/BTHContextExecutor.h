#import "RCTContextExecutor.h"

/**
 This class exists so that a client-created `JSContext`
 instance and optional JavaScript thread can be injected
 into an `RCTContextExecutor`.

 This class is designed to work with the `JSContext`
 having been created on the main thread.
*/
@interface BTHContextExecutor : RCTContextExecutor

/**
 Sets the JavaScript thread that will be used when `init`ing
 an instance of this class. If not set, `[NSThread mainThread]`
 will be used.
 
 @param thread the thread
 */
+(void) setJavaScriptThread:(NSThread*)thread;

/**
 Sets the context that will be used when `init`ing an instance
 of this class.

 @param context the context
 */
+(void) setContext:(JSContext*)context;

@end
