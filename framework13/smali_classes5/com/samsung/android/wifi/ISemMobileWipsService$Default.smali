.class public Lcom/samsung/android/wifi/ISemMobileWipsService$Default;
.super Ljava/lang/Object;
.source "ISemMobileWipsService.java"

# interfaces
.implements Lcom/samsung/android/wifi/ISemMobileWipsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/ISemMobileWipsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist broadcastBcnEventAbort(Ljava/lang/String;I)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "abortReason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist broadcastBcnIntervalEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJ)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "bssid"    # Ljava/lang/String;
    .param p4, "channel"    # I
    .param p5, "beaconInterval"    # I
    .param p6, "timestamp"    # J
    .param p8, "systemtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist checkMWIPS(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "freq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onDnsResponses(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p2, "dstMac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    .local p1, "dnsResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist onScanResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemMobileWipsScanResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    .local p1, "scanResults":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/wifi/SemMobileWipsScanResult;>;"
    return-void
.end method

.method public blacklist registerCallback(Lcom/samsung/android/wifi/ISemMobileWipsFramework;)Z
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/wifi/ISemMobileWipsFramework;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerPacketSender(Lcom/samsung/android/wifi/ISemMobileWipsPacketSender;)Z
    .locals 1
    .param p1, "packetSender"    # Lcom/samsung/android/wifi/ISemMobileWipsPacketSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sendMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist setCurrentBss(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[B)Z
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "macAddress"    # Ljava/lang/String;
    .param p4, "frequency"    # I
    .param p5, "ies"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterCallback(Lcom/samsung/android/wifi/ISemMobileWipsFramework;)Z
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/wifi/ISemMobileWipsFramework;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterPacketSender(Lcom/samsung/android/wifi/ISemMobileWipsPacketSender;)Z
    .locals 1
    .param p1, "packetSender"    # Lcom/samsung/android/wifi/ISemMobileWipsPacketSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateWifiChipInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method
