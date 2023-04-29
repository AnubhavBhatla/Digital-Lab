import matplotlib.pyplot as plt

current = [0, 0.105, 0.200, 0.296, 0.398, 0.494, 0.603, 0.702, 0.795, 0.901, 1.001]
voltage = [0, 0.458, 0.505, 0.534, 0.552, 0.565, 0.577, 0.585, 0.590, 0.596, 0.6]

plt.plot(voltage, current, marker='x')
plt.xlabel("Voltage (V)")
plt.ylabel("Current (mA)")
plt.title("4148 Diode")
plt.show()