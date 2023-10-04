//
// enableHDR.c - Pauses, then simulates the shortcut to
// enable HDR in Windows 10 and 11 - Win + Alt + B
// 
//
// Originally written by Ted Burke 
// last updated 17-4-2012 - keystroke.c
//
// To compile with MinGW:
//
//      gcc -o keystroke.exe keystroke.c
//
// To run the program:
//
//      keystroke.exe
//
 
// Because the SendInput function is only supported in
// Windows 2000 and later, WINVER needs to be set as
// follows so that SendInput gets defined when windows.h
// is included below.
// #define WINVER 0x0500 - orig for Windows 2000
// set to minimum WINVER to Windows 10
#define WINVER 0x0A00
#include <windows.h>
 
int main()
{
    // This structure will be used to create the keyboard
    // input event.
    INPUT ip;
 
    // Pause for 5 seconds.
    // Sleep(5000);
 
    // Set up a generic keyboard event.
    ip.type = INPUT_KEYBOARD;
    ip.ki.wScan = 0; // hardware scan code for key
    ip.ki.time = 0;
    ip.ki.dwExtraInfo = 0;
 
    // Press the "WIN" key
    ip.ki.wVk = 0x5B; // virtual-key code for the "WIN" key
    ip.ki.dwFlags = 0; // 0 for key press
    SendInput(1, &ip, sizeof(INPUT));
	
    // Press the "ALT" key
    ip.ki.wVk = 0x12; // virtual-key code for the "ALT" key
    ip.ki.dwFlags = 0; // 0 for key press
    SendInput(1, &ip, sizeof(INPUT));
	
    // Press the "B" key
    ip.ki.wVk = 0x42; // virtual-key code for the "B" key
    ip.ki.dwFlags = 0; // 0 for key press
    SendInput(1, &ip, sizeof(INPUT));
 
    // Release the "WIN" key
    ip.ki.wVk = 0x5B;
    ip.ki.dwFlags = KEYEVENTF_KEYUP; // KEYEVENTF_KEYUP for key release
    SendInput(1, &ip, sizeof(INPUT));
	
    // Release the "ALT" key
    ip.ki.wVk = 0x12;
    ip.ki.dwFlags = KEYEVENTF_KEYUP; // KEYEVENTF_KEYUP for key release
    SendInput(1, &ip, sizeof(INPUT));
	
    // Release the "B" key
    ip.ki.wVk = 0x42;
    ip.ki.dwFlags = KEYEVENTF_KEYUP; // KEYEVENTF_KEYUP for key release
    SendInput(1, &ip, sizeof(INPUT));
 
    // Exit normally
    return 0;
}