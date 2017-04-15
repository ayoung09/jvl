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
  CREATE TABLE Company (
    Id integer primary key,
    Name char(255)
  );
  CREATE TABLE Medical_plans (

  );

## 6. All Mixed-Up (Optional)

---

# Design Challenges

## 7.  Designing an API (Optional)

---

## 8. Bonus (Optional)
CAESAR
