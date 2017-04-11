### What did you expect to happen?

Using the latest version 3.1.4, setting an array using `.arrayObject` of a dictionary JSON:

	var locationJson:JSON = [:]
	locationJson["foo"].string = "xy"
	locationJson["bar"].int = 12323
	json["arrayObject"].arrayObject = [locationJson]
	
would produce:

	{
	  "locations" : [
	    {
	      "bar" : 12323,
	      "foo" : "xy"
	    }
	  ]
	}

This was working in version 3.1.3.

### What actually happened instead?

Instead in version 3.1.4 I get:

	{
	  "locations" : [
	
	  ]
	}

### Environment

List the software versions you're using:

 - SwiftyJSON: *3.1.4*
 - Xcode Version: *8.3 (8E162)*
 - Swift Version: *`Xcode Default`*

Please also mention which package manager you used and its version. Delete the
other package managers in this list:

 - Cocoapods: *1.1.1* (Use `pod --version` in Terminal)

### Project that demonstrates the issue

1. Download [Issue](http://sscce.org/)
2. Open `Issue.wcworkspace`.
3. Build the `IssueFramework` scheme.
3. Open `IssuePlayground.playground` from the workspace.
4. Note Playground output.
