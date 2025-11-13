.class public Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Default;
.super Ljava/lang/Object;
.source "ISehRadioMessagingResponse.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse;
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

    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCellBroadcastConfigResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "configs"    # Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    return-void
.end method

.method public blacklist getImsRegistrationStateResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "regState"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 269
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getStoredMsgCountFromSimResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehStoredMsgCount;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "storedMsgInfo"    # Lvendor/samsung/hardware/radio/messaging/SehStoredMsgCount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    return-void
.end method

.method public blacklist readSmsFromSimResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "simMsg"    # Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    return-void
.end method

.method public blacklist sendCdmaSmsExpectMoreResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "sms"    # Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    return-void
.end method

.method public blacklist sendCdmaSmsResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "sms"    # Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    return-void
.end method

.method public blacklist sendSMSExpectMoreResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "sms"    # Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public blacklist sendSmsResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "sms"    # Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist writeSmsToSimResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    return-void
.end method
