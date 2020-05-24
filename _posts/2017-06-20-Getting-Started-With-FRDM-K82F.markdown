---
title: "Getting Started With FRDM-K82F"
layout: post
date: 2017-06-20 22:44
image: /assets/images/markdown.jpg
headerImage: false
tag:
- ARM cortex M4
- FRDM-K82F
star: true
category: blog
author: himanshusahdev
description: Start off with FRDM board
---

## Basic formatting

Hey everyone! It’s very obvious that things, sometimes took time
even in its initialization state, same occurs to me with this board.
Today, by this writeup, I’ll show the steps involved in setting up the
board and a kickstarter module to get started easily with latest
updates now available.
FRDM-K82F is based on ARM Cortex-M Cores (M4) and Kinetics
Design Studio is used to upload the code into. Sign in to NXP.com to
download the respective [KDS][1] found under product section and
install the IDE.

<img class="image" src="{{ site.url }}/assets/images/frdm/kinetics_IDE.JPG" alt="Alt Text">
<figcaption class="caption">KDS IDE</figcaption>

[Building up SDK][2] being an easy task is full of fun and offers me to
choose according to my requirements. I am using windows so as my
Host OS and selected “All Toolchains” as Supported Toolchain(s)
and included “Free RTOS” in the configuration and built my SDK
Package.

<img class="image" src="{{ site.url }}/assets/images/frdm/SDK_site.JPG" alt="Alt Text">
<figcaption class="caption">Config Tools</figcaption>

For me I build “SDK_2.2_FRDM-K82F” as a latest one successfully.
The created Zip file downloaded is unzipped. SDK will contain some
demo apps. Now, this is the time I connect my FRDM board to my
PC via USB port available near reset button on my K82F board.


{% highlight html %}
<div class="side-by-side">
    <div class="toleft">
        <img class="image" src="{{ site.url }}/assets/images/frdm/FRDM-K82F.jpeg" alt="Alt Text">
        <figcaption class="caption">FRDM-K82F Board</figcaption>
    </div>

    <div class="toright">
        <p>To make the serial port as 'Opensda CDC Serial Port', I have
		downloaded a binary file and bootload it to the FRDM K82F Dev
		Board. Converting it to Opensda has its own advantages, we can
		easily upload the code to the FRDM board.
		I have downloaded the binary file OpenSDA V2.1 Bootloader
		from [HERE][3] at the bottom of the page.</p>
    </div>
</div>
{% endhighlight %}

STEPS TO BOOTLOAD THE BOARD TO OPENSDA:

{% highlight html %}
 Plug in the board by pressing the reset button.
 Drag and drop the binary file in the BOOTLOADER(H): disk
drive.
 Unplug the board.
{% endhighlight %}

Luckily I didn’t face much problem but the only thing where I
struck is the way to import the demo apps from its sdk build up as
there is no .wsd files generated in the latest versions of build up now.

So apart from the way of importing the buildup as shown on videos
present on nxp website, I do the following:

1. Open the new workspace in Kinetics Design Studio IDE.

<img class="image" src="{{ site.url }}/assets/images/frdm/workspace.JPG" alt="Alt Text">
<figcaption class="caption">Workspace</figcaption>

2. Go to File import and under General tab click ‘Existing
Project into Workspace’.

<img class="image" src="{{ site.url }}/assets/images/frdm/import.JPG" alt="Alt Text">
<figcaption class="caption">Configuration</figcaption>

3. Selecting the root directory from the SDK as SDKboards
frdmk82f demo_app and choose ‘hello_world’ and click
Finish.

<img class="image" src="{{ site.url }}/assets/images/frdm/import_settings.JPG" alt="Alt Text">
<figcaption class="caption">Import Project Setup</figcaption>

4. Under Project Explorer Tab, select the imported project and
click on the “Build Debug” (Hammer shape option).

5. After that from drop down Debug option, Go to debug
configurations. Select debug jlink file under GDB SEGGER J-
Link Debugging and click Debug (make sure to connect the
hardware). Accept the pop ups occurred in process.

<img class="image" src="{{ site.url }}/assets/images/frdm/debug.JPG" alt="Alt Text">
<figcaption class="caption">Debug Configuration</figcaption>

6. Now access the Serial Com port using Tera Term or Putty on
baud rate 115200.

<img class="image" src="{{ site.url }}/assets/images/frdm/Putty.JPG" alt="Alt Text">
<figcaption class="caption">Putty Configuration</figcaption>

7. Clicking on resume button on the IDE the Output can be seen
on putty. Voilla! , I run my first program “Hello World”, the
hardest program for a newbie.

<img class="image" src="{{ site.url }}/assets/images/frdm/Application.JPG" alt="Alt Text">
<figcaption class="caption">Application</figcaption>

<img class="image" src="{{ site.url }}/assets/images/frdm/putty_OP.JPG" alt="Alt Text">
<figcaption class="caption">Output</figcaption>
---


Here’s I have done with my First Program on FRDM K82F board.
I am currently trying to leverage the board to make some sort ofgood but invent new application owing to its capabilities including
Accelerometer and Touch Sensing Input et al. I’ll be back with my
full fledged new inventory application next time. Till then, Good
bye!

## Headings

There are six levels of headings. They correspond with the six levels of HTML headings. You've probably noticed them already in the page. Each level down uses one more hash character. But we are using just 4 of them.

# Headings can be small

## Headings can be small

### Headings can be small

#### Headings can be small

{% highlight raw %}
# Heading
## Heading
### Heading
#### Heading
{% endhighlight %}

---

## Lists

### Ordered list

1. Item 1
2. A second item
3. Number 3

{% highlight raw %}
1. Item 1
2. A second item
3. Number 3
{% endhighlight %}

### Unordered list

* An item
* Another item
* Yet another item
* And there's more...

{% highlight raw %}
* An item
* Another item
* Yet another item
* And there's more...
{% endhighlight %}

---

## Paragraph modifiers

### Quote

> Here is a quote. What this is should be self explanatory. Quotes are automatically indented when they are used.

{% highlight raw %}
> Here is a quote. What this is should be self explanatory.
{% endhighlight raw %}

---

## URLs

URLs can be made in a handful of ways:

* A named link to [Mark It Down][3].
* Another named link to [Mark It Down](http://markitdown.net/)
* Sometimes you just want a URL like <http://markitdown.net/>.

{% highlight raw %}
* A named link to [MarkItDown][3].
* Another named link to [MarkItDown](http://markitdown.net/)
* Sometimes you just want a URL like <http://markitdown.net/>.
{% endhighlight %}

---

## Horizontal rule

A horizontal rule is a line that goes across the middle of the page.
It's sometimes handy for breaking things up.

{% highlight raw %}
---
{% endhighlight %}

---

## Images

Markdown can also contain images. I'll need to add something here sometime.

{% highlight raw %}
![Markdowm Image][/image/url]
{% endhighlight %}

![Markdowm Image][6]

*Figure Caption*?

{% highlight raw %}
![Markdowm Image][/image/url]
<figcaption class="caption">Photo by John Doe</figcaption>
{% endhighlight %}

![Markdowm Image][6]
<figcaption class="caption">Photo by John Doe</figcaption>

*Bigger Images*?

{% highlight raw %}
![Markdowm Image][/image/url]{: class="bigger-image" }
{% endhighlight %}

![Markdowm Image][6]{: class="bigger-image" }

---

## Code

A HTML Example:

{% highlight html %}
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
    <h1>Just a test</h1>
</body>
</html>
{% endhighlight %}

A CSS Example:

{% highlight css %}
pre {
    padding: 10px;
    font-size: .8em;
    white-space: pre;
}

pre, table {
    width: 100%;
}

code, pre, tt {
    font-family: Monaco, Consolas, Inconsolata, monospace, sans-serif;
    background: rgba(0,0,0,.05);
}
{% endhighlight %}

A JS Example:

{% highlight js %}
// Sticky Header
$(window).scroll(function() {

    if ($(window).scrollTop() > 900 && !$("body").hasClass('show-menu')) {
        $('#hamburguer__open').fadeOut('fast');
    } else if (!$("body").hasClass('show-menu')) {
        $('#hamburguer__open').fadeIn('fast');
    }

});
{% endhighlight %}

<<<<<<< b119797668b2e9c350504970265592e7f6befe9f
<<<<<<< HEAD:_posts/2016-02-24-markdown-common-elements.markdown
[1]: http://daringfireball.net/projects/markdown/
[2]: http://www.fileformat.info/info/unicode/char/2163/index.htm
[3]: http://www.markitdown.net/
[4]: http://daringfireball.net/projects/markdown/basics
[5]: http://daringfireball.net/projects/markdown/syntax
[6]: http://kune.fr/wp-content/uploads/2013/10/ghost-blog.jpg
=======
=======
<<<<<<< 14f4f048aa1350903ae3c41616bfbeee77a3e75b:_posts/2017-06-20-Getting-Started-With-FRDM-K82F.markdown
>>>>>>> blog FRDM
[1]: https://www.nxp.com/security/login?TARGET=https%3A%2F%2Fwww.nxp.com%2Fwebapp%2Fsecure%2Flogin.SAMLSecuredController.sp%3Faction%3DforwardToDestination
[2]: https://mcuxpresso.nxp.com/en/welcome
[3]: https://www.segger.com/downloads/jlinkopensda
[4]: https://daringfireball.net/projects/markdown/syntax
[5]: https://kune.fr/wp-content/uploads/2013/10/ghost-blog.jpg
<<<<<<< b119797668b2e9c350504970265592e7f6befe9f
>>>>>>> 14f4f048aa1350903ae3c41616bfbeee77a3e75b:_posts/2017-06-20-Getting-Started-With-FRDM-K82F.markdown
=======
=======
[1]: http://daringfireball.net/projects/markdown/
[2]: http://www.fileformat.info/info/unicode/char/2163/index.htm
[3]: http://www.markitdown.net/
[4]: http://daringfireball.net/projects/markdown/basics
[5]: http://daringfireball.net/projects/markdown/syntax
[6]: http://kune.fr/wp-content/uploads/2013/10/ghost-blog.jpg
>>>>>>> initiate blog FRDM:_posts/2016-02-24-markdown-common-elements.markdown
>>>>>>> blog FRDM
