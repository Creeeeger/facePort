.class public Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingIndication$Default;
.super Ljava/lang/Object;
.source "ISehRadioMessagingIndication.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingIndication;
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

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist deviceReadyNoti(I)V
    .locals 0
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stkSmsSendResultIndication(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method
