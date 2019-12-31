# macbingsearcher

I made a simple macOS application to search Bing automatically to get Micro$oft Rewards points.
I did this because there were no existing programs available for macOS. just that wubdiws OS.

This is how I code for money.

## what it does
All it does is it generates a random 3 character string and searches it. It all happens in a WKWebView.

The "Mobile" and "Edge" buttons change the User Agent string of the WKWebView so Bing thinks you're on Micro$oft Edge or
mobile device so you can get extra points.

I haven't figured out a way to automatically do this; a button must be clicked every time so a new query is generated.
I've looked into recursively running the query generator but that hangs the program, and so does using a `while true` loop.
If you have any suggestions, please tell me. There is a .record file that you can open with [Repeater](https://apps.apple.com/us/app/repeater/id443370764?mt=12)
that will (hopefully) move the mouse to the correct location of the "Start!" button. But I'm not sure if it'll actually work
because the app window might open somewhere else. Just make your own Repeater file.

## bot
I made a UI test that painstakingly clicks all of the buttons, to reach maximum search points per day. I actually don't know
if this works because my points are maxed out for today, so I have to try tomorrow

also...
you do this at your own risk (if you even use this crap)
