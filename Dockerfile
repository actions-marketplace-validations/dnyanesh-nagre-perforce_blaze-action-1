# Container image that runs your code
#FROM blazerunner/blazemeter:1.2
FROM dnyaneshwarnagre/blazemeter:1.4.11

CMD pwsh /Blazemeter-run.ps1 -apikey $env:INPUT_APIKEY -apisecret $env:INPUT_APISECRET -testidinput $env:INPUT_TESTID -showtaillog 'true' -inputallfiles '/github/workspace/Supporting Files' -workspaceid $env:INPUT_WORKSPACEID -datamodelid $env:INPUT_DATAMODELID -modeldata $env:INPUT_MODELDATA -Uploadfilechk 'true' -createtest $env:INPUT_CREATETEST -inputstartfile $env:INPUT_INPUTSTARTFILE -testname $env:INPUT_TESTNAME -projectid $env:INPUT_PROJECTID -ContinuePipeline $env:INPUT_CONTINUEPIPELINE -jmeterproperties $env:INPUT_JMETERPROPERTIES -env_variable $env:INPUT_ENV_VARIABLE -reportname $env.INPUT_REPORTNAME -note $env.INPUT_NOTE -iterations_config $env.INPUT_ITERATIONS_CONFIG -iterations $env.INPUT_ITERATIONS
#CMD pwsh /Blazemeter-run.ps1 -apikey $env:INPUT_APIKEY -apisecret $env:INPUT_APISECRET -testidinput $env:INPUT_TESTID -testname $env:INPUT_TESTNAME -projectid $env:INPUT_PROJECTID -inputstartfile $env:INPUT_INPUTSTARTFILE -createtest $env:INPUT_CREATETEST -inputallfiles $env.INPUT_INPUTALLFILES -totalusers $env.INPUT_TOTALUSERS -duration $env.INPUT_DURATION -rampup $env.INPUT_RAMPUP -uploadfilechk $env.INPUT_UPLOADFILECHK -ContinuePipeline $env:INPUT_CONTINUEPIPELINE -multitests $env.INPUT_MULTITESTS -functionaltest $env.INPUT_FUNCTIONALTEST -modeldata $env:INPUT_MODELDATA -env_variable $env:INPUT_ENV_VARIABLE -showtaillog $env.INPUT_SHOWTAILLOG -jmeterproperties $env:INPUT_JMETERPROPERTIES -reportname $env.INPUT_REPORTNAME -note $env.INPUT_NOTE -iterations_config $env.INPUT_ITERATIONS_CONFIG -iterations $env.INPUT_ITERATIONS
