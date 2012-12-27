//
//  LanguageHelper.m
//  qeebuConference
//
//  Created by hanson on 11/25/12.
//  Copyright (c) 2012 com. All rights reserved.
//

#import "LanguageHelper.h"

@implementation LanguageHelper

static NSBundle *bundle = nil;

+(void)initialize {
    NSUserDefaults* defs = [NSUserDefaults standardUserDefaults];
    NSArray* languages = [defs objectForKey:@"CurrentLanguages"];
    NSString *current = [languages objectAtIndex:0];
    [self setLanguage:current];
    
}

/*
 example calls:
 [Language setLanguage:@"it"];
 [Language setLanguage:@"de"];
 */
+(void)setLanguage:(NSString *)lan {
    NSLog(@"preferredLang: %@", lan);
    NSString *path = [[ NSBundle mainBundle ] pathForResource:lan ofType:@"lproj" ];
    bundle = [NSBundle bundleWithPath:path];
}

+(NSString *)get:(NSString *)key alter:(NSString *)alternate {
    return [bundle localizedStringForKey:key value:alternate table:nil];
}

+(NSString *)currentLanguage{
    NSUserDefaults* defs = [NSUserDefaults standardUserDefaults];
    NSArray* languages = [defs objectForKey:@"CurrentLanguages"];
    return [languages objectAtIndex:0];
}

@end
