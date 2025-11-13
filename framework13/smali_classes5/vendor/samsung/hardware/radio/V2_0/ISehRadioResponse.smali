.class public interface abstract Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;
.super Ljava/lang/Object;
.source "ISehRadioResponse.java"

# interfaces
.implements Landroid/internal/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Stub;,
        Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist kInterfaceName:Ljava/lang/String; = "vendor.samsung.hardware.radio@2.0::ISehRadioResponse"


# direct methods
.method public static blacklist asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;
    .locals 7
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .line 16
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 17
    return-object v0

    .line 20
    :cond_0
    nop

    .line 21
    const-string/jumbo v1, "vendor.samsung.hardware.radio@2.0::ISehRadioResponse"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    .line 23
    .local v2, "iface":Landroid/os/IHwInterface;
    if-eqz v2, :cond_1

    instance-of v3, v2, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;

    if-eqz v3, :cond_1

    .line 24
    move-object v0, v2

    check-cast v0, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;

    return-object v0

    .line 27
    :cond_1
    new-instance v3, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Proxy;

    invoke-direct {v3, p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 30
    .local v3, "proxy":Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;
    :try_start_0
    invoke-interface {v3}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 31
    .local v5, "descriptor":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_2

    .line 32
    return-object v3

    .line 34
    .end local v5    # "descriptor":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 36
    :cond_3
    goto :goto_1

    .line 35
    :catch_0
    move-exception v1

    .line 38
    :goto_1
    return-object v0
.end method

.method public static blacklist castFrom(Landroid/os/IHwInterface;)Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;
    .locals 1
    .param p0, "iface"    # Landroid/os/IHwInterface;

    .line 45
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static blacklist getService()Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    const-string v0, "default"

    invoke-static {v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;->getService(Ljava/lang/String;)Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getService(Ljava/lang/String;)Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.0::ISehRadioResponse"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getService(Ljava/lang/String;Z)Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const-string/jumbo v0, "vendor.samsung.hardware.radio@2.0::ISehRadioResponse"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getService(Z)Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;
    .locals 1
    .param p0, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    const-string v0, "default"

    invoke-static {v0, p0}, Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;->getService(Ljava/lang/String;Z)Lvendor/samsung/hardware/radio/V2_0/ISehRadioResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract blacklist accessPhonebookEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract blacklist changeIccPersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist emergencyControlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist emergencySearchResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getAtrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCellBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCnapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCsgListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehCall;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDebugInfo()Landroid/internal/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getDisable2gResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getPhonebookEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getPhonebookStorageInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getPreferredNetworkListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSimLockInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getStoredMsgCountFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getUsimPhonebookCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist readSmsFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist selectCsgManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendCdmaSmsExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendEncodedUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendRequestStringsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setDisable2gResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setImsCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setMobileDataSettingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setPreferredNetworkListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setSimInitEventResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setSimOnOffResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist supplyIccPersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
