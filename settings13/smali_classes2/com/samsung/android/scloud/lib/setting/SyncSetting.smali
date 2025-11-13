.class Lcom/samsung/android/scloud/lib/setting/SyncSetting;
.super Ljava/lang/Object;
.source "SyncSetting.java"

# interfaces
.implements Lcom/samsung/android/scloud/lib/setting/ISetting;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private ACTION_NAME:Ljava/lang/String;

.field private CLASS_NAME:Ljava/lang/String;

.field private PACKAGE_NAME:Ljava/lang/String;

.field private iSamsungCloudRPC:Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;

.field private mConnection:Landroid/content/ServiceConnection;

.field private samsungCloudRPCStatus:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "tag",
            "samsungCloudRPCStatus"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.samsung.android.scloud.RPC_SYNC_SETTING"

    .line 19
    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->ACTION_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.scloud"

    .line 20
    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "com.samsung.android.scloud.app.service.RPCSyncService"

    .line 21
    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->CLASS_NAME:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/samsung/android/scloud/lib/setting/SyncSetting$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/scloud/lib/setting/SyncSetting$1;-><init>(Lcom/samsung/android/scloud/lib/setting/SyncSetting;)V

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->mConnection:Landroid/content/ServiceConnection;

    .line 63
    sput-object p2, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->TAG:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->samsungCloudRPCStatus:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;

    .line 66
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->ACTION_NAME:Ljava/lang/String;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->PACKAGE_NAME:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->mConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 69
    sget-object p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->TAG:Ljava/lang/String;

    const-string p1, "binding success"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 71
    invoke-interface {p3, p0}, Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;->onBind(Z)V

    .line 72
    sget-object p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->TAG:Ljava/lang/String;

    const-string p1, "binding failure"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/scloud/lib/setting/SyncSetting;Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;)Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->iSamsungCloudRPC:Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/scloud/lib/setting/SyncSetting;)Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->samsungCloudRPCStatus:Lcom/samsung/android/scloud/rpc/SamsungCloudRPCStatus;

    return-object p0
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

    .line 137
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 138
    sget-object p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unbindService: success"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 140
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getProfile(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;)Landroid/os/Bundle;
    .locals 2
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

    .line 80
    :try_start_0
    sget-object v0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->TAG:Ljava/lang/String;

    const-string v1, "getProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->iSamsungCloudRPC:Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;->getProfile(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/SamsungCloudRPCProfile;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const p1, 0x55d4a80

    .line 85
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "rcode"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public showSetting(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "authority"
        }
    .end annotation

    .line 93
    :try_start_0
    sget-object v0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showSetting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->iSamsungCloudRPC:Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;

    invoke-interface {p0, p1}, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;->showSetting(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public start(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;)V
    .locals 2
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

    .line 117
    :try_start_0
    sget-object v0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->iSamsungCloudRPC:Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;->start(Ljava/lang/String;Lcom/samsung/android/scloud/rpc/ISamsungCloudRPCCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public switchOnOff(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
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

    .line 104
    :try_start_0
    sget-object v0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "switchOnOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSetting;->iSamsungCloudRPC:Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/scloud/rpc/ISamsungCloudRPC;->switchOnOff(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const p1, 0x55d4a80

    .line 109
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "rcode"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
