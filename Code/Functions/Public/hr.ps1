Function hr {
    <#
    .SYNOPSIS
    Create a hr title in an HTML document.

    .EXAMPLE

    hr

    #Generates the following code:

    <hr>

    .EXAMPLE

    hr -Attributes @{"Attribute1"="val1";"Attribute2"="val2"}

    Generates the following code

    <hr Attribute1="val1" Attribute2="val2"  >

    .EXAMPLE

    $Style = "font-family: arial; text-align: center;"
    hr -Style $style

    Generates the following code

    <hr Style="font-family: arial; text-align: center;"  >

    .Notes
    Author: Stéphane van Gulick
    Version: 2.0.0
    History:
    2018.10.30;@ChristopheKumor;Updated to version 3.0
        2018.04.08;bateskevin; Updated to v2.0 
        2018.04.08;Stephanevg; Updated to version 1.0: Updated content block to support string & ScriptBlock
        2018.03.25;@Stephanevg; Added Styles, ID, CLASS attributes functionality
        2018.03.25;@Stephanevg; Creation
    .LINK
        https://github.com/Stephanevg/PSHTML
    #>
    [Cmdletbinding()]
    Param(

        [AllowEmptyString()]
        [AllowNull()]
        [String]$Class,

        [String]$Id,

        [AllowEmptyString()]
        [AllowNull()]
        [String]$Style,

        [Hashtable]$Attributes
    )

    Process {
        $tagname = "hr"

        Set-HtmlTag -TagName $tagname -Parameters $PSBoundParameters -TagType void
        
    }

}