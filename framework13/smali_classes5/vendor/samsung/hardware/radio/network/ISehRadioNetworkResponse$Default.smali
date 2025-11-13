.class public Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Default;
.super Ljava/lang/Object;
.source "ISehRadioNetworkResponse.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse;
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

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist emergencyControlResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist emergencySearchResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "respEmergencySearch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist getAvailableNetworksResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehOperatorInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "networkInfos"    # [Lvendor/samsung/hardware/radio/network/SehOperatorInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist getCnapResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "m"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist getCsgListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehCsgInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "csgInfos"    # [Lvendor/samsung/hardware/radio/network/SehCsgInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist getDisable2gResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "isDisable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 93
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNrIconTypeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "nrIconType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist getNrModeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "nrMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist getPreferredNetworkListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "infos"    # [Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist getRoamingNetworkInfoViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "networkInfo"    # [Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist getVendorSpecificConfigurationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "configurations"    # [Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist selectCsgManualResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist sendEncodedUssdResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist sendRequestRawResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[B)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist sendRequestStringsResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "data"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist setCurrentNetworkInfoViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public blacklist setDisable2gResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public blacklist setImsCallListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public blacklist setNrModeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public blacklist setPreferredNetworkListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public blacklist setRoamingNetworkInfoViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    return-void
.end method

.method public blacklist setScanResultViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public blacklist setVendorSpecificConfigurationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    return-void
.end method
