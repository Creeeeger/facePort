.class public final Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$2;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "content://"

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "WifiSettings.SCloudMgr"

    if-eq v0, v5, :cond_8

    const/4 v7, 0x0

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unhandled message: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_0
    const-string p1, "FAST_SYNC_FINISH"

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$2;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    iget-object p1, p1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$2;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    iget-object p1, p1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$2;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    iget-object p1, p1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->samsungCloudRPCSettingV2:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v0, p1, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->syncStatusObserver:Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$1;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p1, p1, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->syncStatusObserver:Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$1;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$2;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    iput-object v7, p1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->samsungCloudRPCSettingV2:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "samsungCloudRPCSettingV2="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$2;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->samsungCloudRPCSettingV2:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_4
    :goto_1
    const-string p0, "Pending job is exist. Do not close."

    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$2;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    iget-object p1, p1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->samsungCloudRPCSettingV2:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;

    iget-object p1, p1, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;

    if-eqz p1, :cond_7

    :try_start_1
    sget-object v0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "requestSync"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "authority"

    iget-object v5, p1, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->authority:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "library_version"

    const-wide/16 v5, 0x4eca

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v4, p1, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->settingProvider:Ljava/lang/String;

    if-eqz v4, :cond_6

    :try_start_2
    const-string v5, "callback_uri"

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v1, p1, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p1, p1, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->rpcUri:Landroid/net/Uri;

    const-string/jumbo v4, "start_sync"

    invoke-virtual {v1, p1, v4, v7, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_4
    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$2;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_6

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$2;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    iget-object p1, p1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$2;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    iget-object p1, p1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$2;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    iget-object p1, p1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$2;->this$0:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "makeSamsungCloudRPCSettingV2 : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->samsungCloudRPCSettingV2:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->samsungCloudRPCSettingV2:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;

    if-nez p1, :cond_a

    new-instance p1, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;

    iget-object v0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings.wifiprofilesync"

    const-string v6, "com.android.settings.wifiprofilesetting"

    invoke-direct {p1, v0, v3, v6}, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->samsungCloudRPCSettingV2:Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;

    new-instance v0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$1;-><init>(Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;)V

    iget-object p1, p1, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;

    if-eqz p1, :cond_a

    iget-object v3, p1, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->syncStatusObserver:Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$1;

    if-eqz v3, :cond_9

    goto :goto_5

    :cond_9
    new-instance v3, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$1;

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, v6, v0}, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$1;-><init>(Landroid/os/Handler;Lcom/samsung/android/settings/scloud/SCloudWifiDataManager$1;)V

    iput-object v3, p1, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->syncStatusObserver:Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$1;

    iget-object v0, p1, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->settingProvider:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p1, p1, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->syncStatusObserver:Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$1;

    invoke-virtual {v0, v1, v5, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_a
    :goto_5
    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncHandler:Landroid/os/Handler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_6
    return v2
.end method
