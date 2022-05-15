Predicting Wordle User Activity from Twitter
---

General Assembly DSIR 222 capstone project

---

# Wordle

[Wordle](https://www.nytimes.com/games/wordle/index.html) is a new and popular word-guessing game created by Josh Wardle and owned by the NY Times. Players guess a daily 5-letter word in six tries. For each guess, the game reveals whether any of the letters in the guess are in the solution, and whether they are in the same location in the word. Currently, the game is entirely free to play.

The game owes its popularity partly to its simplicity, accessibility, and the drip-feed format of one-word-per-day. Perhaps most importantly, however, is its way of letting user easily share their outcomes without spoiling the answer. At the end of the game, it is easy to copy a simple and easy to read textual representation of their game, showing the number of guesses and the sequence of correct letters. Here is an example game, Wordle #329 from May 14, 2022:

![Wordle example](www.github.com/dtersegno/capstone/readme_pix/wordleExample.png)

This example's shareable text:
```
Wordle 329 4/6

🟨⬜⬜⬜🟨
⬜⬜⬜⬜🟨
🟨🟩🟨⬜⬜
🟩🟩🟩🟩🟩
```

## problem statement

- predict wordle user posts on twitter on a sub-hourly basis with xxx

## Data
Gathered Twitter data for the search '🟩 Wordle' For over the first few days of May '22.


## Models

Apply time series models to tweet rates given time of day.

- Group tweet rates by
    - location
        - make an estimate of server load
        - estimate server cost with load
    - demographic
        - user data is gathered, for each of the users posting.

