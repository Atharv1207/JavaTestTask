# JavaTestTask

This project is a simple **Spring Boot REST API** that manages a collection of items using an **in-memory data store**.  


The application is publicly hosted on Render and can be tested using `curl` or Postman.

---

##  Tech Stack

- Java 17
- Spring Boot
- Spring Web
- Bean Validation (Hibernate Validator)
- Gradle
- Docker
- Render (Hosting)

---

##  Features

- Add a new item
- Get a single item by ID
- Get all items
- Input validation using annotations
- In-memory storage (no database)

---

## Project Structure

```text
src/main/java/com/task/item
├── controller
│   └── ItemController.java
├── service
│   └── ItemService.java
├── model
│   └── Item.java
└── ItemApplication.java

```
## Models
### Item
- id (auto-incremented long)
- name (required)
- description (optional, max 50 characters)

## Public Deployment URL
`https://javatesttask-oekn.onrender.com`


## API Endpoints
#### 1. POST /items
``` 
Content-Type: application/json
```

#### Request
`curl -X POST https://javatesttask-oekn.onrender.com/items \
-H "Content-Type: application/json" \
-d '{"name": "<name>", "description": "<Description>"}'       `

#### Response (201 Created)
```declarative
{
  "id": 1,
  "name": "Laptop",
  "description": "Dell XPS 13"
}
```

#### 2. Get All Items
```declarative
GET /items
```
#### Response
```declarative
[
  {
    "id": 1,
    "name": "<name 1>",
    "description": "<description 1>"
  },

  {
    "id": 1,
    "name": "<name 2>",
    "description": "<description 2>"
  },
]
```

#### 3. Get Item by ID
```
GET /items/1
```

#### Response (200 OK)
```declarative
{
  "id": 2,
  "name": "<name 2>",
  "description": "<description 2>"
}
```

## Sample Curl Commands
```declarative
# POST
curl -X POST https://javatesttask-oekn.onrender.com/items \
-H "Content-Type: application/json" \
-d '{"name":"Laptop","description":"Dell XPS 13"}'

curl -X POST https://javatesttask-oekn.onrender.com/items \
-H "Content-Type: application/json" \
-d '{"name":"Phone","description":"iPhone 14"}'

curl -X POST https://javatesttask-oekn.onrender.com/items \
-H "Content-Type: application/json" \
-d '{"name":"Headphones","description":"Sony WH-1000XM5"}'

curl -X POST https://javatesttask-oekn.onrender.com/items \
-H "Content-Type: application/json" \
-d '{"name":"Monitor","description":"LG UltraWide"}'



# GET ALL
curl https://javatesttask-oekn.onrender.com/items


# GET BY ID
curl https://javatesttask-oekn.onrender.com/items/1
curl https://javatesttask-oekn.onrender.com/items/12
```

## Run Locally
#### Prerequisites
- Java 17
- Gradle

#### Steps
```declarative
./gradlew build
./gradlew bootRun
```
The application will start at `http://localhost:8080
`
