
# to do

End of May 10
442,087 Tweets pulled of 500,000. save the rest for special cases


### data gathering
- gather data from missing region in 5-04. Or account for it.

### data cleaning
- ~~fix user data assignment to tweets by tweet id. There are way too many missing users!
    - this isn't a problem with the merge. These ids are missing in the original data. A lot of the original user data is suspect, unfortunately. Many of the ids in users do not match a tweet in tweets and vice versa.
- ~~solve low-number tweets from May 3. There used to be a bunch! Why is this getting dumped?~~ **duplicates by id were thrown out in 3_data_cleanup before saving merged_tweets.csv.**
     - look at results of new merged_tweets without duplicate values. 
- continue adding bools or classifications for tweet types.
    - by specific game (pokemon, catalan, french, wordle proper, framed, etc)
        - ~~is_poke~~
        - should this be a single string column for now, just to accommodate the large number of different games?
    - ~~by win/lose~~
    
### eda
- check if time_since_last_tweet or tweet rate is poisson-distributed
    - (treating as random processes with a set average rate)
- make tweet rate irregular time series of each type
    - legit wordle
    - poke
    - catalan
    - french
    - spanish
    - by demographic (people giving pronouns in bio?, links to franchises?)
- link geo locations to lat/lon
- ~~make irregular time series' regular by putting into `traces`
    - ~~or see if `timemachines` or any of its sub-functions has a way around that.
    - pandas resample might be good enough!
- ~~apply these time series' to basic pandas TS operations
    - ~~autocorrelation
    - ~~partial autocorrelation
    - fft?
    
### time series
- apply simple ff neural network, like o-text method.
    - ~~lagged by 20 minutes, 20 values, rate 60 
        -
    - lagged values, along with some info bools, day-lagged, hour-lagged values.
- apply dickey-fuller to detrended series
- just try arima to see if it even makes any sense.
- install extra timeseries libraries for fbprophet [instructions](https://github.com/microprediction/timemachines/blob/main/INSTALL.md)
- compare different functions
- apply these time series' to timemachines functionality
    - fbprophet
    - greykite
    - other "heavy hitters"
- compare predictions on a later day of wordle.
    
### visuals
- plot game use by country with animation


# General Assembly Capstone Project

## problem statement

- predict wordle user posts on twitter on a sub-hourly basis with xxx

## Data
Gathered Twitter data for the search '🟩 Wordle' For over the first few days of May '22.

## Model

Apply time series models to tweet rates given time of day.

- Group tweet rates by
    - location
        - make an estimate of server load
        - estimate server cost with load
    - demographic
        - user data is gathered, for each of the users posting.

