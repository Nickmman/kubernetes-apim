@echo off
setlocal enabledelayedexpansion
cd advanced/%1
helm dependency update .
cd ..\..
helm package advanced/%1 -d docs/
helm repo index .\docs\ --url https://nickmman.github.io/kubernetes-apim