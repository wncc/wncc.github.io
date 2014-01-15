---
layout: posts
title: Example Hack page
category: hacks
zip_url: https://github.com/sushant-hiray/tshn/zipball/master
issue_url: https://github.com/sushant-hiray/tshn/issues/new
repository_url: http://github.com/sushant-hiray/tshn
author: [Author1,Author2] 
hack_url: http://wncc-iitb.org/tshn
---

The content starts from here:
From the above YAML `layout`,`title` and `category` are must. Rest are optional.

In case of a single author, specify it as `author:[Author1]`

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
