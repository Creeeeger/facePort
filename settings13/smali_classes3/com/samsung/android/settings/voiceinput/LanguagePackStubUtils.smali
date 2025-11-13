.class public Lcom/samsung/android/settings/voiceinput/LanguagePackStubUtils;
.super Ljava/lang/Object;
.source "LanguagePackStubUtils.java"


# static fields
.field private static TAG:Ljava/lang/String; = "@VoiceIn: LanguagePackStubUtils"


# direct methods
.method public static synthetic $r8$lambda$l4lMDUHndTXN5vBtUH8IiG4bQB4(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/voiceinput/LanguagePackStubUtils;->lambda$getAppUpdateData$0(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static checkUpdate(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;
    .locals 16

    move-object/from16 v15, p1

    .line 28
    invoke-static {}, Lcom/samsung/android/settings/voiceinput/GalaxyAppsApiClient;->getClient()Lretrofit2/Retrofit;

    move-result-object v0

    .line 29
    const-class v1, Lcom/samsung/android/settings/voiceinput/GalaxyAppsApiService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/settings/voiceinput/GalaxyAppsApiService;

    .line 30
    new-instance v0, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;

    move-object/from16 v2, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v14, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;

    invoke-direct {v14}, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;-><init>()V

    .line 38
    :try_start_0
    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->getVersionCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-virtual {v0}, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-virtual {v0}, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->getMCC()Ljava/lang/String;

    move-result-object v6

    .line 41
    invoke-virtual {v0}, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->getMNC()Ljava/lang/String;

    move-result-object v7

    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->getCSC()Ljava/lang/String;

    move-result-object v8

    .line 43
    invoke-virtual {v0}, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->getSdkVersion()I

    move-result v9

    .line 44
    invoke-virtual {v0}, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->getPD()I

    move-result v10

    .line 45
    invoke-virtual {v0}, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->getSecondaryUniqueId()Ljava/lang/String;

    move-result-object v11

    .line 46
    invoke-virtual {v0}, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->getSystemId()Ljava/lang/String;

    move-result-object v12

    .line 47
    invoke-virtual {v0}, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->getAbiType()Ljava/lang/String;

    move-result-object v13

    .line 48
    invoke-virtual {v0}, Lcom/samsung/android/settings/voiceinput/GalaxyAppApiConfig;->getCC()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v2, p1

    move-object/from16 v3, p1

    move-object v15, v14

    move-object v14, v0

    .line 35
    :try_start_1
    invoke-interface/range {v1 .. v14}, Lcom/samsung/android/settings/voiceinput/GalaxyAppsApiService;->checkUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/voiceinput/offline/ApiResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v15, v14

    .line 51
    :goto_0
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    .line 56
    :goto_1
    instance-of v1, v0, Lcom/samsung/android/settings/voiceinput/offline/ApiSuccessResponse;

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 57
    check-cast v0, Lcom/samsung/android/settings/voiceinput/offline/ApiSuccessResponse;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/voiceinput/offline/ApiSuccessResponse;->getBody()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/voiceinput/UpdateCheckResponse;

    iget v3, v3, Lcom/samsung/android/settings/voiceinput/UpdateCheckResponse;->resultCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/voiceinput/offline/ApiSuccessResponse;->getBody()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/voiceinput/UpdateCheckResponse;

    iget v4, v4, Lcom/samsung/android/settings/voiceinput/UpdateCheckResponse;->contentSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/voiceinput/offline/ApiSuccessResponse;->getBody()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/voiceinput/UpdateCheckResponse;

    iget v0, v0, Lcom/samsung/android/settings/voiceinput/UpdateCheckResponse;->versionCode:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object v2, v1

    goto :goto_2

    .line 62
    :cond_0
    instance-of v1, v0, Lcom/samsung/android/settings/voiceinput/offline/ApiErrorResponse;

    if-eqz v1, :cond_1

    .line 63
    check-cast v0, Lcom/samsung/android/settings/voiceinput/offline/ApiErrorResponse;

    .line 64
    sget-object v1, Lcom/samsung/android/settings/voiceinput/LanguagePackStubUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/settings/voiceinput/offline/ApiErrorResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v2

    move-object v3, v0

    .line 67
    :goto_2
    invoke-virtual {v15, v2}, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->setmResultCode(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v15, v3}, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->setmContentSize(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v15, v0}, Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;->setmVersionCode(Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/samsung/android/settings/voiceinput/LanguagePackStubUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object v4, v15

    aput-object p1, v1, v3

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s resultCode = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static getAppUpdateData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/samsung/android/settings/voiceinput/LanguagePackStubUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/voiceinput/LanguagePackStubUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getAppUpdateData$0(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lcom/samsung/android/settings/voiceinput/LanguagePackStubUtils;->checkUpdate(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/voiceinput/offline/AppUpdateData;

    move-result-object p0

    return-object p0
.end method
