#import "SWGRequest.h"

@implementation SWGRequest

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"vehicles": @"vehicles", @"vehicleTypes": @"vehicle_types", @"services": @"services", @"shipments": @"shipments", @"relations": @"relations", @"objectives": @"objectives", @"costMatrices": @"cost_matrices", @"configuration": @"configuration" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"vehicles", @"vehicleTypes", @"services", @"shipments", @"relations", @"objectives", @"costMatrices", @"configuration"];
  return [optionalProperties containsObject:propertyName];
}

@end
