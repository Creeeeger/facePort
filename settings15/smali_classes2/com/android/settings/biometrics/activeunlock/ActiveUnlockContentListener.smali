.class public final Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContent:Ljava/lang/String;

.field public final mContentChangedListener:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener$OnContentChangedListener;

.field public final mContentKey:Ljava/lang/String;

.field public final mContentObserver:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener$1;

.field public final mContext:Landroid/content/Context;

.field public final mLogTag:Ljava/lang/String;

.field public final mMethodName:Ljava/lang/String;

.field public mSubscribed:Z

.field public final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener$OnContentChangedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mSubscribed:Z

    new-instance v1, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener$1;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener$1;-><init>(Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mContentObserver:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener$1;

    iput-object p1, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mContentChangedListener:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener$OnContentChangedListener;

    iput-object p3, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mLogTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mMethodName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mContentKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "active_unlock_provider"

    invoke-static {p2, p3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "ActiveUnlockStatusUtils"

    const/4 p4, 0x0

    if-nez p2, :cond_0

    const-string p1, "authority not set"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object p2, p4

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-wide/32 v1, 0x100000

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object p5

    invoke-virtual {p1, p2, p5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "could not find provider"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p5, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3

    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_2

    const-string p1, "application info is null"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "authority not valid"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_2
    if-eqz p2, :cond_4

    new-instance p1, Landroid/net/Uri$Builder;

    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    const-string p3, "content"

    invoke-virtual {p1, p3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "getSummary"

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mUri:Landroid/net/Uri;

    goto :goto_3

    :cond_4
    iput-object p4, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mUri:Landroid/net/Uri;

    :goto_3
    return-void
.end method


# virtual methods
.method public final getContentFromUri()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mLogTag:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p0, "Uri null when trying to fetch content"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mMethodName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    if-nez v2, :cond_1

    const-string p0, "Null bundle returned from contentProvider"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mContentKey:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mContent:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object v0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mContent:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mContentChangedListener:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener$OnContentChangedListener;

    invoke-interface {p0, v0}, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener$OnContentChangedListener;->onContentChanged(Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string v2, "Failed to call contentProvider"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    return-void

    :goto_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    throw p0
.end method

.method public final declared-synchronized subscribe()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mSubscribed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mSubscribed:Z

    iget-object v1, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mContentObserver:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener$1;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized unsubscribe()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mSubscribed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mSubscribed:Z

    iget-object v0, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener;->mContentObserver:Lcom/android/settings/biometrics/activeunlock/ActiveUnlockContentListener$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
