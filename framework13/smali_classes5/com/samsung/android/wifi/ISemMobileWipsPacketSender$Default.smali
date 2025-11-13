.class public Lcom/samsung/android/wifi/ISemMobileWipsPacketSender$Default;
.super Ljava/lang/Object;
.source "ISemMobileWipsPacketSender.java"

# interfaces
.implements Lcom/samsung/android/wifi/ISemMobileWipsPacketSender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/ISemMobileWipsPacketSender;
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

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist pingTcp([B[BIII)Z
    .locals 1
    .param p1, "srcAddr"    # [B
    .param p2, "dstAddr"    # [B
    .param p3, "dstPort"    # I
    .param p4, "ttl"    # I
    .param p5, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sendArp(I[B[BLjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "timeoutMillis"    # I
    .param p2, "gateway"    # [B
    .param p3, "myAddr"    # [B
    .param p4, "myMac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sendArpToSniffing(I[B[BLjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "timeoutMillis"    # I
    .param p2, "gateway"    # [B
    .param p3, "myAddr"    # [B
    .param p4, "myMac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sendDhcp(I[BILjava/lang/String;)I
    .locals 1
    .param p1, "timeoutMillis"    # I
    .param p2, "myAddr"    # [B
    .param p3, "equalOption"    # I
    .param p4, "equalString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sendDns([J[B[B[BLjava/lang/String;Z)[B
    .locals 1
    .param p1, "timeoutMillis"    # [J
    .param p2, "srcAddr"    # [B
    .param p3, "dstAddr"    # [B
    .param p4, "dnsMessage"    # [B
    .param p5, "dstMac"    # Ljava/lang/String;
    .param p6, "isUDP"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sendDnsQueries([J[B[BLjava/lang/String;Ljava/util/List;I)Z
    .locals 1
    .param p1, "timeoutMillis"    # [J
    .param p2, "srcAddr"    # [B
    .param p3, "dstAddr"    # [B
    .param p4, "dstMac"    # Ljava/lang/String;
    .param p6, "tcpIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J[B[B",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    .local p5, "dnsMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sendIcmp(I[B[BLjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "timeoutMillis"    # I
    .param p2, "gateway"    # [B
    .param p3, "myAddr"    # [B
    .param p4, "dstMac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sendTcp(I[B[BLjava/lang/String;)Z
    .locals 1
    .param p1, "timeoutMillis"    # I
    .param p2, "gateway"    # [B
    .param p3, "myAddr"    # [B
    .param p4, "myMac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return v0
.end method
