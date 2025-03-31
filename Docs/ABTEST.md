
## HILSON JESUS

**A/B Test Name:**
Sign Up Screen Background 

**User Story Number:**
US1

**Metrics (HEART Framework):**
Happiness- [E.g., User satisfaction based on feedback or survey results]

Engagement- [E.g., Time spent on the page, interaction rate]

Adoption- [E.g., Percentage of users completing the signup process]

Retention- [E.g., Users returning after X days post-signup]

Task Success- [E.g., Completion rate of the process without errors]

**Hypothesis:**
At the moment we have every sign up questions on one page and one color.

**What Problem Are We Trying to Solve?**
Problem Statement- 
It has high disintrest on that page likely due to the way the app looks at the moment.

**Impact:** I want users to feel engaged when putting in their sign up information. 

**Experiment Setup:**
Audience Allocation: 50% of new users will see Version A (1-screen signup), and 50% will see Version B (2-screen signup).

**Firebase Tools Used:** Firebase Remote Config to dynamically assign users, Firebase Analytics for event tracking.

**Tracking Setup:** The time it took to finish their sign up and if they signed up at all.

**Variations:**
Variation A - A one page, one color background for sign up page. 

Variation B - Multiple screens, different color background for sign up page.

**Success Criteria:**

Primary metric for success: 

Higher completion rate of signup process.

Secondary metrics: 

Lower bounce rate, reduced time taken to complete signup.

## LUKE PETRARCA

**A/B Test Name:**
Post Engagement: Image-First vs. Text-First Display

**USER STORY NUMBER:**
US2

**Metrics (HEART FRAMEWORK):**
Happiness: User satisfaction with post visibility and readability (via in-app surveys or Net Promoter Score).

Engagement: Number of likes, comments, and shares per post.

Retention: Frequency of users returning to interact with posts.

Task Success: Time spent on posts (determining if users engage more deeply with one format over the other).

**Hypothesis:**
We believe that prioritizing images over text in the post feed (larger image previews, minimized text) will drive higher engagement (likes/comments) compared to a text-first feed (where text appears first and images are secondary). If true, this means users engage more with visually driven content, which can help increase participation in discussions and interactions.

**What Problem Are We Trying to Solve?**
Problem:
Admins create posts, but we need to optimize the way users interact with them. If the post format does not align with user preferences, engagement could drop, reducing the effectiveness of announcements, discussions, and updates.

Impact:
Higher engagement means increased platform usefulness for schools.
If images drive more interactions, optimizing for image-first posts can boost participation in discussions.

**Experiment Setup:**
Audience: 50% of users will see Version A (image-first), while 50% see Version B (text-first).

**Firebase Tools Used:**
Firebase Remote Config: Used to toggle between the two variations.

**Tracking Setup:**
post_viewed (When a user views a post)
post_interacted (Tracks likes, comments, shares)
time_on_post (Measures how long users spend reading/interacting)
notification_clicked (If users engage more when notified about new posts)

**Variations:**
A (Image-First Feed - Default View)
Large image preview, with text appearing smaller underneath.

B (Text-First Feed - Alternative View)
Larger text preview with a smaller image thumbnail.

**Sucess Criteria:**
Increase in Post Interaction Rate
Increase in Average Time Spent on Posts
Higher Click Through Rate on Notifications

# VAN DAVEY

**A/B Test Name:**
Rating System of App

**User Story Number:**
US2

**Metrics (HEART Framework):**
Happiness- [E.g., User satisfaction based on feedback or survey results]

Engagement- [E.g., Time spent on the page, interaction rate]

Adoption- [E.g., Percentage of users completing the signup process]

Retention- [E.g., Users returning after X days post-signup]

Task Success- [E.g., Completion rate of the process without errors]

**Hypothesis:**
At the moment, we have a 1-5 star rating bar for users to rate the app 1-5, a possible short answer response may be better.

**What Problem Are We Trying to Solve?**
Problem Statement- 
Getting feedback on the app.

**Impact:** I want users to feel that their rating matters in the app. 

**Experiment Setup:**
Audience Allocation: 50% of new users will see Version A (1-5 star rating system), and 50% will see Version B (short-answer response).

**Firebase Tools Used:** Firebase Analytics for field updating.

**Tracking Setup:** The time it took to finish their sign up and if they signed up at all.

**Variations:**
Variation A - A 1-5 star rating bar. 

Variation B - Small text box allowing for you to write an honest review of the app.

**Success Criteria:**

Primary metric for success: 

Higher completion rate of rating on app.

Secondary metrics: 

More meaningful reviews on the app.

