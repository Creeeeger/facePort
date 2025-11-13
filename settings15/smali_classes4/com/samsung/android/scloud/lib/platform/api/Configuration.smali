.class public final Lcom/samsung/android/scloud/lib/platform/api/Configuration;
.super Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final initialize(Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;)Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initialize : sv080do9zh, appVer : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/samsung/android/scloud/lib/platform/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "token"

    iget-object p1, p1, Lcom/samsung/android/scloud/lib/platform/vo/ConfigurationVo;->token:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "appId"

    const-string/jumbo v3, "sv080do9zh"

    invoke-virtual {v0, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "version"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "receiverPackageName"

    const-string v1, "com.samsung.android.app.settings.bixby"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "initialize"

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/scloud/lib/platform/api/DataSetFactory;->newConfigurationDataSet(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "cannot register package : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/scloud/lib/platform/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/scloud/lib/platform/api/DataSetFactory;->newConfigurationDataSet(Ljava/lang/Throwable;)Lcom/samsung/android/scloud/lib/platform/data/ConfigurationDataSet;

    move-result-object p0

    return-object p0
.end method
