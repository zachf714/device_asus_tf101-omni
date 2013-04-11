Manual test checklist for builds
================================

**Camera:**

* Front-facing camera, photo: Shouldn't crash/FC
* Front-facing camera, video: Shouldn't crash/FC
* Rear-facing camera, video: Should support up to 720p
* Photosphere: Not merged upstream at CM. Still not working.

**Audio:**

* Output: Audio should not randomly disappear after sleeping.
* Output: Volume should be OK. Does using KAT app change or improve experience?
* Microphone: Recorded audio should be audiable (and useful for Skype/VoIP/video-chat)

**Bluetooth:**

* Bluetooth audio devices: Should be able to pair and output audio.

**Keyboard/dock:**

* Dock-battery indicator: Should be present in sytem-tray
* Keyboard dock toggles: Should work as expected and as in stock ROM, but without on-screen indicators or feedback.
* AOSP keyboard: On-screen keyboard should appear when dock is not connected, and should not disappear randomly.

**Google-stuff:**

* Google-talk: Initiating or receiving video-chats should not FC.
* Backup: Backing up your settings to your Google account should be possible and not disabled.

**Other HW:**

* HDMI out: Should not result in weakened wifi.
* GPS: Should be able to find tracking satellites and get a fix.

