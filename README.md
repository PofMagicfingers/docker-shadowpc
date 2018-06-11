# Image docker pour shadowpc

Permet l'utilisation du client Ubuntu sur n'importe quel système ayant Docker et X11 en théorie.

N'a pas l'air fonctionnel pour le moment. Le client natif renvoie l'erreur suivante :
```
ERROR: Failed to establish an IPC

******* terminating - showing backtrace *******
/opt/Shadow Beta/resources/app.asar.unpacked/native/linux/ClientSDL(+0x457e2)[0x56077b40d7e2]
/lib/x86_64-linux-gnu/libc.so.6(+0x43041)[0x7f89a8302041]
/lib/x86_64-linux-gnu/libc.so.6(+0x4313a)[0x7f89a830213a]
/lib/x86_64-linux-gnu/libc.so.6(__libc_start_main+0xee)[0x7f89a82e0b9e]
/opt/Shadow Beta/resources/app.asar.unpacked/native/linux/ClientSDL(+0x2a93a)[0x56077b3f293a]
************ that's all, folks ! ****************
```

## Installation

- Installer Docker
- `make`
- `make run`

Pour lancer un bash dans le container :
- `make bash`

## Features

- Enregistre correctement les paramètres et le login connecté 
