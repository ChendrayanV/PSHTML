Function img {
    <#
        .SYNOPSIS
        Generates a html img tag.

        .DESCRIPTION

        The <img> tag defines an image in an HTML page.

        The <img> tag has two required attributes: src and alt.

        .PARAMETER SRC

        Defines the source location of the image

        .PARAMETER ALT

        Alternative display when the image cannot be displayed.

        .PARAMETER Class
        Allows to specify one (or more) class(es) to assign the img element.
        More then one class can be assigned by seperating them with a white space.

        .PARAMETER Id
        Allows to specify an id to assign the img element.

        .PARAMETER Style
        Allows to specify in line CSS style to assign the img element.

        .PARAMETER Content
        Allows to add child element(s) inside the current opening and closing img tag(s).


        .EXAMPLE


        .NOTES
        Current version 3.1
        History:
        2018.10.30;@ChristopheKumor;Updated to version 3.0
            2018.10.10;Stephanevg; Updated code to version 2.0
            2018.05.07;Stephanevg; Updated code to version 1.0
            2018.04.01;Stephanevg;Creation.
        .LINK
            https://github.com/Stephanevg/PSHTML
    #>

    Param(

        [Parameter(Mandatory = $false)]
        [String]
        $src = "",

        [Parameter(Mandatory = $false)]
        [string]
        $alt = "",

        [Parameter(Mandatory = $false)]
        [string]
        $height,

        [Parameter(Mandatory = $false)]
        [string]
        $width,

        [String]$Class,

        [String]$Id,

        [String]$Style,

        [Hashtable]$Attributes
    )


    $tagname = "img"

    Set-HtmlTag -TagName $tagname -Parameters $PSBoundParameters -TagType 'void'

}
