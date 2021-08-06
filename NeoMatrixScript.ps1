# version two of the matrix typer

#function that can be used to type text out on the screen as if it were from outside the matrix
Function Write-Matrix {
    param (
    #text to be typed
    [PARAMETER(Mandatory=$True,Position=0)]
    [string]$typedtext,
    #delay between characters typed
    [PARAMETER(Mandatory=$True,Position=1)]
    [int]$typedelay,
    #how long before moving on to the next line
    [PARAMETER(Mandatory=$False,Position=2)]
    [int]$wait
    )
    Clear-Host
    #converts the string into an array to facilitate iterating through it.
    $array = $typedtext.ToCharArray()
    #individually sends each character to the screen
    ForEach($char in $array){
    Write-Host -NoNewline $char
    Start-Sleep -Milliseconds $typedelay
    }
    Start-Sleep -Seconds $wait
    #is this necessary?
    #Write-Host `n
    #this may not be necessary
    Clear-Host  
    }

    #since I can't seem to find a way to change console colors in powershell here is a cmd way of doing it
    cmd /c color 0a

    #later I'll probably pull the following from a text document rather than enter it in manually as below
    Write-Matrix "Wake up, $env:USERNAME..." 35 5
    Write-Matrix "The Matrix has you..." 200 5
    Write-Matrix "Follow the white rabbit..." 35 5
    Write-Matrix "Knock, knock, $env:USERNAME." 35 5

    #I'm not sure how necessary this next line is. but it keeps the powershell prompt from reappearing
    #Read-Host
    start-sleep -Seconds 10
    cmd /c color 5f
    Exit
    Exit
    <#to try later
    [void] [System.Reflection.Assembly]::LoadWithPartialName("Microsoft.VisualBasic")
    [void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
 
    [Microsoft.VisualBasic.Interaction]::AppActivate("Some Window Title")
    [System.Windows.Forms.SendKeys]::SendWait("Some text~")
    #>
    


