//
//  Recipe.h
//  SimpleRecipeBook
//
//  Created by Julia Foster on 3/10/16.
//  Copyright © 2016 Riley Fewell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *prepTime;
@property (nonatomic, strong) NSString *imageFile;

@end
