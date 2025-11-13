.class public Landroid/ktuca/IKtUcaIF$Default;
.super Ljava/lang/Object;
.source "IKtUcaIF.java"

# interfaces
.implements Landroid/ktuca/IKtUcaIF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ktuca/IKtUcaIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist KUCA_CHInit(B[B[I)J
    .locals 2
    .param p1, "ucatag"    # B
    .param p2, "channel"    # [B
    .param p3, "channelLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist KUCA_Close([BB)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "channel"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist KUCA_CloseT([BB)J
    .locals 2
    .param p1, "appId"    # [B
    .param p2, "channel"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist KUCA_KUH_Establish(B)J
    .locals 2
    .param p1, "ucatag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist KUCA_KUH_Release(B)J
    .locals 2
    .param p1, "ucatag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist KUCA_KUH_Transmit(B[BI[B[I)J
    .locals 2
    .param p1, "ucatag"    # B
    .param p2, "pbSendBuffer"    # [B
    .param p3, "cbSendLength"    # I
    .param p4, "pbRecvBuffer"    # [B
    .param p5, "pcbRecvLength"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist KUCA_Open([B[B[I)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "channel"    # [B
    .param p3, "channelLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist KUCA_OpenT([B[B[I)J
    .locals 2
    .param p1, "appId"    # [B
    .param p2, "channel"    # [B
    .param p3, "channelLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist KUCA_Transmit([B[BI[B[I)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "input"    # [B
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist KUCA_UCAVersion([B[B[I)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist KUCA_getHandle([B[B[B[B[I)J
    .locals 2
    .param p1, "callerId"    # [B
    .param p2, "preKey"    # [B
    .param p3, "appId"    # [B
    .param p4, "handle"    # [B
    .param p5, "handleLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist KUCA_getICCID([B[B[II[B)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist KUCA_getIMSI([B[B[II[B)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist KUCA_getMDN([B[B[II[B)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist KUCA_getMODEL([B[B[II[B)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist KUCA_getMSISDN([B[B[II[B)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist KUCA_getPUID([B[B[II[B)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist KUCA_getPinStatus([BI[B[I)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "pinId"    # I
    .param p3, "output"    # [B
    .param p4, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist KUCA_getSIMInfo([B[B[I)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist KUCA_getSimStatus([B[B)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist KUCA_printCHInfo(B)J
    .locals 2
    .param p1, "ucatag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist KUCA_usimAUTH([B[B[B[B[I)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "rand"    # [B
    .param p3, "autn"    # [B
    .param p4, "output"    # [B
    .param p5, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public greylist KUCA_verifyPin([BILjava/lang/String;[B[I)J
    .locals 2
    .param p1, "handle"    # [B
    .param p2, "pinId"    # I
    .param p3, "pinCode"    # Ljava/lang/String;
    .param p4, "output"    # [B
    .param p5, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getResource()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public greylist releaseResource()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return v0
.end method
