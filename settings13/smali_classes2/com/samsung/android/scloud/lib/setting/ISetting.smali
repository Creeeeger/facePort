.class interface abstract Lcom/samsung/android/scloud/lib/setting/ISetting;
.super Ljava/lang/Object;
.source "ISetting.java"


# virtual methods
.method public abstract close(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method public abstract getProfile(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "authority",
            "samsungCloudRPCProfile"
        }
    .end annotation
.end method

.method public abstract showSetting(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "authority"
        }
    .end annotation
.end method

.method public abstract start(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "authority",
            "iSamsungCloudRPCCallback"
        }
    .end annotation
.end method

.method public abstract switchOnOff(Ljava/lang/String;I)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "authority",
            "syncSwitch"
        }
    .end annotation
.end method
