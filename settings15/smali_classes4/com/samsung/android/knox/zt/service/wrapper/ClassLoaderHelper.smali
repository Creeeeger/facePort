.class public Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static volatile sInstance:Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;


# instance fields
.field public final mSakClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v1, "/system/framework/samsungkeystoreutils.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;->mSakClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;->sInstance:Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;->sInstance:Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;

    invoke-direct {v1}, Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;-><init>()V

    sput-object v1, Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;->sInstance:Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;->sInstance:Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;

    return-object v0
.end method


# virtual methods
.method public getSakClassLoader()Ljava/lang/ClassLoader;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/zt/service/wrapper/ClassLoaderHelper;->mSakClassLoader:Ljava/lang/ClassLoader;

    return-object p0
.end method
