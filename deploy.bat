@ECHO OFF

IF [%1] == [] GOTO ShowHelp

ROBOCOPY app\code\community\ProxiBlue\ReCaptcha %1\app\code\community\ProxiBlue\ReCaptcha /MIR /XA:SH /XD .git /NP
XCOPY app\design\adminhtml\default\default\template\captcha %1\app\design\adminhtml\default\default\template\captcha /Q /Y
XCOPY app\design\frontend\base\default\layout\proxiblue_recaptcha.xml %1\app\design\frontend\base\default\layout\ /Q /Y
XCOPY app\design\frontend\base\default\template\captcha %1\app\design\frontend\main\default\template\captcha /Q /Y
XCOPY app\etc\modules\*.* %1\app\etc\modules\ /S /E /Y /Q
GOTO End

:ShowHelp
ECHO.
ECHO Usage: deploy.bat ^<wwwroot^>
ECHO.
ECHO ^<wwwroot^>  =  Root directory of Magento website
ECHO.

:End
