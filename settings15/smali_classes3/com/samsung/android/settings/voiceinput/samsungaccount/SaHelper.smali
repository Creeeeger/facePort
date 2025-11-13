.class public Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field private static final TAG:Ljava/lang/String; = "SaHelper"

.field private static mSaHelperImpl:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelperInterface;

.field private static mSaInfo:Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;


# direct methods
.method public static declared-synchronized getSaInfo()Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;
    .locals 3

    const-class v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;

    monitor-enter v0

    :try_start_0
    const-string v1, "SaHelper"

    const-string v2, "getSaInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->isSamsungAccountSigned()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->mSaInfo:Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_2
    new-instance v1, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper$$ExternalSyntheticLambda1;->accept(Ljava/lang/Object;)V

    sput-object v2, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->mSaInfo:Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;

    monitor-enter v0

    :try_start_0
    const-string v1, "SaHelper"

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaImpl;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->mSaHelperImpl:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelperInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isSamsungAccountSigned()Z
    .locals 2

    const-string v0, "SaHelper"

    const-string v1, "isSamsungAccountSigned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->mSaHelperImpl:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelperInterface;

    invoke-interface {v0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelperInterface;->isSamsungAccountSigned()Z

    move-result v0

    return v0
.end method

.method public static requestToken(Lcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;)V
    .locals 2

    const-string v0, "SaHelper"

    const-string/jumbo v1, "requestToken"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->mSaHelperImpl:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelperInterface;

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelperInterface;->requestToken(Lcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;)V

    return-void
.end method

.method public static setSaInfo(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SaHelper"

    const-string/jumbo v1, "setSaInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string p0, "SaHelper"

    const-string v0, "Bundle is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "cc"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    const-class v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->mSaInfo:Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
