<h1 align="center">Typeform Webhook Handler in Swift</h1>

<div align="center">
  <img src="https://www.swift.org/apple-touch-icon-57x57.png" />
</div>
<div align="center">
  <strong>Receive Typeform webhook payload using Swift and Vapor</strong>
</div>

<br />

<div align="center">
  <a href="https://github.com/picsoung"><img alt="GitHub followers" src="https://img.shields.io/github/followers/picsoung?style=social"></a>
  <a href="https://twitter.com/picsoung"><img alt="Twitter Follow" src="https://img.shields.io/twitter/follow/picsoung?style=social"></a>
  <img alt="License" src="https://img.shields.io/badge/License-GPLv3-blue.svg">
</div>

<div align="center">
  <sub> Built with :tada: by
  <a href="https://twitter.com/picsoung">Nicolas Grenié</a>
</div>


## Requirements
Have Swift 5.4.0 installed
Xcode installed
[Vapor](https://vapor.codes)

## Install
```
git clone https://github.com/picsoung/typeform-swift-webhook.git
cd typeform-swift-webhook
open Package.swift
```
This should load of the neccessary packages.

Once packages have been downloaded, click the ▶️Play button. 
This should launch a console saying.

`[ INFO ] Server starting on http://127.0.0.1:8080`

## Setup

For higher security, Typeform signs your webhook payload using a secret. You can define this secret in the settings of your webhook on Typeform's side.
Replace the secret in `routes.swift`.

The webhook route is on `/webhook`.

## Support
Feel free to reach out if you either want to use this project or if you found a bug.