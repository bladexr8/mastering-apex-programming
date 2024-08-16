/**
 * EXAMPLES OF USING A SINGLETON OR 
 * STATIC CLASS TO RETRIEVE CUSTOM
 * METADATA TO ENSURE IT IS ONLY
 * RETRIEVED ONCE IN A TRANSACTION
 * CONTEXT
 * (DO NOT RUN THIS CODE)
 */

 // Singleton Class
 public class ExampleSingleton {
  // private members can only be accessed via public methods
  private static ExampleSingleton instance;
  private Example__mdt metadata;

  // retrieve an instance of Singleton
  public static ExampleSingleton getInstance() {
    if (instance == null) {
      instance = new ExampleSingleton();
    }
    return instance;
  }

  // private constuctor ensures an instance can only be retrieved
  // via the getInstance() method
  private ExampleSingleton() {}

  // retrieve an instance of metadata
  public Example__mdt getMetadata() {
    if (metadata == null) {
      metadata = [SELECT Id FROM Example__mdt LIMIT 1];
    }
    return metadata;
  }
 }

// Static Class
public class ExampleStatic {
  // can only be retrieved via a public method
  private static Example__mdt metadata;

  // public method to retrieve metadata
  public static Example__mdt getExampleMetadata() {
    if (metadata == null) {
      metadata = [SELECT Id FROM Example__mdt LIMIT 1];
    }
    return metadata;
  }

  // private constructor
  private ExampleStatic {}

}