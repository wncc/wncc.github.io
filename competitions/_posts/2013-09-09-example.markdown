---
layout: competition
title: Competition example page
category: competitions
starttime: 2013-09-09 21:00:00
endtime: 2013-09-10 00:00:00
venue: NSL
judge: [Judge1,Judge2]
---


The content starts from here:
From the above YAML `layout`,`title` and `category` are must. Rest are optional.

In case of a single judge, specify it as `judge:[Judge1]`

##This is heading##
###This is also a heading###


This is a short code snippet `int i=0`

Following is an ordered list

1. Alpha
2. Beta
3. Gamma

Following is an unordered list

* Alpha
* Beta
* Gamma

This is a highlighted code with line numbers
{% highlight ruby linenos %}
def foo
  puts 'foo'
end
{% endhighlight %}

This is an embedded gist:
{% gist 8065556 pushit %}

Following is a link: [Link Example][] for the latest top stories.

[Link Example]: http://wncc-iitb.org/tshn
