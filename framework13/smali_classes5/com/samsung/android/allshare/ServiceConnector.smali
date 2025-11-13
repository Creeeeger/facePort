.class public Lcom/samsung/android/allshare/ServiceConnector;
.super Ljava/lang/Object;
.source "ServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;,
        Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;,
        Lcom/samsung/android/allshare/ServiceConnector$FileServiceProviderImpl;,
        Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;,
        Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;,
        Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectorGetter;,
        Lcom/samsung/android/allshare/ServiceConnector$IServiceStateSetter;,
        Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;,
        Lcom/samsung/android/allshare/ServiceConnector$ServiceState;
    }
.end annotation


# static fields
.field private static final blacklist TAG_CONNECTOR:Ljava/lang/String; = "ServiceConnector"

.field private static blacklist mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 162
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/allshare/ServiceConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public static blacklist createServiceProvider(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;)Lcom/samsung/android/allshare/ERROR;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "l"    # Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    .line 229
    const-string v0, "ServiceConnector"

    const-string v1, "createServiceProvider(v1)"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    invoke-static {}, Lcom/samsung/android/allshare/DLog;->setAPIVersionTag()V

    .line 239
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/samsung/android/allshare/ServiceConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 241
    new-instance v0, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 243
    .local v0, "connector":Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;
    new-instance v1, Lcom/samsung/android/allshare/ServiceConnector$1;

    invoke-direct {v1, p1, p0, v0}, Lcom/samsung/android/allshare/ServiceConnector$1;-><init>(Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V

    .line 285
    .local v1, "callback":Landroid/os/Handler$Callback;
    invoke-virtual {v0, v1}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->setCallback(Landroid/os/Handler$Callback;)V

    .line 286
    invoke-virtual {v0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->connect()V

    .line 288
    sget-object v2, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    return-object v2

    .line 231
    .end local v0    # "connector":Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;
    .end local v1    # "callback":Landroid/os/Handler$Callback;
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context or ServiceConnectEventListener is null : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " || "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    return-object v0
.end method

.method public static whitelist createServiceProvider(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "l"    # Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;
    .param p2, "serviceType"    # Ljava/lang/String;

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createServiceProvider of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceConnector"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->v_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 346
    .local v0, "floatingFeature":Lcom/samsung/android/feature/SemFloatingFeature;
    if-eqz v0, :cond_1

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALLSHARE_CONFIG : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_ALLSHARE_CONFIG_VERSION"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_1
    invoke-static {}, Lcom/samsung/android/allshare/DLog;->setAPIVersionTag()V

    .line 368
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/samsung/android/allshare/ServiceConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 370
    new-instance v1, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 372
    .local v1, "connector":Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;
    new-instance v2, Lcom/samsung/android/allshare/ServiceConnector$2;

    invoke-direct {v2, p1, p0, v1, p2}, Lcom/samsung/android/allshare/ServiceConnector$2;-><init>(Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;Ljava/lang/String;)V

    .line 434
    .local v2, "callback":Landroid/os/Handler$Callback;
    invoke-virtual {v1, v2}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->setCallback(Landroid/os/Handler$Callback;)V

    .line 435
    invoke-virtual {v1}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->connect()V

    .line 437
    sget-object v3, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    return-object v3

    .line 340
    .end local v0    # "floatingFeature":Lcom/samsung/android/feature/SemFloatingFeature;
    .end local v1    # "connector":Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;
    .end local v2    # "callback":Landroid/os/Handler$Callback;
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context or ServiceConnectEventListener is null : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " || "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    return-object v0
.end method

.method public static whitelist deleteServiceProvider(Lcom/samsung/android/allshare/ServiceProvider;)V
    .locals 2
    .param p0, "provider"    # Lcom/samsung/android/allshare/ServiceProvider;

    .line 449
    if-nez p0, :cond_0

    .line 450
    const-string v0, "ServiceConnector"

    const-string v1, "deleteServiceProvider : ServiceProvider is null"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    return-void

    .line 454
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectorGetter;

    invoke-interface {v0}, Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectorGetter;->getAllShareConnector()Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    move-result-object v0

    .line 456
    .local v0, "connector":Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;
    invoke-virtual {v0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->unsubscribeAllEvents()V

    .line 459
    invoke-virtual {v0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->destroyInstance()V

    .line 460
    return-void
.end method

.method static blacklist getContext()Landroid/content/Context;
    .locals 2

    .line 170
    sget-object v0, Lcom/samsung/android/allshare/ServiceConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 171
    return-object v1

    .line 173
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 174
    .local v0, "ctx":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 175
    return-object v1

    .line 177
    :cond_1
    return-object v0
.end method

.method static blacklist getMainLooper()Landroid/os/Looper;
    .locals 2

    .line 463
    sget-object v0, Lcom/samsung/android/allshare/ServiceConnector;->mContextRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 464
    return-object v1

    .line 465
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 466
    .local v0, "ctx":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 467
    return-object v1

    .line 469
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    return-object v1
.end method
