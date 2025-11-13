.class public Lcom/android/internal/telephony/ISemPhoneSubInfo$Default;
.super Ljava/lang/Object;
.source "ISemPhoneSubInfo.java"

# interfaces
.implements Lcom/android/internal/telephony/ISemPhoneSubInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISemPhoneSubInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist changeDRX(III)Z
    .locals 1
    .param p1, "drxLibraryType"    # I
    .param p2, "cycle"    # I
    .param p3, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist changeDRXForKodiak(II)Z
    .locals 1
    .param p1, "drxValue"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCurrentCycle(I)I
    .locals 1
    .param p1, "drxLibraryType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCurrentModeForKodiak()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataServiceState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataServiceStateUsingSubId(I)I
    .locals 1
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDefaultCycle(I)I
    .locals 1
    .param p1, "drxLibraryType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDefaultCycleForKodiak()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDrxMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSupportedCycles(I)[I
    .locals 1
    .param p1, "drxLibraryType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSupportedModesForKodiak()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUwbTimers()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasCall(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDrxMode(I)Z
    .locals 1
    .param p1, "drxMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setUwbTimers([I)Z
    .locals 1
    .param p1, "timer"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    return v0
.end method
