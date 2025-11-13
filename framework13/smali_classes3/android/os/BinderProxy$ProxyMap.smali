.class final Landroid/os/BinderProxy$ProxyMap;
.super Ljava/lang/Object;
.source "BinderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BinderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProxyMap"
.end annotation


# static fields
.field private static final blacklist CRASH_AT_SIZE:I = 0x61a8

.field private static final blacklist FORCE_LIMIT_ENABLE:Z = true

.field private static final blacklist FORCE_LIMIT_SIZE:I = 0x9c40

.field private static final blacklist LOG_MAIN_INDEX_SIZE:I = 0x8

.field private static final blacklist MAIN_INDEX_MASK:I = 0xff

.field private static final blacklist MAIN_INDEX_SIZE:I = 0x100

.field static final blacklist MAX_NUM_INTERFACES_TO_DUMP:I = 0xa

.field private static final blacklist WARN_INCREMENT:I = 0xa


# instance fields
.field private final blacklist mMainIndexKeys:[[Ljava/lang/Long;

.field private final blacklist mMainIndexValues:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/BinderProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mRandom:I

.field private blacklist mWarnBucketSize:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdumpPerUidProxyCounts(Landroid/os/BinderProxy$ProxyMap;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->dumpPerUidProxyCounts()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdumpProxyInterfaceCounts(Landroid/os/BinderProxy$ProxyMap;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->dumpProxyInterfaceCounts()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSortedInterfaceCounts(Landroid/os/BinderProxy$ProxyMap;I)[Landroid/os/BinderProxy$InterfaceCount;
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/BinderProxy$ProxyMap;->getSortedInterfaceCounts(I)[Landroid/os/BinderProxy$InterfaceCount;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msize(Landroid/os/BinderProxy$ProxyMap;)I
    .locals 0

    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->size()I

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/16 v0, 0x14

    iput v0, p0, Landroid/os/BinderProxy$ProxyMap;->mWarnBucketSize:I

    .line 397
    const/16 v0, 0x100

    new-array v1, v0, [[Ljava/lang/Long;

    iput-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    .line 398
    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/BinderProxy$ProxyMap-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;-><init>()V

    return-void
.end method

.method private blacklist dumpPerUidProxyCounts()V
    .locals 7

    .line 378
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->nGetBinderProxyPerUidCounts()Landroid/util/SparseIntArray;

    move-result-object v0

    .line 379
    .local v0, "counts":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 380
    :cond_0
    const-string v1, "Binder"

    const-string v2, "Per Uid Binder Proxy Counts:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 382
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 383
    .local v3, "uid":I
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 384
    .local v4, "binderCount":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v3    # "uid":I
    .end local v4    # "binderCount":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private blacklist dumpProxyInterfaceCounts()V
    .locals 5

    .line 365
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/os/BinderProxy$ProxyMap;->getSortedInterfaceCounts(I)[Landroid/os/BinderProxy$InterfaceCount;

    move-result-object v1

    .line 367
    .local v1, "sorted":[Landroid/os/BinderProxy$InterfaceCount;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BinderProxy descriptor histogram (top "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 368
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "):"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    const-string v2, "Binder"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist getSortedInterfaceCounts(I)[Landroid/os/BinderProxy$InterfaceCount;
    .locals 10
    .param p1, "maxToReturn"    # I

    .line 276
    if-ltz p1, :cond_4

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 281
    .local v0, "counts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v1, "proxiesToQuery":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;>;"
    invoke-static {}, Landroid/os/BinderProxy;->-$$Nest$sfgetsProxyMap()Landroid/os/BinderProxy$ProxyMap;

    move-result-object v2

    monitor-enter v2

    .line 284
    :try_start_0
    iget-object v3, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    .line 285
    .local v7, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;>;"
    if-eqz v7, :cond_0

    .line 286
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 284
    .end local v7    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;>;"
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 289
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/app/IActivityManager;->enableAppFreezer(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    goto :goto_1

    .line 296
    :catch_0
    move-exception v2

    .line 297
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Binder"

    const-string v4, "RemoteException while disabling app freezer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 305
    .local v2, "executorService":Ljava/util/concurrent/ExecutorService;
    new-instance v3, Landroid/os/BinderProxy$ProxyMap$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v0}, Landroid/os/BinderProxy$ProxyMap$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 331
    :try_start_2
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 332
    const-wide/16 v3, 0x14

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    .line 333
    .local v3, "dumpDone":Z
    if-nez v3, :cond_2

    .line 334
    const-string v4, "Binder"

    const-string v5, "Failed to complete binder proxy dump, dumping what we have so far."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 339
    .end local v3    # "dumpDone":Z
    :cond_2
    goto :goto_2

    .line 337
    :catch_1
    move-exception v3

    .line 341
    :goto_2
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->enableAppFreezer(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 344
    goto :goto_3

    .line 342
    :catch_2
    move-exception v3

    .line 343
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Binder"

    const-string v5, "RemoteException while re-enabling app freezer"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 346
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Ljava/util/Map$Entry;

    .line 345
    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/Map$Entry;

    .line 348
    .local v3, "sorted":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v4, Landroid/os/BinderProxy$ProxyMap$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Landroid/os/BinderProxy$ProxyMap$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 351
    array-length v4, v3

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 352
    .local v4, "returnCount":I
    new-array v5, v4, [Landroid/os/BinderProxy$InterfaceCount;

    .line 353
    .local v5, "ifaceCounts":[Landroid/os/BinderProxy$InterfaceCount;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v6, v4, :cond_3

    .line 354
    new-instance v7, Landroid/os/BinderProxy$InterfaceCount;

    aget-object v8, v3, v6

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aget-object v9, v3, v6

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/os/BinderProxy$InterfaceCount;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    .line 353
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 356
    .end local v6    # "i":I
    :cond_3
    return-object v5

    .line 289
    .end local v2    # "executorService":Ljava/util/concurrent/ExecutorService;
    .end local v3    # "sorted":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "returnCount":I
    .end local v5    # "ifaceCounts":[Landroid/os/BinderProxy$InterfaceCount;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 277
    .end local v0    # "counts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "proxiesToQuery":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;>;"
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative interface count"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist hash(J)I
    .locals 4
    .param p0, "arg"    # J

    .line 119
    const/4 v0, 0x2

    shr-long v0, p0, v0

    const/16 v2, 0xa

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method static synthetic blacklist lambda$getSortedInterfaceCounts$0(Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 7
    .param p0, "proxiesToQuery"    # Ljava/util/ArrayList;
    .param p1, "counts"    # Ljava/util/Map;

    .line 306
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 307
    .local v1, "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BinderProxy;

    .line 309
    .local v2, "bp":Landroid/os/BinderProxy;
    if-nez v2, :cond_0

    .line 310
    const-string v3, "<cleared weak-ref>"

    .local v3, "key":Ljava/lang/String;
    goto :goto_1

    .line 313
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/os/BinderProxy;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v3

    .line 314
    .restart local v3    # "key":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {v2}, Landroid/os/BinderProxy;->isBinderAlive()Z

    move-result v4

    if-nez v4, :cond_2

    .line 315
    const-string v4, "<proxy to dead node>"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 319
    :cond_2
    goto :goto_1

    .line 317
    .end local v3    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 318
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "<exception during getDescriptor>"

    move-object v3, v4

    .line 321
    .local v3, "key":Ljava/lang/String;
    :goto_1
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 322
    .local v4, "i":Ljava/lang/Integer;
    const/4 v5, 0x1

    if-nez v4, :cond_3

    .line 323
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 325
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .end local v1    # "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;"
    .end local v2    # "bp":Landroid/os/BinderProxy;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "i":Ljava/lang/Integer;
    :goto_2
    goto :goto_0

    .line 328
    :cond_4
    return-void
.end method

.method static synthetic blacklist lambda$getSortedInterfaceCounts$1(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2
    .param p0, "a"    # Ljava/util/Map$Entry;
    .param p1, "b"    # Ljava/util/Map$Entry;

    .line 349
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method private blacklist remove(II)V
    .locals 4
    .param p1, "hash"    # I
    .param p2, "index"    # I

    .line 157
    iget-object v0, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    aget-object v0, v0, p1

    .line 158
    .local v0, "keyArray":[Ljava/lang/Long;
    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    .line 159
    .local v1, "valueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 161
    .local v2, "size":I
    add-int/lit8 v3, v2, -0x1

    if-eq p2, v3, :cond_0

    .line 162
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    aput-object v3, v0, p2

    .line 163
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, p2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_0
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method private blacklist size()I
    .locals 6

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "size":I
    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 128
    .local v4, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;>;"
    if-eqz v4, :cond_0

    .line 129
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v0, v5

    .line 127
    .end local v4    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    :cond_1
    return v0
.end method

.method private blacklist unclearedSize()I
    .locals 8

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "size":I
    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 142
    .local v4, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;>;"
    if-eqz v4, :cond_1

    .line 143
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 144
    .local v6, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;"
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 145
    add-int/lit8 v0, v0, 0x1

    .line 147
    .end local v6    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;"
    :cond_0
    goto :goto_1

    .line 141
    .end local v4    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_2
    return v0
.end method


# virtual methods
.method blacklist get(J)Landroid/os/BinderProxy;
    .locals 10
    .param p1, "key"    # J

    .line 173
    invoke-static {p1, p2}, Landroid/os/BinderProxy$ProxyMap;->hash(J)I

    move-result v0

    .line 174
    .local v0, "myHash":I
    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    aget-object v1, v1, v0

    .line 175
    .local v1, "keyArray":[Ljava/lang/Long;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 176
    return-object v2

    .line 178
    :cond_0
    iget-object v3, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    aget-object v3, v3, v0

    .line 179
    .local v3, "valueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 180
    .local v4, "bucketSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 181
    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 182
    .local v6, "foundKey":J
    cmp-long v8, p1, v6

    if-nez v8, :cond_2

    .line 183
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    .line 184
    .local v8, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;"
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BinderProxy;

    .line 185
    .local v9, "bp":Landroid/os/BinderProxy;
    if-eqz v9, :cond_1

    .line 186
    return-object v9

    .line 188
    :cond_1
    invoke-direct {p0, v0, v5}, Landroid/os/BinderProxy$ProxyMap;->remove(II)V

    .line 189
    return-object v2

    .line 180
    .end local v6    # "foundKey":J
    .end local v8    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;"
    .end local v9    # "bp":Landroid/os/BinderProxy;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 193
    .end local v5    # "i":I
    :cond_3
    return-object v2
.end method

.method blacklist set(JLandroid/os/BinderProxy;)V
    .locals 12
    .param p1, "key"    # J
    .param p3, "value"    # Landroid/os/BinderProxy;

    .line 203
    invoke-static {p1, p2}, Landroid/os/BinderProxy$ProxyMap;->hash(J)I

    move-result v0

    .line 204
    .local v0, "myHash":I
    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    aget-object v2, v1, v0

    .line 205
    .local v2, "valueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;>;"
    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 206
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v1, v0

    move-object v2, v4

    .line 207
    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    new-array v4, v3, [Ljava/lang/Long;

    aput-object v4, v1, v0

    .line 209
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 210
    .local v1, "size":I
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 214
    .local v4, "newWr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_3

    .line 215
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 216
    invoke-virtual {v2, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v6, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    aget-object v6, v6, v0

    .line 218
    .local v6, "keyArray":[Ljava/lang/Long;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v5

    .line 219
    add-int/lit8 v8, v1, -0x1

    if-ge v5, v8, :cond_1

    .line 222
    iget v8, p0, Landroid/os/BinderProxy$ProxyMap;->mRandom:I

    add-int/2addr v8, v3

    iput v8, p0, Landroid/os/BinderProxy$ProxyMap;->mRandom:I

    add-int/lit8 v3, v5, 0x1

    sub-int v3, v1, v3

    invoke-static {v8, v3}, Ljava/lang/Math;->floorMod(II)I

    move-result v3

    .line 223
    .local v3, "rnd":I
    add-int/lit8 v8, v5, 0x1

    add-int/2addr v8, v3

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v8, v7}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 224
    add-int/lit8 v7, v5, 0x1

    add-int/2addr v7, v3

    invoke-direct {p0, v0, v7}, Landroid/os/BinderProxy$ProxyMap;->remove(II)V

    .line 227
    .end local v3    # "rnd":I
    :cond_1
    return-void

    .line 214
    .end local v6    # "keyArray":[Ljava/lang/Long;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 230
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {v2, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 231
    iget-object v5, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    aget-object v5, v5, v0

    .line 232
    .local v5, "keyArray":[Ljava/lang/Long;
    array-length v6, v5

    const/4 v7, 0x0

    if-ne v6, v1, :cond_4

    .line 234
    div-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x2

    new-array v6, v6, [Ljava/lang/Long;

    .line 235
    .local v6, "newArray":[Ljava/lang/Long;
    invoke-static {v5, v7, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v1

    .line 237
    iget-object v8, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    aput-object v6, v8, v0

    .line 238
    .end local v6    # "newArray":[Ljava/lang/Long;
    goto :goto_1

    .line 239
    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    .line 241
    :goto_1
    iget v6, p0, Landroid/os/BinderProxy$ProxyMap;->mWarnBucketSize:I

    if-lt v1, v6, :cond_a

    .line 242
    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->size()I

    move-result v6

    .line 243
    .local v6, "totalSize":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BinderProxy map growth! bucket size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " total = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Binder"

    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget v8, p0, Landroid/os/BinderProxy$ProxyMap;->mWarnBucketSize:I

    add-int/lit8 v8, v8, 0xa

    iput v8, p0, Landroid/os/BinderProxy$ProxyMap;->mWarnBucketSize:I

    .line 247
    sget-boolean v8, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v8, :cond_5

    const/16 v8, 0x61a8

    goto :goto_2

    :cond_5
    const v8, 0x9c40

    .line 248
    .local v8, "crashAtSize":I
    :goto_2
    sget-boolean v10, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v10, :cond_7

    sget-boolean v10, Landroid/os/Binder;->isSystemServer:Z

    if-nez v10, :cond_6

    goto :goto_3

    :cond_6
    move v3, v7

    .line 250
    .local v3, "enableProxyLimit":Z
    :cond_7
    :goto_3
    if-eqz v3, :cond_a

    if-lt v6, v8, :cond_a

    .line 255
    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->unclearedSize()I

    move-result v7

    .line 256
    .local v7, "totalUnclearedSize":I
    if-lt v7, v8, :cond_9

    .line 257
    sget-boolean v9, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v9, :cond_8

    .line 258
    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->dumpProxyInterfaceCounts()V

    .line 259
    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->dumpPerUidProxyCounts()V

    .line 261
    :cond_8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Runtime;->gc()V

    .line 262
    new-instance v9, Landroid/os/BinderProxy$BinderProxyMapSizeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Binder ProxyMap has too many entries: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (total), "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (uncleared), "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 265
    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->unclearedSize()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (uncleared after GC). BinderProxy leak?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/BinderProxy$BinderProxyMapSizeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 266
    :cond_9
    mul-int/lit8 v10, v7, 0x3

    div-int/lit8 v10, v10, 0x2

    if-le v6, v10, :cond_a

    .line 267
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BinderProxy map has many cleared entries: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-int v11, v6, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " are cleared"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v3    # "enableProxyLimit":Z
    .end local v6    # "totalSize":I
    .end local v7    # "totalUnclearedSize":I
    .end local v8    # "crashAtSize":I
    :cond_a
    return-void
.end method
