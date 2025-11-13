.class public final Lcom/samsung/android/scloud/lib/platform/api/Registration;
.super Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final register(Ljava/lang/String;)Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;
    .locals 5

    const-string v0, "com.samsung.android.app.settings.bixby"

    const-string/jumbo v1, "sv080do9zh"

    iget-object v2, p0, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "register : com.samsung.android.app.settings.bixby, appId : sv080do9zh"

    invoke-static {v2, v3}, Lcom/samsung/android/scloud/lib/platform/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "packageName"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appSignature"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "register"

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3}, Lcom/samsung/android/scloud/lib/platform/api/AbstractApi;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/scloud/lib/platform/api/DataSetFactory;->newScpmDataSet(Landroid/os/Bundle;)Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;

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

    new-instance p1, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "There is an exception, please check  { "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const v0, 0x55d4a80

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p1, v2, v0, p0, v1}, Lcom/samsung/android/scloud/lib/platform/data/ScpmDataSet;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
