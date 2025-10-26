# 📱 GSM Communication System using PIC16F877A and SIM900A

This project demonstrates how to interface a **SIM900A GSM module** with a **PIC16F877A microcontroller** to perform mobile communication functions such as **sending an SMS**, **making a call**, and **ending a call** using **three push buttons**.  
The project uses **UART serial communication** and **AT commands** to control GSM operations.

---

## 📌 Features

- Send SMS to a predefined mobile number  
- Make a phone call using GSM network  
- End or reject a call via button press  
- UART communication between PIC and GSM module  
- Simple push button interface  
- Optional LED indicators for activity status  

---

## 🧰 Hardware Used

- PIC16F877A Microcontroller  
- SIM900A GSM Module  
- PIC Development Board  
- 3 Push Buttons  
- Breadboard & Jumper Wires  
- 12V DC Power Supply (for GSM module)  
- 5V DC Power Supply (for PIC board)

---

## 🔌 Pin Connections

| Component | PIC Pin | Description |
|------------|----------|-------------|
| GSM TX     | RC7 (RX) | UART Receive from GSM |
| GSM RX     | RC6 (TX) | UART Transmit to GSM |
| Button 1   | RD0 | Send SMS |
| Button 2   | RD1 | Make Call |
| Button 3   | RD2 | End Call |
| LED1 (optional) | RB0 | Indicates GSM activity |
| Power | +5V / GND | System Power |

---

## ⚙️ Working Principle

The **PIC16F877A microcontroller** communicates with the **SIM900A GSM module** through UART (serial communication).  
Each button triggers a specific GSM function using standard **AT commands**.

1. **System Initialization:**  
   When powered on, the PIC initializes the UART at 9600 baud and checks communication with the GSM module using the `AT` command.

2. **Button 1 – Send SMS:**  
   When the first button is pressed, the PIC sends the commands `AT+CMGF=1` (set SMS text mode) and `AT+CMGS="number"` to send a predefined message.

3. **Button 2 – Make Call:**  
   When the second button is pressed, the command `ATD<number>;` is sent to the GSM module to dial a call.

4. **Button 3 – End Call:**  
   When the third button is pressed, the command `ATH` is sent to terminate the ongoing call.

5. **Feedback and Indicators:**  
   Optional LEDs or serial messages provide feedback that an operation (SMS, Call, or Hang-up) has been triggered successfully.

---

## 🧠 Code Overview

- Initializes UART at **9600 baud** for GSM communication.  
- Monitors the state of the three buttons.  
- On button press:
  - **Button 1:** Sends AT commands to send an SMS (`AT+CMGF=1`, `AT+CMGS="number"`).  
  - **Button 2:** Initiates a phone call using (`ATD<number>;`).  
  - **Button 3:** Ends an ongoing call using (`ATH`).  
- Implements delays to ensure proper GSM response timing.  

---

## 📄 Sample Output (Serial Monitor or LCD)


---

## 🛠️ How to Use

1. Connect the GSM module and buttons as per the pin mapping.  
2. Insert an active SIM card into the GSM module.  
3. Flash the program to the PIC16F877A using **MPLAB** or **MikroC**.  
4. Power on the system (12V for GSM and 5V for PIC).  
5. Press:
   - **Button 1:** To send SMS  
   - **Button 2:** To make a call  
   - **Button 3:** To end or reject the call  

---

## 🧾 AT Commands Used

| Command | Description |
|----------|-------------|
| `AT` | Test GSM communication |
| `AT+CMGF=1` | Set GSM module to text mode |
| `AT+CMGS="number"` | Send SMS to specified number |
| `ATD<number>;` | Dial the given number |
| `ATH` | Hang up or end the call |

---

## 📁 Files Included

- `main.c` – Source code for PIC (MPLAB XC8 / MikroC)  
- `README.md` – Project overview and instructions  

---

## 💡 Applications

- Remote control via SMS or call  
- Home automation and alert systems  
- Industrial safety notification systems  
- Emergency communication units  

---

## 📸 Project Images

| Incoming Call | SMS Example |
|----------------|-------------|
| ![Incoming Call Example](https://github.com/user-attachments/assets/your-call-image) | ![SMS Example](https://github.com/user-attachments/assets/your-sms-image) |

