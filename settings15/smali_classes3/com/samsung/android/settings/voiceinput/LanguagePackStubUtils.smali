.class public Lcom/samsung/android/settings/voiceinput/LanguagePackStubUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static TAG:Ljava/lang/String; = "@VoiceIn: LanguagePackStubUtils"


# direct methods
.method public static $r8$lambda$X16msSBPMFGzZNoZSHFH9nY1Nz4(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;
    .locals 11

    const/4 v0, 0x1

    const-string v1, ""

    invoke-static {}, Lcom/samsung/android/settings/voiceinput/GalaxyAppsApiClient;->getClient()Lretrofit2/Retrofit;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lretrofit2/Utils;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    const-class v3, Lcom/samsung/android/settings/voiceinput/GalaxyAppsApiService;

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-gtz v4, :cond_7

    iget-boolean v4, v2, Lretrofit2/Retrofit;->validateEagerly:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    sget-object v4, Lretrofit2/Platform;->PLATFORM:Lretrofit2/Platform;

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    move v8, v5

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    invoke-virtual {v4, v9}, Lretrofit2/Platform;->isDefaultMethod(Ljava/lang/reflect/Method;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v2, v9}, Lretrofit2/Retrofit;->loadServiceMethod(Ljava/lang/reflect/Method;)Lretrofit2/ServiceMethod;

    :cond_0
    add-int/2addr v8, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Class;

    aput-object v3, v0, v5

    new-instance v3, Lretrofit2/Retrofit$1;

    invoke-direct {v3, v2}, Lretrofit2/Retrofit$1;-><init>(Lretrofit2/Retrofit;)V

    invoke-static {v4, v0, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/voiceinput/GalaxyAppsApiService;

    new-instance v2, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;

    invoke-direct {p0}, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;-><init>()V

    :try_start_0
    invoke-virtual {v2}, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->getCallerId()Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->getVersionCode(Ljava/lang/String;)Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "SAMSUNG-"

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->getMCC()Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->getMNC()Ljava/lang/String;

    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    :cond_2
    const-string v3, "@VoiceIn: GalaxyAppApiConfig"

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/samsung/android/settings/voiceinput/SamsungAppsConstant;->PD_TEST_PATH:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Normal user"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v4, "Exception while getting PD"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v4, "QA user"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v2}, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->getSecondaryUniqueId()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_4

    goto :goto_2

    :cond_4
    sget-object v3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v3, v3

    :goto_2
    invoke-virtual {v2}, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->getCC()Ljava/lang/String;

    invoke-interface {v0}, Lcom/samsung/android/settings/voiceinput/GalaxyAppsApiService;->checkUpdate()Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    iget-object v0, v0, Lretrofit2/Response;->body:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_3
    instance-of v2, v0, Lcom/samsung/android/settings/voiceinput/offline/ApiSuccessResponse;

    if-eqz v2, :cond_5

    check-cast v0, Lcom/samsung/android/settings/voiceinput/offline/ApiSuccessResponse;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/voiceinput/offline/ApiSuccessResponse;->getBody()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/voiceinput/UpdateCheckResponse;

    iget v3, v3, Lcom/samsung/android/settings/voiceinput/UpdateCheckResponse;->resultCode:I

    invoke-static {v2, v3, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/voiceinput/offline/ApiSuccessResponse;->getBody()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/voiceinput/UpdateCheckResponse;

    iget v4, v4, Lcom/samsung/android/settings/voiceinput/UpdateCheckResponse;->contentSize:I

    invoke-static {v3, v4, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/voiceinput/offline/ApiSuccessResponse;->getBody()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/voiceinput/UpdateCheckResponse;

    iget v0, v0, Lcom/samsung/android/settings/voiceinput/UpdateCheckResponse;->versionCode:I

    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    move-object v1, v2

    goto :goto_4

    :cond_5
    instance-of v2, v0, Lcom/samsung/android/settings/voiceinput/offline/ApiErrorResponse;

    if-eqz v2, :cond_6

    check-cast v0, Lcom/samsung/android/settings/voiceinput/offline/ApiErrorResponse;

    sget-object v2, Lcom/samsung/android/settings/voiceinput/LanguagePackStubUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/voiceinput/offline/ApiErrorResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object v0, v1

    move-object v3, v0

    :goto_4
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->setmResultCode(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->setmContentSize(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->setmVersionCode(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/voiceinput/LanguagePackStubUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " resultCode = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "API interfaces must not extend other interfaces."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "API declarations must be interfaces."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
