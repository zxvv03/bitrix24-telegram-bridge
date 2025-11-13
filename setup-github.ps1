# Скрипт для подключения к GitHub
# Использование: .\setup-github.ps1 YOUR_USERNAME REPO_NAME

param(
    [Parameter(Mandatory=$true)]
    [string]$Username,
    
    [Parameter(Mandatory=$true)]
    [string]$RepoName
)

$repoUrl = "https://github.com/$Username/$RepoName.git"

Write-Host "Подключение к репозиторию: $repoUrl" -ForegroundColor Green

# Проверяем, есть ли уже remote
$existingRemote = git remote get-url origin 2>$null

if ($existingRemote) {
    Write-Host "Обновление существующего remote..." -ForegroundColor Yellow
    git remote set-url origin $repoUrl
} else {
    Write-Host "Добавление нового remote..." -ForegroundColor Yellow
    git remote add origin $repoUrl
}

# Переименовываем ветку в main
Write-Host "Переименование ветки в main..." -ForegroundColor Yellow
git branch -M main

# Загружаем файлы
Write-Host "Загрузка файлов на GitHub..." -ForegroundColor Yellow
git push -u origin main

Write-Host "Готово! Репозиторий подключен и файлы загружены." -ForegroundColor Green
Write-Host "Теперь настрой Render: https://render.com" -ForegroundColor Cyan

