//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    


    NSString * filePath = [[NSBundle mainBundle] pathForResource:@"stateC" ofType:@"txt"];
    NSError *error;
    NSString *fileContents = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&error];
    NSArray  *stateList = [fileContents componentsSeparatedByString:@"\n"];
    
    
    NSMutableDictionary * stateWithCap = [[NSMutableDictionary alloc] init];
    
    for ( NSString * stateCaptail in stateList) {
        NSArray * eachArray = [stateCaptail componentsSeparatedByString:@":"];
        //NSLog(@"eachArray %@", eachArray);
        [stateWithCap setObject:eachArray[1] forKey:eachArray[0]];
    }
    
    ////////////////////////
    
    /**
    NSArray * allState = [stateWithCap allKeys];
    NSArray * allCaps = [stateWithCap allValues];
    
    
    for ( NSUInteger i = 0 ; i < allState.count ; i ++ ){
        
      NSString * eachCaps = [allCaps[i] lowercaseString];
      NSString * eachState = [allState[i] lowercaseString];

        BOOL match = NO ;
        
        NSArray * singleCap = [self stateNameFromString:eachCaps];
        NSArray * singleState = [self stateNameFromString:eachState];
        
        for (NSString * sch in singleState){
                if ([singleCap containsObject: sch]){
                    break;
                }
        }
        
        if (match == NO) {
        NSLog(@"%@", eachState);
        }
        else
        {
            //NSLog(@"%@", eachState);
        }
    }
    
*/
    //----
    
//    for ( NSString * state in stateWithCap){
//        NSString * captial =  stateWithCap[state];
//        BOOL isWinner = ![self string:state containsLetter:captial];
//        if (isWinner) {
//            NSLog(@"it is the winner %@",state);
//            return state;
//        }
//    }
    
    
//    NSArray * allState = stateWithCap.allKeys;
//    NSArray * allCaps = stateWithCap.allValues;
    
    for (NSString * state in stateWithCap ) {
        
        if ( [ self string:[stateWithCap[state]lowercaseString] containsLetter:state.lowercaseString] ){
           // NSLog(@" has letters ");
        } else NSLog(@" does not have %@", state);
        
    }
    
    
//NSDictionary * stateTest = @{ @"New York" : @"Albany"};
//    if ( [self string:@"albany" containsLetter:@"new york"] == YES){
//        NSLog(@" has letters ");
//    } else NSLog(@" does not have ");
//    
    
    return YES;
}


-(NSString *)characterOfString:(NSString *)string
                       atIndex:(NSUInteger)index {
    
    unichar character = [string characterAtIndex:index];
    NSString * firstCharacterINString = [NSString stringWithFormat:@"%c", character];
    return firstCharacterINString;
}


-(NSArray *)stateNameFromString:(NSString *)name{
                    //atIndex:(NSUInteger)index{
 
    // w o m i y p
    // n e w y o r k
    
    NSMutableArray * lettersInState = [@[] mutableCopy];

    for (NSUInteger i = 0 ; i < name.length ; i++ ) {
        [lettersInState addObject:[self characterOfString:name atIndex:i]];
    }

    return lettersInState;

}



-(BOOL)string:(NSString *)string containsLetter: (NSString *)otherString
{
    NSArray * lettersInString = [self stateNameFromString:otherString];
    
    for (NSString * letter in lettersInString) {
        if ([string containsString:letter]) {
            return YES;
        }
    }
    
    // loop over all the states and their capitals;
    // the first pair that have no shared letter is the winner;
    // ---
    
    return NO;
    
}


//-(BOOL)isMatch:(NSArray *)eachCapArray
//      contains:(NSString *)eachChar{
//
//    for (NSString * eachStringCap in eachCapArray) {
//        if ([eachStringCap containsString:eachChar]) {
//            return NO;
//        }
//    }
//
//    return YES;
//}

- (NSString *)solveTrivia {

    // captail contains no-state/
    // lecture
    /*
     edit the subml text to the dictionary strcuture 
     miniture problem 
     
     >>is a given character in another string? 
     
     >>are any letters in string A in string B also?
      looping over the character in a string. 
        >>turn a string into an array of its character
           >> get a single charecter first
     
     >>
     
     is A in Juneau 
     is L in Juneau
     
     
     
     .... "wyoming" = w y o m i n h 
     
     
     */
    
    
//    for ( NSString * state in stateWithCap){
//        NSString * captial =  stateWithCap[state];
//        BOOL isWinner = ![self string:state containsLetter:captial];
//        if (isWinner) {
//            NSLog(@"it is the winner %@",state);
//            return state;
//        }
//    }
//    

    return @"";
    
}



@end
