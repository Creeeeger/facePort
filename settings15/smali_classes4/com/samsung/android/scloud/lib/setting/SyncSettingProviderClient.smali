.class public final Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field public applicationType:I

.field public authority:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field public rpcUri:Landroid/net/Uri;

.field public settingProvider:Ljava/lang/String;

.field public syncStatusObserver:Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient$1;


# virtual methods
.method public final getProfile()Landroid/os/Bundle;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/samsung/android/scloud/lib/setting/SyncSettingProviderClient;->TAG:Ljava/lang/String;

    const-string v2, "getProfile"

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

    const-string v3, "get_profile"

    invoke-virtual {v2, p0, v3, v0, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
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
    return-object v0
.end method
