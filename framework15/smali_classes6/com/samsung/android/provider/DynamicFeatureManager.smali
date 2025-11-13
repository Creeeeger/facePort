.class public Lcom/samsung/android/provider/DynamicFeatureManager;
.super Ljava/lang/Object;
.source "DynamicFeatureManager.java"


# instance fields
.field private blacklist TAG:Ljava/lang/String;

.field private blacklist mService:Lcom/samsung/android/provider/IDynamicFeatureManager;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/provider/IDynamicFeatureManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DynamicFeature_DynamicFeatureManager"

    iput-object v0, p0, Lcom/samsung/android/provider/DynamicFeatureManager;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/provider/DynamicFeatureManager;->mService:Lcom/samsung/android/provider/IDynamicFeatureManager;

    return-void
.end method


# virtual methods
.method public varargs blacklist getProperties(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/provider/SemDynamicFeature$Properties;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/provider/DynamicFeatureManager;->mService:Lcom/samsung/android/provider/IDynamicFeatureManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/provider/SemDynamicFeature$Properties;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/provider/DynamicFeatureManager;->mService:Lcom/samsung/android/provider/IDynamicFeatureManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/provider/IDynamicFeatureManager;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/provider/DynamicFeatureManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/provider/SemDynamicFeature$Properties;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public blacklist sendAbTestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/provider/DynamicFeatureManager;->mService:Lcom/samsung/android/provider/IDynamicFeatureManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/provider/DynamicFeatureManager;->TAG:Ljava/lang/String;

    const-string v1, "Too long text has been entered. Please reduce it under 1000 characters "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/provider/DynamicFeatureManager;->mService:Lcom/samsung/android/provider/IDynamicFeatureManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/provider/IDynamicFeatureManager;->sendAbTestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
