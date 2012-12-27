//
//  LanguageHelper.h
//  qeebuConference
//
//  Created by hanson on 11/25/12.
//  Copyright (c) 2012 com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LanguageHelper : NSObject

+(void)initialize;
+(void)setLanguage:(NSString *)lan;
+(NSString *)get:(NSString *)key alter:(NSString *)alternate;

/* @brief 返回当前语言
 * @return 返回当前设置的语言
 */
+(NSString *)currentLanguage;
@end
