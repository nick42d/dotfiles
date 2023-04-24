#Nick's note - doesn't work !
import i3ipc
import subprocess

def get_mouse_output():
    return subprocess.check_output(['swaymsg', '-t', 'get_inputs']).decode()

def get_mouse_position():
    outputs = get_mouse_output().split('\n')
    for output in outputs:
        if 'pointer' in output:
            x, y = map(int, output.split('x')[1].split())
            return x,y

def get_current_screen():
    x, y = get_mouse_position()
    outputs = subprocess.check_output(['swaymsg', '-t', 'get_outputs']).decode().split('\n')
    for output in outputs:
        if 'rect' in output:
            name = output.split()[1]
            x1, y1, x2, y2 = map(int, output.split('[')[1].split(']')[0].split(','))
            if x >= x1 and x <= x2 and y >= y1 and y <= y2:
                return name

def create_workspace():
    current_screen = get_current_screen()
    connection = i3ipc.connect()
    connection.command(f'workspace {current_screen}+')

if __name__ == '__main__':
    create_workspace()
