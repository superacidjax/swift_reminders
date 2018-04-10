# POST /api/reminders/create

+ Request (application/json; charset=utf-8)

        {
            "title": "Cherry Marlmalade",
            "description": "Shopping List"
        }

+ Response 200 (application/json; charset=utf-8)

        {"id":3,"description":"Shopping List","title":"Cherry Marlmalade"}


# GET /api/reminders/

+ Response 200 (application/json; charset=utf-8)

        [{"id":1,"description":"Shopping List","title":"Dog Food"},{"id":2,"description":"Shopping List","title":"Butterfly Milk"},{"id":3,"description":"Shopping List","title":"Cherry Marlmalade"}]


# GET /api/reminders/1

+ Response 200 (application/json; charset=utf-8)

        {"id":1,"description":"Shopping List","title":"Dog Food"}


