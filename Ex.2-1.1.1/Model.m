//
//  Model.m
//  Ex.2-1.1.1
//
//  Created by SDT-1 on 2014. 1. 9..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "Model.h"

@implementation Model

static Model *instance;

+(Model*)sharedModel{
    if(nil == instance)
        instance = [[Model alloc]init];
    return instance;
}


-(id)init{
    self = [super init];
    if(self){
       self.data = [[NSMutableArray alloc]initWithObjects:@"iPhone",@"iPod",@"MacBook Air",@"MacBook Pro",@"MakBook Pro Retina",@"iMac",@"MacPro", nil];
    }
    return self;
}

-(id)productAt:(int)productId{
    return [self.data objectAtIndex:productId];
}

-(int)numberOfProducts{
    return [self.data count];
}

-(void)addProduct:(id)product{
    
    [self.data addObject:product];
}
-(void)removeProduct:(int)index{
    [self.data removeObjectAtIndex:index];
}


@end
