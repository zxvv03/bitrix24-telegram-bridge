# Переименование репозитория на GitHub

## Шаг 1: Переименуй репозиторий

1. Открой https://github.com/zxvv03/bitrix24-proxy
2. Перейди в **Settings** (вкладка справа)
3. Прокрути вниз до раздела **Repository name**
4. Измени название на: `bitrix24-telegram-bridge` (или другое имя)
5. Нажми **Rename**

## Шаг 2: Обнови remote (после переименования)

После переименования выполни:

```bash
git remote set-url origin https://github.com/zxvv03/bitrix24-telegram-bridge.git
```

## Шаг 3: Настрой Render

1. Зайди на https://render.com
2. Если проект уже подключен к Render:
   - Открой настройки проекта
   - Нажми **Manual Deploy** → **Deploy latest commit**
3. Если проект еще не подключен:
   - **New** → **Web Service**
   - Выбери репозиторий `bitrix24-telegram-bridge`
   - Render автоматически определит настройки из `render.yaml`
   - Добавь переменные окружения:
     - `TELEGRAM_BOT_TOKEN`
     - `TELEGRAM_ADMIN_CHAT_ID`
   - **Create Web Service**

## Готово!

После развертывания используй URL из Render в виджете на сайте.

