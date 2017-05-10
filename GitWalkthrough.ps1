#region startgit
    #icanhazgit?
    choco install git

    #ynochoco?
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
    # GOTO 2

    #srsly?
    https://git-scm.com/downloads
        #a kitten dies every time you do it this way
#endregion

#region git.config
    git config --list

    git config --global user.name ""
    git config --global user.email ""
    git config --global core.autocrlf true

#endregion

#region gitallthethings
    #Organize your local repos
    mkdir c:\Data\CodeDemos
    mkdir c:\Data\CodeDemos\RMS
    Set-Location C:\Data\CodeDemos\RMS

    #Make a nice new one
    mkdir gitdemo
    Set-Location ./gitdemo
    git init
    New-Item README.md
    code ./README.md

    git status

    git add .

    git commit -m "readmes gotta read"

    git status
#endregion

#region sharingiscaring
    git push
    #wut?
 #endregion   
      
#region psyke    
    # Off to Github to do stuff
    git remote add git@github.com:/ryandcoates/gitdemo origin
    git push --set-upstream origin
#endregion

#region startfromthetop
    #Clone an empty initialized repo
    git clone https://github.com/ryandcoates/gitdemo2
    Set-Location ./gitdemo2
    New-Item ./README.md
    code ./README.md

    git status

    git add .

    git commit -m "readin readin readin"

    git push

#endregion

#region masterandapprentice
    git branch rc-v2
    git checkout rc-v2
    
    code ./README.md
    git add .
    git commit -m "v2 is better"
    
    git checkout master
    git checkout rc-v2

#endregion


