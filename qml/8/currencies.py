import requests

base = input("Валюта ИЗ (например, USD): ").upper()
target = input("Валюта В (например, RUB): ").upper()

try:
    amount = float(input("Сумма: "))
except ValueError:
    print("Ошибка: сумма должна быть числом.")
    exit()

try:
    response = requests.get(f"https://open.er-api.com/v6/latest/{base}", timeout=10)
    data = response.json()
except Exception as e:
    print("Ошибка запроса:", e)
    exit()

if data.get("result") == "success" and target in data.get("rates", {}):
    rate = data["rates"][target]
    print(f"{amount} {base} = {amount * rate:.2f} {target}")
else:
    print("Ошибка: не удалось получить курс.")