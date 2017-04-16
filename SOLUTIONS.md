# SOLUTIONS

---

# Rails Challenges

## 1. Queries on Queries

  def self.get_players(ids = [])
    all_players = []
    ids.each do |id|
      team = Team.find(id)
      Team.find(id).players.each do |player|
        all_players << {
          id: player.id,
          name: "#{player.first_name} #{player.last_name}",
          position: player.position,
          team: team.name
        }
      end
    end

    all_players
  end


## 2. Abstraction, DRY, and Best Practices

---

## 3. Background Jobs (Optional)

---

# General Challenges

## 4. Roman Numerals

const romanNumerals = {
  I: 1,
  IV: 4,
  V: 5,
  IX: 9,
  X: 10,
  XL: 40,
  L: 50,
  XC: 90,
  C: 100
};

function romanNumeralsToInt (str) {
  let finalInteger = 0;
  let index = str.length - 1;
  while (index >= 0) {
    const twoNumerals = str[index - 1] + str[index];
    if (romanNumerals[twoNumerals]) {
      finalInteger += romanNumerals[twoNumerals];
      index -= 2;
    }
    else {
      finalInteger += romanNumerals[str[index]];
      index--;
    }
  }
  return finalInteger;
}


# Data Challenges

## 5. Relational Databases
1.
  CREATE TABLE Companies (
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(255) NOT NULL
  );
  CREATE TABLE Medical_plans (
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    company_id int FOREIGN KEY REFERENCES Companies(id) NOT NULL
  );
  CREATE TABLE Employee_groups (
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    company_id int FOREIGN KEY REFERENCES Companies(id) NOT NULL
  );
  CREATE TABLE Medical_plans_Employee_groups (
    id int PRIMARY KEY AUTO_INCREMENT,
    medical_plan_id int FOREIGN KEY REFERENCES Medical_plans(id) NOT NULL,
    employee_group_id int FOREIGN KEY REFERENCES Employee_groups(id) NOT NULL
  );
  CREATE TABLE Employee (
    id int PRIMARY KEY AUTO_INCREMENT,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    age int NOT NULL,
    salary decimal NOT NULL,
    employee_group_id int FOREIGN KEY REFERENCES Employee_groups(id) NOT NULL,
    medical_plan_employee_group_id int FOREIGN KEY REFERENCES Medical_plans_Employee_groups(id),
    medical_premium decimal
  );

## 6. All Mixed-Up (Optional)

---

# Design Challenges

## 7.  Designing an API (Optional)

---

## 8. Bonus (Optional)
CAESAR
