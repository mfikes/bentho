#import "RCTContextExecutor.h"

/**
 This class exists so that a client-created `JSGlobalContextRef`
 instance and optional JavaScript thread can be injected
 into an `RCTContextExecutor`.
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
+(void) setContext:(JSGlobalContextRef)context;

@end
