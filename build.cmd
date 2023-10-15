:: Build
docker build --progress=plain -t cullen2205/lolbotserver:webtelegram .

:: Login dockerhub
docker login

:: Push
docker push cullen2205/lolbotserver:webtelegram

pause