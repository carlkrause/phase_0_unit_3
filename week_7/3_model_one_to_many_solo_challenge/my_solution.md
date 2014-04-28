# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields

Here are some of the fields from Twitter's individual profile editor:
	-photo link
	-header link
	-name
	-location
	-website link
	-bio (160 characters or less)
	-followers
	-accounts user is following
	-favorites
	-connection to Facebook account

## Release 1: Tweet Fields

To compose a Tweet you must A) be logged in to your Twitter account and B) must enter characters which, taken together, are less than 140 characters. You can also choose a location or to upload a photo.

Others' tweets include:
	-text
	-username of person who tweeted it (or also retweeted it)
	-time of tweet
	-number of retweets
	-number of favorites

## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: 

At first I wasn't 100% sure (though the title of the exercise did provide a bit more clarity) because of favorites and retweets, but I realized that these two are just modified tweets and as such would still be associated with the user ID of the re-tweeter/favorite-r. One user creates many tweets (including retweets or favorites), so it's definitely a one-to-many arrangement.

## Release 3: Schema Design

![alt text](https://github.com/carlkrause/phase_0_unit_3/raw/master/week_7/images/twitter_schema.jpg)

## Release 4: SQL Statements

All tweets for a certain user id:

SELECT * FROM tweets
WHERE user_id = '<#insert user id>'
ORDER BY tweets.created_at DESC

Tweets for a certain user id made after April 23, 2014:

SELECT * FROM tweets
WHERE user_id ='<#insert user id>' AND created_at >='4/23/2014'
ORDER BY tweets.created_at DESC

All tweets associated with a user's twitter handle

SELECT * FROM tweets
JOIN users
ON users.user_id = tweets.user_id
WHERE username = '<#username>'
ORDER BY tweets.created_at DESC

Twitter handle associated with a tweet id:

SELECT username FROM users
JOIN tweets
ON users.user_id = tweets.user_id
WHERE user_id = 2359351

## Release 5: Reflection

This exercise was OK. It's good practice to look at real-world examples and think through how the data is organized. It was also good to continue practicing SQL, though I'm looking forward to actually trying it out.