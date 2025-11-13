.class public Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Default;
.super Ljava/lang/Object;
.source "ISehRadioDataResponse.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse;
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

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 30
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 1

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setDataAllowedResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
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

.method public blacklist setMobileDataSettingResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
