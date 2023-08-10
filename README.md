# Good to know things

## How to install Haskell on MacOs/Linux: 
First, you'll need to have brew installed: https://brew.sh/

Follow the instructions on the website, and the instructions in the terminal, you'll need to paste this into your terminal tho: 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"  

After that, you'll need to enter those commands into your terminal:

Install GHCup by running the command:  brew install ghcup   
Use GHCup to install GHC, cabal-install, Stack, and haskell-language-server by running the command:   ghcup install

## How to install Haskell on Windows machines:

https://www.haskell.org/ghcup/

https://www.youtube.com/watch?v=bB4fmQiUYPw

(You'll need to paste this in your PowerShell)

Set-ExecutionPolicy Bypass -Scope Process -Force;[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; try { Invoke-Command -ScriptBlock ([ScriptBlock]::Create((Invoke-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -UseBasicParsing))) -ArgumentList $true } catch { Write-Error $_ }

## Hasznos linkek
https://people.inf.elte.hu/divip/

(Ezt sokat fogjátok használni valószínűleg):

http://lambda.inf.elte.hu/Index.xml

Itt pedig nem csak funkcionális programozással kapcsolatos jegyzetek találhatóak:

https://szabope.web.elte.hu/anyagok/BSc/1/funprog/

# How to use it and other things:

ghci test.hs 	— File futtatás

:r   				        — módosítások után reloadolni a file-t

````			    —pléldául: \`mod`

:q				    —kilépés

Sok sikert! :)
