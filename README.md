# Jellyvision Platform Engineer Audition

Welcome! This is an open-book audition and you may use any resource at your disposal except for one: biological entities. That is, you can't ask live people to interactively help you. This includes Skype, IRC, or the person in the next room.

Since you're performing the audition remotely, we have no idea if you're getting human help or not, but we trust that you'll follow the rules since you've gotten this far in the Jellyvision interview process.

## Notes:
* You can work on the sections in any order. There are no dependencies.
* You might not finish the audition, and that’s ok.
* You may ask your Jellyvision contact for clarification of an item only as a last resort. We wrote the tasks the way we did for a reason.
* If you complete the audition, or decide you’ve had enough of us, let your Jellyvision Contact know.
* Finally, we thank you for putting up with our exhaustive interview process. We know it can be grueling, but we want to make sure that you’re right for Jellyvision, and Jellyvision is right for you. You’ll hear from us in a few days about what the next steps will be.
* Good luck!

## Quality of Your Work
Your answers should be placed in `SOLUTIONS.md`. We evaluate this audition as if looking at the work product from a teammate.  That means we will be looking at things like your commit history, how you document/comment code, and how your code is tested.  If you are not able to get to everything feel free to describe the testing/solutions you have thought about as part of your documentation/comments. The more information you can provide the better we can evaluate your audition.

## Wrapping Up
When you're finished, make sure all of your code is committed locally, zip up the repo folder, and email it to your Jellyvision contact.

---

# The Setup

## Audition Stack
* Git
* Ruby 2.2.2
* Ruby on Rails 4.2.x
* SQLite

## Gems
You are free to include additional `gems` as you see fit, however any gems that require external dependencies such as `sidekiq (redis)` are not recommended.

## Fire It Up!

```
  bundle install
  rake db:migrate
  rake seed:teams
  rake seed:players
  rake seed:performances
  rails server
```

---

# Rails Challenges
**Note**: Rails problems make use of the included application code.

## 1. Queries on Queries

The `queries` being executed in `Team.get_players` are incredibly inefficient. Refactor the entire method being run. `Team.get_players(team_ids)` takes an array of `team_ids`, and it should return an `array` of `hashes` formatted as shown below.

**OBSERVE:** `name` should be `first_name last_name`.

```
  [
    { id: 1, name: 'Darijo Srna', position: 'Defender', team: 'Croatia' },
    ...
  ]
```
---

## 2. Abstraction, DRY, and Best Practices

FAT MODELS! SKINNY CONTROLLERS! Take a look inside `StatisticsController`, `statistics/views/index.html.erb`, `Player`, and `GamePerformance` to clean up the code!

**NOTE:** For simplicity `@player` is purposefully going to one player, you will not need to modify this.

---

## 3. Background Jobs (Optional)

Let's go to `http://localhost:3000/players/1`. At this page, there is a `Report` button which triggers the creation of a `report.txt` file inside `tmp`. Move this action into a `background` job. We would recommend `sucker_punch`, `Spawnling`, `DelayedJob`, or simply use ruby `threads`. We'll leave it up to you to decide. You will need to add the gem yourself if you decide to use one. Additionally, you should include meaningful player information within the report.

---

# General Challenges

**Note**: General Challenges are independent of the included application code.

## 4. Roman Numerals
The Roman numerals for 1 through 10 are I, II, III, IV, V, VI, VII, VIII, IX, and X. The Roman numerals for 20, 30, 40, 50, 60, 70, 80, 90 and 100 are XX, XXX, XL, L, LX, LXX, LXXX, XC and C. The Roman numeral for any two-digit number can be constructed by concatenating the numeral for its tens and the numeral for its ones.

Examples:
22 is 20 + 2 = "XX" + "II" = "XXII"
47 is 40 + 7 = "XL" + "VII" = "XLVII"
99 is 90 + 9 = "XC" + "IX" = "XCIX"
Using the language of your choice (no punch cards) write a function that accepts a Roman numeral string and returns the integer equivalent of that string.

# Data Challenges

**Note**: Data Challenges are independent of the included application code.

## 5. Relational Databases

A database system needs to model the following:

* Company: The system manages data for many Companies. Each Company has a name attribute. Each Company also offers one or more Medical Plans to its employees.
* Medical Plan: Each Medical Plan has a name attribute and belongs to exactly one Company.  Each Medical Plan is available to one or more Employee Groups.
* Employee Group: Each Employee Group has a name attribute and belongs to exactly one Company. Each Employee Group has access to one or more Medical Plans.
* Employee: Each employee has a first name, last name, age, and salary.  Each employee belongs to a single employee group. Each employee can be Enrolled in a Medical Plan that is part of their employee group.  If they are enrolled in a plan, their medical premium (cost) is stored.  

1.  Write SQL to create the tables for these entities.
2.  Write SQL to retrieve all of the Medical Plans for a given Company.
3.  Write SQL to retrieve the average age, average salary, minimum salary, and maximum salary of employees per Company.
4.  Write SQL to retrieve the company and employee group which has the most plans associated with it.
5.  Write SQL to retrieve the employee per company whose medical premium is the highest percentage of their salary.
---


## 6. All Mixed-Up (Optional)
The JSON file has data in three slightly different formats, and some of the data has been corrupted. Using the file and schemas below as reference, write a script that reads through the data, and for each message outputs the following information in JSON:

* The message ID
* Which version of the product sent the message
* Which attributes (if any) of the message have an invalid type
* Whether the message is valid based on the hash

JSON File
http://auditions.jellyvisionlab.com/data-engineering/data/rawMessages.json

JSON Validation Schemas (using draft v4, see: http://json-schema.org/) can be found in the json_schema_validations folder of this repo

Hashing Method:
Each hash is computed using the JSON string representation of the message object. For example (a version 1.1 message):
`hash = sha1('{"_id":"35YPU9672NPKC36142WK51","type":"response","value":"KBF25","userId":"069FVNCBZNY837CJYQJORF","ipAddress":"13.55.96.96","timestamp":"1371237809"}')`

Example Output (of a single message)

    {
    "messageId": "75YFA1872JLKC36142EP41",
    "version": "1.0",
    "invalidAttributes": [
        "userId"],
    "validHash": false
    }
---

# Design Challenges

## 7.  Designing an API (Optional)
We need to design a public API for our product that will need to process and store sensitive data for 5 million end users. Describe what you think should be the top three focuses in designing the API and why. Then, explain your reasoning behind choosing a programming language.


---

## 8. Bonus (Optional)

AX QGM'JW JWSVAFY LZAK LWPL, LZW SFKOWJ LG AFUDMVW AF QGMJ VGUMEWFLSLAGF AK "USWKSJ".
