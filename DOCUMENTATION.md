# Event Scheduler API Documentation

## Authentication

All endpoints require authentication through JWT tokens. Include the JWT token in the `Authorization` header of your requests.

---

## Create Event

### Endpoint

```
POST /api/events
```

### Description

Create a new event.

### Request Body

```json
{
  "title": "Event Title",
  "description": "Event Description",
  "date": "YYYY-MM-DD",
  "time": "HH:MM"
}
```

### Response

- Status: 201 Created
- Body:

```json
{
  "id": 1,
  "title": "Event Title",
  "description": "Event Description",
  "date": "YYYY-MM-DD",
  "time": "HH:MM",
  "user_id": 123
}
```

---

## Retrieve All Events

### Endpoint

```
GET /api/events
```

### Description

Retrieve a list of all events.

### Response

- Status: 200 OK
- Body:

```json
[
  { 
      "id": 1,
    "title": "Team Meeting",
    "description": "Monthly team meeting to discuss project updates",
    "date": "2023-12-22",
    "time": "10:00",
    "user_id": 123
  },
  {
    "id": 2,
    "title": "Conference Presentation",
    "description": "Presentation at a tech conference",
    "date": "2024-01-15",
    "time": "14:30",
    "user_id": 123
  }
  // ... other events
]
```

---

## Retrieve a Specific Event

### Endpoint

```
GET /api/events/:id
```

### Description

Retrieve a specific event by ID.

### Response

- Status: 200 OK
- Body:

```json
{
  "id": 1,
  "title": "Event Title",
  "description": "Event Description",
  "date": "YYYY-MM-DD",
  "time": "HH:MM",
  "user_id": 123
}
```

---

## Update an Event

### Endpoint

```
PATCH /api/events/:id
```

### Description

Update a specific event by ID.

### Request Body

```json
{
  "title": "Updated Event Title",
  "description": "Updated Event Description",
  "date": "YYYY-MM-DD",
  "time": "HH:MM"
}
```

### Response

- Status: 200 OK
- Body:

```json
{
  "id": 1,
  "title": "Updated Event Title",
  "description": "Updated Event Description",
  "date": "YYYY-MM-DD",
  "time": "HH:MM",
  "user_id": 123
}
```

---

## Delete an Event

### Endpoint

```
DELETE /api/events/:id
```

### Description

Delete a specific event by ID.

### Response

- Status: 204 No Content
```

