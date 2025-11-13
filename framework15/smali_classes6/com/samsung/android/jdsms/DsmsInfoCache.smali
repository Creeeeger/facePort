.class public final Lcom/samsung/android/jdsms/DsmsInfoCache;
.super Ljava/lang/Object;
.source "DsmsInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;
    }
.end annotation


# static fields
.field private static final blacklist SUBTAG:Ljava/lang/String; = "DsmsInfoCache"

.field private static final blacklist TIMEOUT:J

.field private static blacklist sInstance:Lcom/samsung/android/jdsms/DsmsInfoCache;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIsCommercializedDevice:Z

.field private blacklist mIsCommercializedDeviceCached:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/samsung/android/jdsms/DsmsInfoCache;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/jdsms/DsmsInfoCache;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/jdsms/DsmsInfoCache;->TIMEOUT:J

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/samsung/android/jdsms/DsmsInfoCache;
    .locals 2

    const-class v0, Lcom/samsung/android/jdsms/DsmsInfoCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/jdsms/DsmsInfoCache;->sInstance:Lcom/samsung/android/jdsms/DsmsInfoCache;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/jdsms/DsmsInfoCache;

    invoke-direct {v1}, Lcom/samsung/android/jdsms/DsmsInfoCache;-><init>()V

    sput-object v1, Lcom/samsung/android/jdsms/DsmsInfoCache;->sInstance:Lcom/samsung/android/jdsms/DsmsInfoCache;

    :cond_0
    sget-object v1, Lcom/samsung/android/jdsms/DsmsInfoCache;->sInstance:Lcom/samsung/android/jdsms/DsmsInfoCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public blacklist clearCommercializedDeviceCache()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/jdsms/DsmsInfoCache;->mIsCommercializedDeviceCached:Z

    return-void
.end method

.method public blacklist isCommercializedDevice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/jdsms/DsmsInfoCache;->mIsCommercializedDeviceCached:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/jdsms/DsmsInfoCache;->mIsCommercializedDevice:Z

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/jdsms/DsmsInfoCache;->updateCommercializedDeviceCache()V

    iget-boolean v0, p0, Lcom/samsung/android/jdsms/DsmsInfoCache;->mIsCommercializedDevice:Z

    return v0
.end method

.method public blacklist isCommercializedDeviceCached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/jdsms/DsmsInfoCache;->mIsCommercializedDeviceCached:Z

    return v0
.end method

.method public blacklist setContext(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsInfoCache;->mContext:Landroid/content/Context;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist updateCommercializedDeviceCache()V
    .locals 4

    const-string v0, "DsmsInfoCache"

    new-instance v1, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;-><init>(Lcom/samsung/android/jdsms/DsmsInfoCache;Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient-IA;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->bind()Z

    invoke-virtual {v1}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->isBound()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-wide v2, Lcom/samsung/android/jdsms/DsmsInfoCache;->TIMEOUT:J

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->waitConnection(J)V

    invoke-virtual {v1}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->isCommercializedDevice()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/jdsms/DsmsInfoCache;->mIsCommercializedDevice:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/jdsms/DsmsInfoCache;->mIsCommercializedDeviceCached:Z

    const-string v2, "Updated commercialized device cache"

    invoke-static {v0, v2}, Lcom/samsung/android/jdsms/DsmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->unbind()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/jdsms/DsmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :goto_2
    invoke-virtual {v1}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->isBound()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/jdsms/DsmsInfoCache$DsmsInfoServiceClient;->unbind()V

    :cond_2
    throw v0
.end method
