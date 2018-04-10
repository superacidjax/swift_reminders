import Vapor
import FluentProvider

struct RemindersController {
    func addRoutes(to drop: Droplet) {
        let reminderGroup = drop.grouped("api", "reminders")
        // Create
        reminderGroup.post("create", handler: createReminder)
        // Index
        reminderGroup.get(handler: allReminders)
        // Show
        reminderGroup.get(Reminder.parameter, handler: getReminder)
    }
}

// create
func createReminder(_ req: Request) throws -> ResponseRepresentable {
    guard let json = req.json else {
        throw Abort.badRequest
    }
    let reminder = try Reminder(json: json)
    try reminder.save()
    return reminder
}

// index
func allReminders(_ req: Request) throws -> ResponseRepresentable {
    let reminders = try Reminder.all()
    return try reminders.makeJSON()
}

// show
func getReminder(_ req: Request) throws -> ResponseRepresentable {
    let reminder = try req.parameters.next(Reminder.self)
    return reminder
}
