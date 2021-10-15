# Scoring Bowling 
The game consists of 10 frames. A frame is composed of one or two ball throws with 10 pins 
standing at frame initialization. There are three cases for the tabulation of a frame. 
1. An open frame is where a score of less than 10 is recorded for the frame. In this case the 
score for the frame is the number of pins knocked down. 
2. A spare is where all ten pins are knocked down by the second throw. The total value of a 
spare is 10 plus the number of pins knocked down in their next throw. 
3. A strike is where all ten pins are knocked down by the first throw. The total value of a 
strike is 10 plus the number of pins knocked down in the next two throws. If a strike is 
immediately followed by a second strike, then the value of the first strike cannot be 
determined until the ball is thrown one more time. 
Here is a three frame example: 
## Frame 1  Frame 2 Frame 3 
### X (strike) 5/ (spare) 9 0 (open frame) 

Frame 1 is (10 + 5 + 5) = 20

Frame 2 is (5 + 5 + 9) = 19

Frame 3 is (9 + 0) = 9 

This means the current running total is 48. 

The tenth frame in the game is a special case. If someone throws a strike or a spare then they get 
a fill ball. Fill balls exist to calculate the total of the 10th frame. Scoring a strike or spare on the 
fill ball does not give the player more fill balls. The total value of the 10th frame is the total 
number of pins knocked down. 
For a tenth frame of X1/ (strike and a spare), the total value is 20. 
For a tenth frame of XXX (three strikes), the total value is 30

# How to run?

1. Clone the repo using `git clone https://github.com/mail-ahsanellahi/bowling.git`
2. Move to project directory using `cd bowling`
3. Run `bundle install`
4. Run main.rb file to run the above example using command `ruby main.rb`

# Test Cases

Run `rspec` for test cases.
1. All ones - 1 pin for each roll giving a score of 20. 
2. One spare - 5, 5 and 3 pins then 0 for the next 17 rolls giving a score of 16.
3. One strike - a strike, 3 and 4 pins then 0 for the next 16 rolls giving a score of 24.
4. Fill ball test - 12 strikes for a score of 300.


