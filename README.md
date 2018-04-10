This is a basic reminders application written in Swift using the Vapor framework

# Getting Started for MacOS

## Installing Vapor

Ensure you have Xcode 9+ installed.
From the command line run the following
```sh
  eval "$(curl -sL check.vapor.sh)"
```
Assuming the prior command worked, now install Vapor:
```sh
brew tap vapor/homebrew-tap && brew update && brew install vapor
```
## Running the application

Clone the repo: ```sh git clone git@github.com:superacidjax/swift_reminders.git ```

Change into the project directory

Build and run the project: ```sh vapor build && vapor run```

You will now have a server running on localhost:8080, open the reminders_api.md file in this repository for documentation of the available endpoints.

To open the project in Xcode, enter the following: ```sh vapor xcode -y```

Be sure to stop the server and rebuild and run everytime you make a change to the code. For those used to compiled languages, this might be obvious, from those who work in Rails, Django or similar frameworks, it's a important reminder!
