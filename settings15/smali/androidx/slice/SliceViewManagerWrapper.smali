.class public final Landroidx/slice/SliceViewManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCachedAuthorities:Landroidx/collection/ArrayMap;

.field public final mCachedSuspendFlags:Landroidx/collection/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public final mListenerLookup:Landroid/util/ArrayMap;

.field public final mManager:Landroid/app/slice/SliceManager;

.field public final mSpecs:Landroidx/collection/ArraySet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-class v0, Landroid/app/slice/SliceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroidx/slice/SliceViewManagerWrapper;->mListenerLookup:Landroid/util/ArrayMap;

    iput-object p1, p0, Landroidx/slice/SliceViewManagerWrapper;->mContext:Landroid/content/Context;

    new-instance p1, Landroidx/collection/ArrayMap;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    iput-object p1, p0, Landroidx/slice/SliceViewManagerWrapper;->mCachedSuspendFlags:Landroidx/collection/ArrayMap;

    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1, v1}, Landroidx/collection/SimpleArrayMap;-><init>(I)V

    iput-object p1, p0, Landroidx/slice/SliceViewManagerWrapper;->mCachedAuthorities:Landroidx/collection/ArrayMap;

    iput-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    sget-object p1, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Landroidx/collection/ArraySet;

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    if-eqz p1, :cond_1

    new-instance v1, Landroidx/collection/ArraySet$ElementIterator;

    invoke-direct {v1, p1}, Landroidx/collection/ArraySet$ElementIterator;-><init>(Landroidx/collection/ArraySet;)V

    :goto_0
    invoke-virtual {v1}, Landroidx/collection/IndexBasedArrayIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroidx/collection/IndexBasedArrayIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/SliceSpec;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/app/slice/SliceSpec;

    iget-object v3, p1, Landroidx/slice/SliceSpec;->mType:Ljava/lang/String;

    iget p1, p1, Landroidx/slice/SliceSpec;->mRevision:I

    invoke-direct {v2, v3, p1}, Landroid/app/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    move-object p1, v2

    :goto_1
    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mSpecs:Landroidx/collection/ArraySet;

    return-void
.end method


# virtual methods
.method public final getSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    invoke-virtual {v0, p1}, Landroid/app/slice/SliceManager;->getSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    iget-object p0, p0, Landroidx/slice/SliceViewManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No provider found for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    throw v0
.end method

.method public final isAuthoritySuspended(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mCachedAuthorities:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/slice/SliceViewManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Landroidx/slice/SliceViewManagerWrapper;->mCachedSuspendFlags:Landroidx/collection/ArrayMap;

    invoke-virtual {p1, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Landroidx/slice/SliceViewManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr p0, v2

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :catch_0
    return v0
.end method

.method public final pinSlice(Landroid/net/Uri;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    iget-object v1, p0, Landroidx/slice/SliceViewManagerWrapper;->mSpecs:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1, v1}, Landroid/app/slice/SliceManager;->pinSlice(Landroid/net/Uri;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Landroidx/slice/SliceViewManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No provider found for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    throw v0
.end method

.method public final registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroidx/slice/SliceViewManagerBase$1;

    invoke-direct {v1, v0}, Landroidx/slice/SliceViewManagerBase$1;-><init>(Landroid/os/Handler;)V

    new-instance v0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    invoke-direct {v0, p0, p1, v1, p2}, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;-><init>(Landroidx/slice/SliceViewManagerWrapper;Landroid/net/Uri;Landroidx/slice/SliceViewManagerBase$1;Landroidx/slice/SliceViewManager$SliceCallback;)V

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/slice/SliceViewManagerWrapper;->mListenerLookup:Landroid/util/ArrayMap;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Landroidx/slice/SliceViewManagerWrapper;->mListenerLookup:Landroid/util/ArrayMap;

    invoke-virtual {p2, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    if-eqz p2, :cond_0

    iget-object v1, p2, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->this$0:Landroidx/slice/SliceViewManagerWrapper;

    iget-object v2, v1, Landroidx/slice/SliceViewManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p2, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mObserver:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$2;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-boolean v2, p2, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mPinned:Z

    if-eqz v2, :cond_0

    iget-object v2, p2, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroidx/slice/SliceViewManagerWrapper;->unpinSlice(Landroid/net/Uri;)V

    const/4 v1, 0x0

    iput-boolean v1, p2, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mPinned:Z

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Landroidx/slice/SliceViewManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, v0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    iget-object p1, p0, Landroidx/slice/SliceViewManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, v0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUri:Landroid/net/Uri;

    iget-object v1, v0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mObserver:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$2;

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-boolean p1, v0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mPinned:Z

    if-nez p1, :cond_1

    :try_start_1
    iget-object p1, v0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Landroidx/slice/SliceViewManagerWrapper;->pinSlice(Landroid/net/Uri;)V

    iput-boolean v2, v0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mPinned:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final unpinSlice(Landroid/net/Uri;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    invoke-virtual {p0, p1}, Landroid/app/slice/SliceManager;->unpinSlice(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final unregisterSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V
    .locals 2

    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mListenerLookup:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/slice/SliceViewManagerWrapper;->mListenerLookup:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;

    if-eqz p0, :cond_0

    iget-object p1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->this$0:Landroidx/slice/SliceViewManagerWrapper;

    iget-object p2, p1, Landroidx/slice/SliceViewManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mObserver:Landroidx/slice/SliceViewManagerBase$SliceListenerImpl$2;

    invoke-virtual {p2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-boolean p2, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mPinned:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroidx/slice/SliceViewManagerWrapper;->unpinSlice(Landroid/net/Uri;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/slice/SliceViewManagerBase$SliceListenerImpl;->mPinned:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
