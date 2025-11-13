.class public Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse$Default;
.super Ljava/lang/Object;
.source "ISehRadioSimResponse.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/sim/ISehRadioSimResponse;
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
.method public blacklist accessPhonebookEntryResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "SimPhonebookAccessResp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist changeIccPersonalizationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist getAtrResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "atr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist getIccCardStatusResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehCardStatus;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "cardStatus"    # Lvendor/samsung/hardware/radio/sim/SehCardStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPhonebookEntryResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "simPhonebookResponseInfo"    # Lvendor/samsung/hardware/radio/sim/SehSimPhonebookResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist getPhonebookStorageInfoResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehPhonebookInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "phonebookInfo"    # Lvendor/samsung/hardware/radio/sim/SehPhonebookInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist getSimLockInfoResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/sim/SehSimLockInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "simLockInfo"    # Lvendor/samsung/hardware/radio/sim/SehSimLockInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist getUsimPhonebookCapabilityResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "phonebookCapability"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist setSimInitEventResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist setSimOnOffResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist supplyIccPersonalizationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist supplyNetworkDepersonalizationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "remainingRetries"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
