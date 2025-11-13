.class public final Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final iSyncSetting:Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;

    sget-object v1, Lcom/samsung/android/scloud/lib/setting/RPCSyncSettingContract$Method;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput v2, v0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->applicationType:I

    iput-object p1, v0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->context:Landroid/content/Context;

    iput-object v1, v0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->rpcUri:Landroid/net/Uri;

    iput-object p2, v0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->authority:Ljava/lang/String;

    iput-object p3, v0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->settingProvider:Ljava/lang/String;

    const-string p1, "[scsettingv2][2.0.27.0]"

    sput-object p1, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->TAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;

    return-void
.end method


# virtual methods
.method public final getAutoSync()Z
    .locals 5

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->TAG:Ljava/lang/String;

    const-string v2, "getAutoSync"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "authority"

    iget-object v3, p0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "application_type"

    iget v3, p0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->applicationType:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "library_version"

    const-wide/16 v3, 0x4eca

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->rpcUri:Landroid/net/Uri;

    const-string v3, "get_auto_sync"

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "auto_sync"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public final setAutoSync(Z)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setAutoSync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "authority"

    iget-object v2, p0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auto_sync"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "library_version"

    const-wide/16 v1, 0x4eca

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->rpcUri:Landroid/net/Uri;

    const-string/jumbo v1, "set_auto_sync"

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final showSetting(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SamsungCloudRPCSettingV2;->iSyncSetting:Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showSetting - flag:536870912"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$SyncSettingIntent;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x20000000

    iput v1, v0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$SyncSettingIntent;->flags:I

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->authority:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$SyncSettingIntent;->apply(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
