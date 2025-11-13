.class public Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;
.super Ljava/lang/Object;
.source "SamsungCloudRPCSetting.java"


# static fields
.field public static SYNC:Ljava/lang/String; = "SYNC"


# instance fields
.field private iSetting:Lcom/samsung/android/scloud/lib/setting/ISetting;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "samsungCloudRPCStatus"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-interface {p2}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;->getServiceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SYNC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;

    const-string v1, "[scsetting][1.0.4.0]"

    invoke-direct {v0, p1, v1, p2}, Lcom/samsung/android/scloud/lib/setting/SyncSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;)V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->iSetting:Lcom/samsung/android/scloud/lib/setting/ISetting;

    :cond_0
    return-void
.end method


# virtual methods
.method public close(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 129
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->iSetting:Lcom/samsung/android/scloud/lib/setting/ISetting;

    invoke-interface {p0, p1}, Lcom/samsung/android/scloud/lib/setting/ISetting;->close(Landroid/content/Context;)V

    return-void
.end method

.method public getProfile(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;)Landroid/os/Bundle;
    .locals 0
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

    .line 50
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->iSetting:Lcom/samsung/android/scloud/lib/setting/ISetting;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/scloud/lib/setting/ISetting;->getProfile(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public showSetting(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "authority"
        }
    .end annotation

    .line 120
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->iSetting:Lcom/samsung/android/scloud/lib/setting/ISetting;

    invoke-interface {p0, p1}, Lcom/samsung/android/scloud/lib/setting/ISetting;->showSetting(Ljava/lang/String;)V

    return-void
.end method

.method public start(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "authority",
            "samsungCloudRPCCallback"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->iSetting:Lcom/samsung/android/scloud/lib/setting/ISetting;

    new-instance v1, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting$1;-><init>(Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/scloud/lib/setting/ISetting;->start(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;)V

    return-void
.end method

.method public switchOnOff(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "authority",
            "onOff"
        }
    .end annotation

    .line 111
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSetting;->iSetting:Lcom/samsung/android/scloud/lib/setting/ISetting;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/scloud/lib/setting/ISetting;->switchOnOff(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
