## Dillinger

## _The Last Markdown Editor, Ever_

[![N|Solid](https://cldup.com/dTxpPi9lDf.thumb.png)](https://nodesource.com/products/nsolid)

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

Dillinger is a cloud-enabled, mobile-ready, offline-storage compatible, Angular JS-powered HTML5 Markdown editor

>- Type some Markdown on the left
>- See HTML in the right
>- ✨Magic✨

## Features

>* import a HTML file and watch magically convert to Markdown
>* Drag and drop images(requires your Dropbox account be linked)
>* import and save file from GitHub, Dropbox, Google Drice and One Drive
>* Export documents as Markdown, HTML and PDF

Markdown is a lightweight markup language based on the formatting conventions that people naturally use in email.<br>
As [John Gruber](www.replit.com) writes on [the Markdown site](www.replit.com)

```python
for i in range(10);
	print(hello)
```

> _The overriding design goal for Markdown's
> formatting syntax is to make it as readable
> as possible. The idea is that a
> Markdown-formatted document should be
> publishable as-is, as plain text, without
> looking like it's been marked up with tags
> or formatting instructions._

This text you see here is *actually-wriiten in Markdown! To get a feel for Markdown's syntax, type some text into the left window and watch the results in the right.

## Tech

Dillinger uses a number of open source projects to work properly:

>- [AngularJS](url) - HTML enhanced for web apps!
>- [Ace Editor](url) - awesome web-based text editor
>- [markdown-it](url) - Markdown parser done right. Fast and easy to extend.
>- [Twitter Bootstrap](url) - great UI boilerplate for modern web apps
>- [node.js](url) - evented I/O for the backend
>- [Express](url) - fast node.js network app framework [@tjholowaychuk](url)
>- [Gulp](url) - the streaming build system
>- [Breakdance](url) - HTML
## Installation

Dillinger requires [Node.js](url) v10+ to run.

Install the dependencies and devDependencies and start the server.

```bash
cd dillinger
npm i
node app
```

For production environments···

```bash
npm install --production
NODE_ENV=production node app
```

## Plugins

Dillinger is currently extended with the following plugins.<br>
Instructions on how to use them in your own application are linked below.

|Plugin |README |
| :----- | :------ |
| Dropbox | [plugins/dropbox/README.md](url) |
| GitHub | [plugins/github/README.md](url) |
| Google Drive | [plugins/googledrive/README.md](url) |
| OneDrive | [plugins/onedrive/README.md](url) |
| Medium | [plugins/medium/README.md](url) |
## Development

Want to contribute? Great!

Dillinger uses Gulp + Webpack for fast developing.<br>
Make a change in your file and instantaneously see your updates!

Open your favorite Terminal and run these commands.

First Tab:

```bash
node app
```

Sechond Tab:

```bash
gulp watch
```

(optioanl) Third:

```bash
karma test
```

#### Building for source

For production release:

```bash
gulp build --prod
```

## Docker

Dillinger is very easy to install and deploy in a Docker container.

By default, the Docker will expose port 8080, so change this within the<br>
Dockerfile if necessary. When ready, simply use the Dockerfile to<br>
build the image.

```bash
cd dillinger
docker build -t <youruser>/dillinger:${package.json.version} .
```
This will create the dillinger image and pull in the necessary dependencies.<br>
Be sure to swap out `${package.json.version}` with the actual<br>
version of Dillinger.

Once done, run the Docker image and map the port to whatever you wish on<br>
your host. In this example, we simply map port 8000 of the host to<br>
port 8080 of the Docker (or whatever port was exposed in the Dockerfile):

```bash
docker run -d -p 8000:8080 --restart=always --cap-add=SYS_ADMIN --name=dillinger <youruser>/dillinger:${package.json.version}
```

> Note: `--capt-add=SYS-ADMIN` is required for PDF rendering.