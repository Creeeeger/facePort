.class public abstract Lcom/samsung/android/allshare/ScreenSharingDevice;
.super Lcom/samsung/android/allshare/Device;
.source "ScreenSharingDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingEventListener;,
        Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingActionResponseListner;
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/allshare/Device;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public abstract whitelist connectScreenSharingM2TV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract whitelist connectScreenSharingTV2M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public whitelist getDeviceDomain()Lcom/samsung/android/allshare/Device$DeviceDomain;
    .locals 1

    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;
    .locals 1

    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getID()Ljava/lang/String;
    .locals 1

    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getIPAddress()Ljava/lang/String;
    .locals 1

    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIPAdress()Ljava/lang/String;
    .locals 1

    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getIcon()Landroid/net/Uri;
    .locals 1

    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getModelName()Ljava/lang/String;
    .locals 1

    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract blacklist setEventListener(Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingEventListener;)Lcom/samsung/android/allshare/ERROR;
.end method

.method public abstract blacklist setResponseListener(Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingActionResponseListner;)V
.end method
