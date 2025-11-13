# Настройка GitHub и Render

## Шаг 1: Переименование репозитория на GitHub

1. Открой свой репозиторий на GitHub
2. Перейди в **Settings** → **General**
3. Прокрути вниз до **Repository name**
4. Переименуй репозиторий (например: `bitrix24-telegram-bridge`)
5. Нажми **Rename**

## Шаг 2: Подключение локального репозитория к GitHub

Выполни команды (замени `YOUR_USERNAME` и `REPO_NAME` на свои данные):

```bash
cd c:\WORKS\Cursor\Bitrix24_1\chat_bitrix_tg

# Добавь удаленный репозиторий
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git

# Или если репозиторий уже существует, обнови URL:
git remote set-url origin https://github.com/YOUR_USERNAME/REPO_NAME.git

# Загрузи файлы
git branch -M main
git push -u origin main
```

## Шаг 3: Настройка Render

1. Зайди на https://render.com
2. Нажми **New** → **Web Service**
3. Подключи GitHub аккаунт (если еще не подключен)
4. Выбери свой репозиторий
5. Настройки:
   - **Name**: `bitrix24-telegram-bridge` (или любое имя)
   - **Region**: выбери ближайший
   - **Branch**: `main`
   - **Root Directory**: оставь пустым
   - **Runtime**: `Node`
   - **Build Command**: `npm install`
   - **Start Command**: `npm start`
6. Нажми **Advanced** → **Add Environment Variable**
7. Добавь переменные:
   - `TELEGRAM_BOT_TOKEN` = твой токен бота
   - `TELEGRAM_ADMIN_CHAT_ID` = твой chat ID
   - `PORT` = `3000`
8. Нажми **Create Web Service**
9. Дождись развертывания (2-3 минуты)
10. Скопируй URL (например: `https://bitrix24-telegram-bridge.onrender.com`)

## Шаг 4: Обновление виджета на сайте

Используй URL из Render в настройках виджета:

```html
<script>
	window.BITRIX_TG_BRIDGE_URL = 'https://твой-проект.onrender.com';
</script>
<script src="https://твой-проект.onrender.com/widget.js"></script>
```

## Автоматическое обновление

После каждого `git push` Render автоматически переразвернет приложение.

