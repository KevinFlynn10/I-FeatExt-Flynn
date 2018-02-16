Name/n
Kevin Flynn

Goals\n
My goal was to create an input that could count the amount of seconds between button presses and use that as an input

Tools/n
I used Processing3 in order to create this timer. The only libraries used were the ones to send the Osc messages.

What I Accomplished/n
In this project, I accomplished my goal of being able to track the amount of seconds between a pressed key and send that to Wekinator as an input. This was the goal I set out to accomplish and was able to do so.

Model Used/n
When attempting to train with my model, I used the k-Nearest Neighbor. My program is not a continuous output and sends the number of seconds between clicks. This makes it much easier to use k-Nearest neighbor, as the class will go to the closest trained amount of seconds. Since my inputs are very few and distinct, there wasnt much difference when attempting other models. KNN with K=1 worked the best for me. 

What Can It Be Used For?/n
This can be used to train an output based on the number of seconds between key presses. It can be customized in any way that someone wants. Shorter key presses do one thing while longer key intervals do another.

Setup/n
This can simply be run by running the timer.pbe file inside processing. All the user has to do is press a key and then press another key again in order to send an input to wekinator.
