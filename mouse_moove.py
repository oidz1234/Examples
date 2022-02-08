import pyautogui
import time

def move_mouse():
    pyautogui.moveTo(260, 96, 3)
    pyautogui.moveTo(1333, 98, 3)
    pyautogui.moveTo(910, 491, 3)
    pyautogui.moveTo(1606, 867, 3)
    pyautogui.moveTo(295, 877, 3)
    pyautogui.moveTo(260, 96, 3)

while True:
    move_mouse()
    time.sleep(1)
