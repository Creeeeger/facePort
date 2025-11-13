.class public abstract Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static getSaInfo(Landroid/content/Context;)Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;
    .locals 10

    const-string v0, "SaInfoManager"

    const-string v1, "com.osp.app.signin"

    const-string v2, "SaInfoUtils"

    new-instance v3, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const-string v4, ""

    iput-object v4, v3, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;->appId:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;->token:Ljava/lang/String;

    iput-object v4, v3, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;->url:Ljava/lang/String;

    const-string v4, "NONE"

    iput-object v4, v3, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;->countryCode:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/settings/languagepack/appsstub/AppStubUtils;->isUTModeTest()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/languagepack/appsstub/AppStubUtils;->usingPreDeployServer()Z

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [Z

    const/4 v5, 0x0

    aput-boolean v5, v4, v5

    const/4 v6, 0x1

    aput-boolean v5, v4, v6

    new-instance v7, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;-><init>(Landroid/content/Context;)V

    const-string/jumbo p0, "sa ver: "

    iget-object v8, v7, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x80

    :try_start_0
    invoke-virtual {v8, v1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    iget-object p0, v7, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "isSamsungAccountSigned : accountManager is null"

    invoke-static {v0, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_5

    new-instance p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoUtils$1;

    invoke-direct {p0, v3, v7, v4}, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoUtils$1;-><init>(Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;[Z)V

    iput-object p0, v7, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mSaInfoListener:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoUtils$1;

    const-string p0, "bindToSamsungAccountService : try to bind SA service"

    invoke-static {v0, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    const-string v8, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    invoke-direct {p0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "com.msc.sa.service.RequestService"

    invoke-virtual {p0, v1, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v7, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mContext:Landroid/content/Context;

    iget-object v8, v7, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mServiceConnection:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager$2;

    invoke-virtual {v1, p0, v8, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "bindToSamsungAccountService : success to bind SA service"

    invoke-static {v0, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "bindToSamsungAccountService : cannot bind SA service"

    invoke-static {v0, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "cannot bind SA service"

    invoke-virtual {v7, p0}, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->handleFailure(Ljava/lang/String;)V

    :goto_0
    move p0, v5

    :cond_3
    aget-boolean v0, v4, v6

    if-nez v0, :cond_4

    const-wide/16 v0, 0x64

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 p0, p0, 0x1

    const/16 v0, 0x46

    if-le p0, v0, :cond_3

    aput-boolean v5, v4, v5

    :cond_4
    aget-boolean v0, v4, v5

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSaInfo : onReceived : Time out to get samsung account information!, nCountLoop = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "FAIL"

    iput-object p0, v3, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfo;->countryCode:Ljava/lang/String;

    goto :goto_3

    :cond_5
    :goto_2
    const-string p0, "getSaInfo : samsung account is not signed in!"

    invoke-static {v2, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    const-string p0, "getSaInfo : there is no samsung account package!"

    invoke-static {v2, p0}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-object v3
.end method
