# Лабораторная работа №1: система контроля версий Git

**Лукьянова Юлия Владимировна, группа 221341, вариант 9, лабораторная №1**

## Задания варианта 9

### Средняя сложность

1. Задание №1 — установить Git и настроить имя и email.
2. Задание №9 — отправить изменения на GitHub.
3. Задание №6 — слить ветку `feature` с основной веткой.

### Повышенная сложность

1. Задание №9 — сформировать отчёт о коммитах с `git shortlog`.
2. Задание №2 — настроить SSH-ключ и подключить его к GitHub.

## Выполнение заданий средней сложности

### Задание №1. Настройка Git

Для репозитория настроены имя и email автора:

```console
$ git config user.name
Лукьянова Юлия Владимировна
$ git config user.email
89534171567yla@gmail.com
```

Файл [`.mailmap`](.mailmap) объединяет прежние варианты подписи автора из веб-коммитов GitHub под одним полным именем в отчёте `shortlog`.

### Задание №9. Публикация на GitHub

Репозиторий опубликован по адресу:

<https://github.com/vx8vy8bxzn-coder/lab1>

Для публикации всех веток и тегов используются команды:

```console
git push --all
git push --tags
```

### Задание №6. Слияние ветки `feature`

В ветке `feature` отдельным коммитом добавлен файл [`feature.txt`](feature.txt). Затем ветка слита в `main` с обязательным merge-коммитом:

```console
git switch feature
git add feature.txt
git commit -m "feat: add feature branch artifact"
git switch main
git merge --no-ff feature -m "feat: merge feature branch into main"
```

Фрагмент графа коммитов:

```text
*   0276a72 feat: merge feature branch into main
|\
| * b338aee feat: add feature branch artifact
|/
* 96f592a добавила описание последнего задания с shortlog
```

Ветка `feature` сохранена и опубликована на GitHub.

## Выполнение заданий повышенной сложности

### Задание №9. Отчёт `git shortlog`

Исполняемый скрипт [`shortlog.sh`](shortlog.sh) формирует отчёт по истории текущей ветки:

```bash
git shortlog -sn HEAD > commits_report.txt
```

Результат сохранён в файле [`commits_report.txt`](commits_report.txt).

### Задание №2. SSH-ключ и подключение к GitHub

Для аккаунта `vx8vy8bxzn-coder` настроен ключ ED25519. Отпечаток публичного ключа:

```text
SHA256:QzT2QyZ5TPTYUkM39THu79Jx3OqbML1kZwhtdqMgMtc
```

Удалённый репозиторий использует SSH-адрес:

```console
$ git remote -v
origin  git@github.com:vx8vy8bxzn-coder/lab1.git (fetch)
origin  git@github.com:vx8vy8bxzn-coder/lab1.git (push)
```

Проверка успешной аутентификации:

```console
$ ssh -T git@github.com
Hi vx8vy8bxzn-coder! You've successfully authenticated, but GitHub does not provide shell access.
```
