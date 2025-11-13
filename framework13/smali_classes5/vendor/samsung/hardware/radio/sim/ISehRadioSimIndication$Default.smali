.class public Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication$Default;
.super Ljava/lang/Object;
.source "ISehRadioSimIndication.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/sim/ISehRadioSimIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 103
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist phonebookInitCompleteIndication(I)V
    .locals 0
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public blacklist releaseCompleteMessageIndication(ILvendor/samsung/hardware/radio/sim/SehSsReleaseComplete;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "result"    # Lvendor/samsung/hardware/radio/sim/SehSsReleaseComplete;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    return-void
.end method

.method public blacklist sapNotify(I[B)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    return-void
.end method

.method public blacklist simCountMismatchedIndication(II)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public blacklist simOnOffStateChangedNotify(II)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public blacklist simPhonebookReadyIndication(I)V
    .locals 0
    .param p1, "indicationType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist simSwapStateChangedIndication(II)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public blacklist stkCallControlResultIndication(ILjava/lang/String;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public blacklist stkSmsSendResultIndication(II)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    return-void
.end method
