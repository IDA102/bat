::Установка шлюза метрики для одновременного подключения локальной сети и модема

netsh interface ipv4 set interface "Local" metric=200
netsh interface ipv4 set interface "Huawey" metric=20

@pause