var moveSpeed = 4; // Using a different name

if keyboard_check(ord("W")) {
    y -= moveSpeed;
}
if keyboard_check(ord("S")) {
    y += moveSpeed;
}
if keyboard_check(ord("A")) {
    x -= moveSpeed;
}
if keyboard_check(ord("D")) {
    x += moveSpeed;
}
