.class public abstract Lcom/samsung/scpm/odm/dos/common/AbstractScpmOdmApi;
.super Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;
.source "AbstractScpmOdmApi.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "appId",
            "tag"
        }
    .end annotation

    const-string v0, "0.9.0800"

    .line 18
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initialize(Ljava/lang/String;)Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiverPackageName"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/scpm/odm/dos/common/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "receiverPackageName"

    .line 91
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "initialize"

    .line 93
    iget-object v1, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    .line 94
    invoke-static {p1, v0}, Lcom/samsung/scpm/odm/dos/configuration/ConfigurationDataSet;->create(Landroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)Lcom/samsung/scpm/odm/dos/configuration/ConfigurationDataSet;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 96
    iget-object p0, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot register package : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/scpm/odm/dos/common/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {p1}, Lcom/samsung/scpm/odm/dos/configuration/ConfigurationDataSet;->create(Ljava/lang/Throwable;)Lcom/samsung/scpm/odm/dos/configuration/ConfigurationDataSet;

    move-result-object p0

    return-object p0
.end method

.method isSupportPam()Z
    .locals 2

    .line 103
    iget-object p0, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.scpm.pam"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public register()Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;
    .locals 5

    .line 26
    iget-object v0, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "packageName"

    .line 30
    iget-object v2, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/samsung/scpm/odm/dos/common/AbstractScpmOdmApi;->isSupportPam()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    const-string v3, "register"

    if-eqz v1, :cond_0

    .line 33
    :try_start_1
    invoke-virtual {p0, v3, v2, v0}, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->callForPam(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0, v3, v2, v0}, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    const-string v1, "token"

    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register token : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v2, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->appId:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/samsung/scpm/odm/dos/common/TokenStore;->store(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {v0}, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->create(Landroid/os/Bundle;)Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 42
    iget-object p0, p0, Lcom/samsung/scpm/odm/dos/common/ScpmAbstractApi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot register package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {v0}, Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;->create(Ljava/lang/Throwable;)Lcom/samsung/scpm/odm/dos/common/ScpmDataSet;

    move-result-object p0

    return-object p0
.end method
