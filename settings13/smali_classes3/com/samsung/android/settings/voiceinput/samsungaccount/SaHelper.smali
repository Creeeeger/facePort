.class public Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;
.super Ljava/lang/Object;
.source "SaHelper.java"


# static fields
.field private static mSaHelperImpl:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelperInterface;

.field private static mSaInfo:Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;


# direct methods
.method public static synthetic $r8$lambda$9vK7P0eiY9r_OBxU7XWE5Ir9btA(Ljava/lang/String;Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->lambda$setSaInfo$1(Ljava/lang/String;Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BuMogGI1mQvqDYOcEVuBmq5mMfc(Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->lambda$getSaInfo$0(Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getSaInfo()Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;
    .locals 3

    const-class v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;

    monitor-enter v0

    :try_start_0
    const-string v1, "SaHelper"

    const-string v2, "getSaInfo"

    .line 34
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->isSamsungAccountSigned()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 36
    monitor-exit v0

    return-object v1

    .line 39
    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->mSaInfo:Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 40
    monitor-exit v0

    return-object v1

    .line 43
    :cond_1
    :try_start_2
    new-instance v1, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1}, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;->create(Ljava/util/function/Consumer;)Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->mSaInfo:Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    monitor-exit v0

    return-object v1

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

    .line 23
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v1, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaImpl;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->mSaHelperImpl:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelperInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
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

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->mSaHelperImpl:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelperInterface;

    invoke-interface {v0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelperInterface;->isSamsungAccountSigned()Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$getSaInfo$0(Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;)V
    .locals 1

    const-string v0, "NONE"

    .line 44
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;->setCC(Ljava/lang/String;)Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;

    return-void
.end method

.method private static synthetic lambda$setSaInfo$1(Ljava/lang/String;Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;)V
    .locals 0

    .line 59
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;->setCC(Ljava/lang/String;)Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;

    return-void
.end method

.method public static requestToken(Lcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;)V
    .locals 2

    const-string v0, "SaHelper"

    const-string v1, "requestToken"

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->mSaHelperImpl:Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelperInterface;

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelperInterface;->requestToken(Lcom/samsung/android/settings/voiceinput/samsungaccount/listener/SaTokenResultListener;)V

    return-void
.end method

.method public static setSaInfo(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SaHelper"

    const-string v1, "setSaInfo"

    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string p0, "SaHelper"

    const-string v0, "Bundle is null"

    .line 52
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "cc"

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 58
    new-instance v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;->create(Ljava/util/function/Consumer;)Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;

    move-result-object p0

    .line 61
    const-class v0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;

    monitor-enter v0

    .line 62
    :try_start_0
    sput-object p0, Lcom/samsung/android/settings/voiceinput/samsungaccount/SaHelper;->mSaInfo:Lcom/samsung/android/settings/voiceinput/samsungaccount/data/SaInfo;

    .line 63
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
