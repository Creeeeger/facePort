.class public Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication$Default;
.super Ljava/lang/Object;
.source "ISehRadioDataIndication.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/data/ISehRadioDataIndication;
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

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 42
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist needApnProfileIndication(Ljava/lang/String;)Lvendor/samsung/hardware/radio/data/SehApnProfile;
    .locals 1
    .param p1, "select"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist needPacketUsage(Ljava/lang/String;)Lvendor/samsung/hardware/radio/data/SehPacketUsage;
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist needSettingValueIndication(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "table"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist rrcStateChanged(ILvendor/samsung/hardware/radio/data/SehRrcStateInfo;)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "state"    # Lvendor/samsung/hardware/radio/data/SehRrcStateInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist timerStatusChangedInd(I[I)V
    .locals 0
    .param p1, "indicationType"    # I
    .param p2, "eventNoti"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
