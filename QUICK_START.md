# Быстрый старт

## 1. Подключение к GitHub

**Вариант А: Через скрипт (проще)**

```powershell
.\setup-github.ps1 YOUR_USERNAME REPO_NAME
```

Например:
```powershell
.\setup-github.ps1 alex bitrix24-telegram-bridge
```

**Вариант Б: Вручную**

```bash
# Замени YOUR_USERNAME и REPO_NAME на свои данные
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git
git branch -M main
git push -u origin main
```

## 2. Настройка Render

1. Зайди на https://render.com
2. **New** → **Web Service**
3. Выбери свой репозиторий из GitHub
4. Настройки:
   - **Build Command**: `npm install`
   - **Start Command**: `npm start`
5. Добавь переменные окружения:
   - `TELEGRAM_BOT_TOKEN`
   - `TELEGRAM_ADMIN_CHAT_ID`
   - `PORT` = `3000`
6. **Create Web Service**
7. Дождись развертывания
8. Скопируй URL (например: `https://your-app.onrender.com`)

## 3. Установка виджета на сайт

Добавь на страницу с виджетом открытой линии:

```html
<script>
	window.BITRIX_TG_BRIDGE_URL = 'https://your-app.onrender.com';
</script>
<script src="https://your-app.onrender.com/widget.js"></script>
```

## Готово! 🎉

Теперь сообщения из открытой линии будут пересылаться в Telegram.

