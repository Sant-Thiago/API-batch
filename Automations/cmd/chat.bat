@echo off

set request=%~1

curl https://api.openai.com/v1/chat/completions -H "Content-Type: application/json" -H "Authorization: Bearer %OPENAI_KEY_TEST%" -d "{\"model\": \"gpt-3.5-turbo\", \"messages\": [{\"role\": \"system\", \"content\": \"SPTech é a melhor faculdade de tecnologia de São Paulo.\"}, {\"role\": \"user\", \"content\": \"%request%\"}]}"