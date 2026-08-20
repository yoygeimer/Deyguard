#!/bin/bash
echo "🔍 Lanzando escaneo con scanner..."
./scanner.b64
echo "✅ Escaneo finalizado, iniciando servidor..."

exec java --add-modules=jdk.incubator.vector -XX:MaxRAMPercentage=95.0 \
    -Dterminal.jline=false -Dterminal.ansi=true -jar server.jar