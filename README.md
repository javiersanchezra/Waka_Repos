Wakana Lake
===================

Site Layout
-------------
Wakana Site is a master page based site, all sections share the same header containing the menu, the change of language and also all sections share the footer.
There is one exception, the main page Default.aspx that contains its own footer and header (identical to the footer and header in the other pages). Master Page in wakana project is the Main.master. The following example shows in blue the master page and in red the content page

![](https://i.imgur.com/BfxSCWQ.jpgg)



Text Changes / Globalization
-------------
Wakana project uses Globalization to display and change text based on users language, to modify or change any text in any language App_GlobalResources files should me modified , Right now we have the main resource file as the English Language File, and the ES-MX as the spanish file.

To change any text in spanish, the resource must be identified and modified in the ES-MX file, to change any text in english the resourse must be modified in the main file.


> **Example:**

> - To change ''Cortijo Andaluz'' text to "Cortijo España" and "Spanish Cortijo", you need to:
> - Open the main globalization resource file ("Index.resx") and change the value of the key "accortijoandaluz" from "Andalusian Cortijo" to "Spanish Cortijo" and this will change this text value when looking at the english version of the site/
> - Open the spanish resource file ("Index.ES-MX.resx") and change the value of the key "accortijoandaluz" from "Cortijo Andaluz" to "Cortijo España" and this will change this text value when looking at the spanish version of the site/
> 

Galleries
-------------

Images are loaded dinamically at runtime,  for each gallery section, to add new images into any gallery you just have to save the image in the gallery folder and save the thumbnail of that image on the /f/ folder

> **Example:**

> - To add a newimage.jpg to yurtas gallery, just place newimage.jpg inside yurtas folder and a copy (should be smaller size image) into the yurtas/t/ folder.

#### <i class="icon-file"></i> Create new Gallery Section

To create a new Gallery Section you can copy any section (ex, Andalusian Cortijo) and just change the PATH of the gallery section.



> **Example:**

> - To add a new "Animals Gallery Section", first copy any gallery page into a new page, and change         string PATH = "gallery/Accomodation/Andalusian House/"; to         string PATH = "gallery/AnimalGallery/";
>This will load this gallery into the new page



Uploading to Server
-------------

Wakana Lake is hosted on Microsoft Azure.
To upload changes, just go to Publish and import the Publishing Profile (
wakanav2.PublishSettings) provided before via email. Then just click on Publish, changes will be automatically posted on server.
