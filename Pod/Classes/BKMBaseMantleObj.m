//
//  BKMBaseMantleObj.m
//  Pods
//
//  Created by Thiago Lioy on 12/17/15.
//
//

#import "BKMBaseMantleObj.h"

@implementation BKMBaseMantleObj

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return [NSDictionary mtl_identityPropertyMapWithModel:self.class];
}

-(NSDictionary*)asDictError:(NSError**)error{
    return  [MTLJSONAdapter JSONDictionaryFromModel:self error:error];
}

+(instancetype)parse:(NSDictionary*)dc error:(NSError**)error{
    return [MTLJSONAdapter modelOfClass:self.class
                     fromJSONDictionary:dc
                                  error:error];
}

@end

@implementation BKMBaseMantleObj (Collections)

+(NSArray*)asArrayOfDictFromModelArray:(NSArray*)objects error:(NSError**)error{
    return [MTLJSONAdapter JSONArrayFromModels:objects  error:error];
}

+(NSArray*)parseArray:(NSArray*)objs error:(NSError**)error{
    return [MTLJSONAdapter modelsOfClass:self.class
                           fromJSONArray:objs
                                   error:error];
}

@end
