Selector	Example	Example description
.class	 .intro	Selects all elements with class=”intro”
#id	 #firstname	Selects the element with id=”firstname”
*	*	Selects all elements
element	p	Selects all p elements
element,element	div,p	Selects all elements and all elements
element element	 div p	Selects all elements inside elements
element>element	div > p	Selects all elements where the parent is a element
element+element	div + p	Selects all elements that are placed immediately after elements
[attribute]	[target]	Selects all elements with a target attribute
[attribute=value]	[target=_blank]	Selects all elements with target=”_blank”
[attribute~=value]	[title~=flower]	Selects all elements with a title attribute containing the word “flower”
[attribute|=language]	[lang|=en]	Selects all elements with a lang attribute value starting with “en”
:link	a:link	Selects all unvisited links
:visited	a:visited	 Selects all visited links
:active	a:active	 Selects the active link
:hover	a:hover	Selects links on mouseover
:focus	input:focus	Selects the input element which has focus
:first-letter	p:first-letter	Selects the first letter of every element
:first-line	p:first-line	Selects the first line of every element
:first-child	p:first-child	Selects every elements that is the first child of its parent
:before	p:before	Insert content before every element
:after	p:after	 Insert content after every element
:lang(language)	p:lang(it)	 Selects every element with a lang attribute value starting with “it”
element1~element2	p~ul	 Selects every ul element that are preceded by a p element
[attribute^=value]	a[src^=”https”]	Selects every element whose src attribute value begins with “https”
[attribute$=value]	a[src$=”.pdf”]	 Selects every element whose src attribute value ends with “.pdf”
[attribute*=value]	a[src*=”w3schools”]	 Selects every element whose src attribute value contains the substring “w3schools”
:first-of-type	p:first-of-type	Selects every p element that is the first p element of its parent
:last-of-type	p:last-of-type	 Selects every p element that is the last p element of its parent
:only-of-type	p:only-of-type	Selects every p element that is the only p element of its parent
:only-child	 p:only-child	Selects every p element that is the only child of its parent
:nth-child(n)	 p:nth-child(2)	Selects every p element that is the second child of its parent
:nth-last-child(n)	 p:nth-last-child(2)	Selects every p element that is the second child of its parent, counting from the last child
:nth-of-type(n)	p:nth-of-type(2)	Selects every p element that is the second p element of its parent
:nth-last-of-type(n)	p:nth-last-oftype(2)	Selects every p element that is the second p element of its parent, counting from the last child
:last-child	p:last-child	Selects every p element that is the last child of its parent
:root	 :root	Selects the document’s root element
:empty	p:empty	Selects every p element that has no children (including text nodes)
