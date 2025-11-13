.class public Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging$Default;
.super Ljava/lang/Object;
.source "ISehRadioMessaging.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/messaging/ISehRadioMessaging;
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

    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCellBroadcastConfig(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist getImsRegistrationState(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 139
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getStoredMsgCountFromSim(I)V
    .locals 0
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public blacklist readSmsFromSim(II)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist sendCdmaSms(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "sms"    # Landroid/hardware/radio/messaging/CdmaSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public blacklist sendCdmaSmsExpectMore(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "sms"    # Landroid/hardware/radio/messaging/CdmaSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    return-void
.end method

.method public blacklist sendSMSExpectMore(ILandroid/hardware/radio/messaging/GsmSmsMessage;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "message"    # Landroid/hardware/radio/messaging/GsmSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    return-void
.end method

.method public blacklist sendSms(ILandroid/hardware/radio/messaging/GsmSmsMessage;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "message"    # Landroid/hardware/radio/messaging/GsmSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    return-void
.end method

.method public blacklist setResponseFunctions(Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse;Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingIndication;)V
    .locals 0
    .param p1, "radioMessagingResponse"    # Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse;
    .param p2, "radioMessagingIndication"    # Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    return-void
.end method

.method public blacklist writeSmsToSim(ILvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;)V
    .locals 0
    .param p1, "serial"    # I
    .param p2, "arg"    # Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    return-void
.end method
