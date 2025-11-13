.class public final Landroid/view/accessibility/AccessibilityInteractionClient;
.super Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;
.source "AccessibilityInteractionClient.java"


# static fields
.field public static final blacklist CALL_STACK:Ljava/lang/String; = "call_stack"

.field private static final greylist-max-o CHECK_INTEGRITY:Z = true

.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist DISABLE_PREFETCHING_FOR_SCROLLING_MILLIS:J

.field public static final blacklist IGNORE_CALL_STACK:Ljava/lang/String; = "ignore_call_stack"

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "AccessibilityInteractionClient"

.field public static final greylist-max-o NO_ID:I = -0x1

.field private static final greylist-max-o TIMEOUT_INTERACTION_MILLIS:J = 0x7d0L

.field private static blacklist sCaches:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityCache;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sClients:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityInteractionClient;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sConnectionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/accessibilityservice/IAccessibilityServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sScrollingWindows:Landroid/util/SparseLongArray;

.field private static final greylist-max-o sStaticLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private blacklist mCallStackOfCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mCallingUid:I

.field private blacklist mConnectionIdWaitingForPrefetchResult:I

.field private greylist-max-o mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private greylist-max-o mFindAccessibilityNodeInfosResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mInstanceLock:Ljava/lang/Object;

.field private volatile greylist-max-o mInteractionId:I

.field private final greylist-max-o mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist mInteractionIdWaitingForPrefetchResult:I

.field private blacklist mPackageNamesForNextPrefetchResult:[Ljava/lang/String;

.field private greylist-max-o mPerformAccessibilityActionResult:Z

.field private greylist-max-o mSameThreadMessage:Landroid/os/Message;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    .line 110
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    double-to-long v0, v0

    sput-wide v0, Landroid/view/accessibility/AccessibilityInteractionClient;->DISABLE_PREFETCHING_FOR_SCROLLING_MILLIS:J

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sStaticLock:Ljava/lang/Object;

    .line 114
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    .line 117
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    .line 122
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sScrollingWindows:Landroid/util/SparseLongArray;

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sCaches:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 1

    .line 280
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;-><init>()V

    .line 126
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 133
    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallingUid:I

    .line 149
    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdWaitingForPrefetchResult:I

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 283
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 285
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;-><init>()V

    .line 126
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 133
    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallingUid:I

    .line 149
    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdWaitingForPrefetchResult:I

    .line 286
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 287
    return-void
.end method

.method public static blacklist addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;Z)V
    .locals 4
    .param p0, "connectionId"    # I
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .param p2, "initializeCache"    # Z

    .line 234
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 235
    return-void

    .line 237
    :cond_0
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 238
    :try_start_0
    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    if-nez p2, :cond_1

    .line 240
    monitor-exit v0

    return-void

    .line 242
    :cond_1
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sCaches:Landroid/util/SparseArray;

    new-instance v2, Landroid/view/accessibility/AccessibilityCache;

    new-instance v3, Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    invoke-direct {v3}, Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;-><init>()V

    invoke-direct {v2, v3}, Landroid/view/accessibility/AccessibilityCache;-><init>(Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;)V

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 244
    monitor-exit v0

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o checkFindAccessibilityNodeInfoResultIntegrity(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1367
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1368
    return-void

    .line 1371
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1372
    .local v0, "root":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1373
    .local v1, "infoCount":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1374
    move v3, v2

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 1375
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1376
    .local v4, "candidate":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 1377
    move-object v0, v4

    .line 1378
    goto :goto_2

    .line 1374
    .end local v4    # "candidate":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1373
    .end local v3    # "j":I
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1382
    .end local v2    # "i":I
    :cond_3
    const-string v2, "AccessibilityInteractionClient"

    if-nez v0, :cond_4

    .line 1383
    const-string v3, "No root."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_4
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1387
    .local v3, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 1388
    .local v4, "fringe":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v4, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1389
    :goto_3
    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 1390
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1391
    .local v5, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1392
    const-string v6, "Duplicate node."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    return-void

    .line 1395
    :cond_5
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v6

    .line 1396
    .local v6, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    if-ge v7, v6, :cond_8

    .line 1397
    invoke-virtual {v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v8

    .line 1398
    .local v8, "childId":J
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_5
    if-ge v10, v1, :cond_7

    .line 1399
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1400
    .local v11, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v12

    cmp-long v12, v12, v8

    if-nez v12, :cond_6

    .line 1401
    invoke-interface {v4, v11}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1398
    .end local v11    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 1396
    .end local v8    # "childId":J
    .end local v10    # "j":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1405
    .end local v5    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "childCount":I
    .end local v7    # "i":I
    :cond_8
    goto :goto_3

    .line 1406
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1407
    .local v5, "disconnectedCount":I
    if-lez v5, :cond_a

    .line 1408
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Disconnected nodes."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    :cond_a
    return-void
.end method

.method private greylist-max-o clearResultLocked()V
    .locals 1

    .line 1249
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 1250
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1251
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 1252
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    .line 1253
    return-void
.end method

.method private blacklist deleteScrollingWindow(I)V
    .locals 2
    .param p1, "windowId"    # I

    .line 1430
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sScrollingWindows:Landroid/util/SparseLongArray;

    monitor-enter v0

    .line 1431
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 1432
    monitor-exit v0

    .line 1433
    return-void

    .line 1432
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IZ[Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "connectionId"    # I
    .param p3, "bypassCache"    # Z
    .param p4, "packageNames"    # [Ljava/lang/String;

    .line 1300
    if-eqz p1, :cond_3

    .line 1301
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setConnectionId(I)V

    .line 1303
    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1304
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1305
    .local v0, "packageName":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1306
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1309
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1312
    .end local v0    # "packageName":Ljava/lang/CharSequence;
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSealed(Z)V

    .line 1313
    if-nez p3, :cond_3

    .line 1314
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 1315
    .local v0, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-nez v0, :cond_2

    .line 1319
    return-void

    .line 1321
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityCache;->add(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1324
    .end local v0    # "cache":Landroid/view/accessibility/AccessibilityCache;
    :cond_3
    return-void
.end method

.method private greylist-max-o finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;IZ[Ljava/lang/String;)V
    .locals 3
    .param p2, "connectionId"    # I
    .param p3, "bypassCache"    # Z
    .param p4, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;IZ[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1337
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz p1, :cond_0

    .line 1338
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1339
    .local v0, "infosCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1340
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1341
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v2, p2, p3, p4}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IZ[Ljava/lang/String;)V

    .line 1339
    .end local v2    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1345
    .end local v0    # "infosCount":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public static blacklist getCache(I)Landroid/view/accessibility/AccessibilityCache;
    .locals 2
    .param p0, "connectionId"    # I

    .line 252
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 253
    :try_start_0
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sCaches:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityCache;

    monitor-exit v0

    return-object v1

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist-max-o getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .locals 2
    .param p0, "connectionId"    # I

    .line 219
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 220
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    monitor-exit v0

    return-object v1

    .line 221
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3
    .param p1, "interactionId"    # I

    .line 1087
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1088
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 1089
    .local v1, "success":Z
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1090
    .local v2, "result":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V

    .line 1091
    monitor-exit v0

    return-object v2

    .line 1092
    .end local v1    # "success":Z
    .end local v2    # "result":Landroid/view/accessibility/AccessibilityNodeInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;
    .locals 4
    .param p1, "interactionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 1120
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1121
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 1123
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 1124
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    goto :goto_0

    .line 1126
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 1128
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :goto_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V

    .line 1129
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_1

    .line 1130
    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->checkFindAccessibilityNodeInfoResultIntegrity(Ljava/util/List;)V

    .line 1132
    :cond_1
    monitor-exit v0

    return-object v2

    .line 1133
    .end local v1    # "success":Z
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;
    .locals 3

    .line 158
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 159
    .local v0, "threadId":J
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 185
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 186
    .local v0, "threadId":J
    if-eqz p0, :cond_0

    .line 187
    invoke-static {v0, v1, p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(JLandroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    return-object v2

    .line 189
    :cond_0
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;
    .locals 4
    .param p0, "threadId"    # J

    .line 171
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sStaticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 173
    .local v2, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    if-nez v2, :cond_0

    .line 174
    new-instance v3, Landroid/view/accessibility/AccessibilityInteractionClient;

    invoke-direct {v3}, Landroid/view/accessibility/AccessibilityInteractionClient;-><init>()V

    move-object v2, v3

    .line 175
    invoke-virtual {v1, p0, p1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 177
    :cond_0
    monitor-exit v0

    return-object v2

    .line 178
    .end local v2    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getInstanceForThread(JLandroid/content/Context;)Landroid/view/accessibility/AccessibilityInteractionClient;
    .locals 4
    .param p0, "threadId"    # J
    .param p2, "context"    # Landroid/content/Context;

    .line 202
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sStaticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_0
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 204
    .local v2, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    if-nez v2, :cond_0

    .line 205
    new-instance v3, Landroid/view/accessibility/AccessibilityInteractionClient;

    invoke-direct {v3, p2}, Landroid/view/accessibility/AccessibilityInteractionClient;-><init>(Landroid/content/Context;)V

    move-object v2, v3

    .line 206
    invoke-virtual {v1, p0, p1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 208
    :cond_0
    monitor-exit v0

    return-object v2

    .line 209
    .end local v2    # "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o getPerformAccessibilityActionResultAndClear(I)Z
    .locals 3
    .param p1, "interactionId"    # I

    .line 1221
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1222
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 1223
    .local v1, "success":Z
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1224
    .local v2, "result":Z
    :goto_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V

    .line 1225
    monitor-exit v0

    return v2

    .line 1226
    .end local v1    # "success":Z
    .end local v2    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o getSameProcessMessageAndClear()Landroid/os/Message;
    .locals 3

    .line 1354
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1355
    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 1356
    .local v1, "result":Landroid/os/Message;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 1357
    monitor-exit v0

    return-object v1

    .line 1358
    .end local v1    # "result":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static greylist-max-o idToString(IJ)Ljava/lang/String;
    .locals 2
    .param p0, "accessibilityWindowId"    # I
    .param p1, "accessibilityNodeId"    # J

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 701
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->idToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    return-object v0
.end method

.method private blacklist isWindowScrolling(I)Z
    .locals 9
    .param p1, "windowId"    # I

    .line 1442
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sScrollingWindows:Landroid/util/SparseLongArray;

    monitor-enter v0

    .line 1443
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    .line 1444
    .local v1, "latestScrollingTime":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1445
    monitor-exit v0

    return v4

    .line 1447
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1448
    .local v5, "currentUptime":J
    sget-wide v7, Landroid/view/accessibility/AccessibilityInteractionClient;->DISABLE_PREFETCHING_FOR_SCROLLING_MILLIS:J

    add-long/2addr v7, v1

    cmp-long v3, v5, v7

    if-lez v3, :cond_1

    .line 1449
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 1450
    monitor-exit v0

    return v4

    .line 1452
    .end local v1    # "latestScrollingTime":J
    .end local v5    # "currentUptime":J
    :cond_1
    monitor-exit v0

    .line 1453
    const/4 v0, 0x1

    return v0

    .line 1452
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist logTrace(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/HashSet;J)V
    .locals 16
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p7, "logTypes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accessibilityservice/IAccessibilityServiceConnection;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .local p5, "callStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/StackTraceElement;>;"
    .local p6, "ignoreSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v1, p6

    .line 1471
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1472
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "call_stack"

    new-instance v3, Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v14, p5

    :try_start_1
    invoke-direct {v3, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1473
    if-eqz v1, :cond_0

    .line 1474
    const-string v2, "ignore_call_stack"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1476
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccessibilityInteractionClient."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v15, p2

    :try_start_2
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1478
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    .line 1476
    move-object/from16 v2, p1

    move-wide/from16 v6, p7

    move-object/from16 v8, p3

    move/from16 v12, p4

    move-object v13, v0

    invoke-interface/range {v2 .. v13}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->logTrace(JLjava/lang/String;JLjava/lang/String;IJILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1482
    .end local v0    # "b":Landroid/os/Bundle;
    goto :goto_1

    .line 1480
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v15, p2

    goto :goto_0

    :catch_2
    move-exception v0

    move-object/from16 v15, p2

    move-object/from16 v14, p5

    .line 1481
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log trace. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccessibilityInteractionClient"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private blacklist logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;

    .line 1487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallingUid:I

    iget-object v6, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallStackOfCallback:Ljava/util/List;

    new-instance v7, Ljava/util/HashSet;

    const-string v0, "getStackTrace"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1488
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1487
    const-wide/16 v8, 0x20

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v9}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTrace(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/HashSet;J)V

    .line 1490
    return-void
.end method

.method private blacklist logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;

    .line 1494
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1495
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/HashSet;

    const-string v0, "getStackTrace"

    const-string/jumbo v1, "logTraceClient"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 1496
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1494
    const-wide/32 v7, 0x40000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTrace(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/HashSet;J)V

    .line 1498
    return-void
.end method

.method public static greylist-max-o removeConnection(I)V
    .locals 2
    .param p0, "connectionId"    # I

    .line 263
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 264
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 265
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sCaches:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 266
    monitor-exit v0

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist setCache(ILandroid/view/accessibility/AccessibilityCache;)V
    .locals 2
    .param p0, "connectionId"    # I
    .param p1, "cache"    # Landroid/view/accessibility/AccessibilityCache;

    .line 275
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 276
    :try_start_0
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sCaches:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    monitor-exit v0

    .line 278
    return-void

    .line 277
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist setInteractionWaitingForPrefetchResult(II[Ljava/lang/String;)V
    .locals 2
    .param p1, "interactionId"    # I
    .param p2, "connectionId"    # I
    .param p3, "packageNames"    # [Ljava/lang/String;

    .line 692
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 693
    :try_start_0
    iput p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdWaitingForPrefetchResult:I

    .line 694
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mConnectionIdWaitingForPrefetchResult:I

    .line 695
    iput-object p3, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPackageNamesForNextPrefetchResult:[Ljava/lang/String;

    .line 696
    monitor-exit v0

    .line 697
    return-void

    .line 696
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist shouldTraceCallback()Z
    .locals 1

    .line 1462
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    .line 1463
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isA11yInteractionConnectionCBTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1462
    :goto_0
    return v0
.end method

.method private blacklist shouldTraceClient()Z
    .locals 1

    .line 1457
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    .line 1458
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isA11yInteractionClientTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1457
    :goto_0
    return v0
.end method

.method private blacklist updateScrollingWindow(IJ)V
    .locals 2
    .param p1, "windowId"    # I
    .param p2, "uptimeMillis"    # J

    .line 1419
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sScrollingWindows:Landroid/util/SparseLongArray;

    monitor-enter v0

    .line 1420
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1421
    monitor-exit v0

    .line 1422
    return-void

    .line 1421
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o waitForResultTimedLocked(I)Z
    .locals 11
    .param p1, "interactionId"    # I

    .line 1262
    const-wide/16 v0, 0x7d0

    .line 1263
    .local v0, "waitTimeMillis":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1266
    .local v2, "startTimeMillis":J
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getSameProcessMessageAndClear()Landroid/os/Message;

    move-result-object v4

    .line 1267
    .local v4, "sameProcessMessage":Landroid/os/Message;
    if-eqz v4, :cond_0

    .line 1268
    invoke-virtual {v4}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1271
    :cond_0
    iget v5, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-ne v5, p1, :cond_1

    .line 1272
    const/4 v5, 0x1

    return v5

    .line 1274
    :cond_1
    iget v5, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    const/4 v6, 0x0

    if-le v5, p1, :cond_2

    .line 1275
    return v6

    .line 1277
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    .line 1278
    .local v7, "elapsedTimeMillis":J
    const-wide/16 v9, 0x7d0

    sub-long v0, v9, v7

    .line 1279
    const-wide/16 v9, 0x0

    cmp-long v5, v0, v9

    if-gtz v5, :cond_3

    .line 1280
    return v6

    .line 1282
    :cond_3
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v5, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "sameProcessMessage":Landroid/os/Message;
    .end local v7    # "elapsedTimeMillis":J
    goto :goto_1

    .line 1283
    :catch_0
    move-exception v4

    .line 1285
    :goto_1
    goto :goto_0
.end method


# virtual methods
.method public clearCache(I)V
    .locals 1
    .param p1, "connectionId"    # I

    .line 1045
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 1046
    .local v0, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-nez v0, :cond_0

    .line 1047
    return-void

    .line 1049
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    .line 1050
    return-void
.end method

.method public greylist-max-o findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 23
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "bypassCache"    # Z
    .param p6, "prefetchFlags"    # I
    .param p7, "arguments"    # Landroid/os/Bundle;

    move-object/from16 v11, p0

    move/from16 v12, p1

    move/from16 v13, p2

    move-wide/from16 v14, p3

    move/from16 v10, p5

    move/from16 v1, p6

    move-object/from16 v8, p7

    .line 572
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6

    move-object v9, v0

    .line 573
    .local v9, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v9, :cond_e

    .line 574
    const-string v0, ";arguments="

    const-string v2, ";prefetchFlags="

    const-string v3, ";bypassCache="

    const-string v4, ";accessibilityNodeId="

    const-string v5, ";accessibilityWindowId="

    const-string v6, "connectionId="

    if-nez v10, :cond_4

    .line 575
    :try_start_1
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v7

    .line 576
    .local v7, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-eqz v7, :cond_2

    .line 577
    invoke-virtual {v7, v13, v14, v15}, Landroid/view/accessibility/AccessibilityCache;->getNode(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v16

    .line 579
    .local v16, "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v16, :cond_1

    .line 584
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 585
    move-object/from16 v17, v7

    .end local v7    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .local v17, "cache":Landroid/view/accessibility/AccessibilityCache;
    const-string v7, "findAccessibilityNodeInfoByAccessibilityId cache"

    move-object/from16 v18, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v18

    invoke-direct {v11, v9, v2, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 584
    .end local v17    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .restart local v7    # "cache":Landroid/view/accessibility/AccessibilityCache;
    :cond_0
    move-object/from16 v17, v7

    .line 593
    .end local v7    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .restart local v17    # "cache":Landroid/view/accessibility/AccessibilityCache;
    :goto_0
    return-object v16

    .line 595
    .end local v17    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .restart local v7    # "cache":Landroid/view/accessibility/AccessibilityCache;
    :cond_1
    move-object/from16 v17, v7

    .end local v7    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .restart local v17    # "cache":Landroid/view/accessibility/AccessibilityCache;
    invoke-virtual/range {v17 .. v17}, Landroid/view/accessibility/AccessibilityCache;->isEnabled()Z

    move-result v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v7, :cond_3

    .line 597
    and-int/lit8 v1, v1, -0x40

    .end local p6    # "prefetchFlags":I
    .local v1, "prefetchFlags":I
    goto :goto_1

    .line 576
    .end local v1    # "prefetchFlags":I
    .end local v16    # "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v17    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .restart local v7    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .restart local p6    # "prefetchFlags":I
    :cond_2
    move-object/from16 v17, v7

    .line 608
    .end local v7    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .end local p6    # "prefetchFlags":I
    .restart local v1    # "prefetchFlags":I
    :cond_3
    :goto_1
    goto :goto_2

    .line 683
    .end local v1    # "prefetchFlags":I
    .end local v9    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local p6    # "prefetchFlags":I
    :catch_0
    move-exception v0

    move/from16 v22, v1

    move v15, v10

    goto/16 :goto_8

    .line 610
    .restart local v9    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_4
    and-int/lit8 v1, v1, -0x40

    .line 613
    .end local p6    # "prefetchFlags":I
    .restart local v1    # "prefetchFlags":I
    :goto_2
    and-int/lit8 v7, v1, 0x3f

    if-eqz v7, :cond_5

    .line 614
    :try_start_2
    invoke-direct {v11, v13}, Landroid/view/accessibility/AccessibilityInteractionClient;->isWindowScrolling(I)Z

    move-result v7
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v7, :cond_5

    .line 615
    and-int/lit8 v1, v1, -0x40

    move v7, v1

    goto :goto_3

    .line 683
    .end local v9    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catch_1
    move-exception v0

    move/from16 v22, v1

    move v15, v10

    goto/16 :goto_8

    .line 618
    .restart local v9    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_5
    move v7, v1

    .end local v1    # "prefetchFlags":I
    .local v7, "prefetchFlags":I
    :goto_3
    and-int/lit8 v16, v7, 0x1c

    .line 619
    .local v16, "descendantPrefetchFlags":I
    add-int/lit8 v1, v16, -0x1

    and-int v1, v16, v1

    if-nez v1, :cond_d

    .line 623
    :try_start_3
    iget-object v1, v11, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    .line 624
    .local v1, "interactionId":I
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v17
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v18, v9

    .end local v9    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v18, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    const-string v9, "InteractionId:"

    const-string v11, "findAccessibilityNodeInfoByAccessibilityId"

    if-eqz v17, :cond_6

    .line 625
    move-object/from16 p6, v11

    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v11, p0

    move-object/from16 v5, p6

    move-object/from16 v6, v18

    .end local v18    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v6, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :try_start_5
    invoke-direct {v11, v6, v5, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 683
    .end local v1    # "interactionId":I
    .end local v6    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v16    # "descendantPrefetchFlags":I
    :catch_2
    move-exception v0

    move/from16 v22, v7

    move v15, v10

    goto/16 :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v11, p0

    move/from16 v22, v7

    move v15, v10

    goto/16 :goto_8

    .line 624
    .restart local v1    # "interactionId":I
    .restart local v16    # "descendantPrefetchFlags":I
    .restart local v18    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_6
    move-object v5, v11

    move-object/from16 v6, v18

    move-object/from16 v11, p0

    .line 633
    .end local v18    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v6    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :goto_4
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    move-wide/from16 v17, v2

    .line 635
    .local v17, "identityToken":J
    nop

    .line 637
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 635
    move v3, v1

    .end local v1    # "interactionId":I
    .local v3, "interactionId":I
    move-object v1, v6

    move/from16 v2, p2

    move/from16 p6, v3

    .end local v3    # "interactionId":I
    .local p6, "interactionId":I
    move-wide/from16 v3, p3

    move-object v0, v5

    move/from16 v5, p6

    move-object/from16 v21, v6

    .end local v6    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v21, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    move-object/from16 v6, p0

    move/from16 v22, v7

    .end local v7    # "prefetchFlags":I
    .local v22, "prefetchFlags":I
    move-object v14, v9

    move-object/from16 v13, v21

    .end local v21    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v13, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    move-wide/from16 v8, v19

    move v15, v10

    move-object/from16 v10, p7

    :try_start_8
    invoke-interface/range {v1 .. v10}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 639
    .local v1, "packageNames":[Ljava/lang/String;
    :try_start_9
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5

    .line 640
    nop

    .line 641
    if-eqz v1, :cond_c

    .line 642
    and-int/lit8 v2, v22, 0x20

    const-string v3, ";Result: "

    const-string v4, ";connectionId="

    if-eqz v2, :cond_9

    .line 644
    nop

    .line 645
    move/from16 v2, p6

    .end local p6    # "interactionId":I
    .local v2, "interactionId":I
    :try_start_a
    invoke-direct {v11, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v5

    .line 647
    .local v5, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 648
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v13, v0, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :cond_7
    invoke-direct {v11, v5, v12, v15, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;IZ[Ljava/lang/String;)V

    .line 655
    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 656
    const/4 v0, 0x0

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0

    .line 658
    .end local v5    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :cond_8
    goto :goto_5

    .line 659
    .end local v2    # "interactionId":I
    .restart local p6    # "interactionId":I
    :cond_9
    move/from16 v2, p6

    .line 660
    .end local p6    # "interactionId":I
    .restart local v2    # "interactionId":I
    invoke-direct {v11, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 661
    .local v5, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 662
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v13, v0, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :cond_a
    and-int/lit8 v0, v22, 0x3f

    if-eqz v0, :cond_b

    if-eqz v5, :cond_b

    .line 669
    invoke-direct {v11, v2, v12, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setInteractionWaitingForPrefetchResult(II[Ljava/lang/String;)V

    .line 672
    :cond_b
    invoke-direct {v11, v5, v12, v15, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IZ[Ljava/lang/String;)V

    .line 674
    return-object v5

    .line 641
    .end local v2    # "interactionId":I
    .end local v5    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .restart local p6    # "interactionId":I
    :cond_c
    move/from16 v2, p6

    .line 686
    .end local v1    # "packageNames":[Ljava/lang/String;
    .end local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v16    # "descendantPrefetchFlags":I
    .end local v17    # "identityToken":J
    .end local p6    # "interactionId":I
    :goto_5
    move/from16 v1, v22

    goto :goto_7

    .line 639
    .restart local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v16    # "descendantPrefetchFlags":I
    .restart local v17    # "identityToken":J
    .restart local p6    # "interactionId":I
    :catchall_0
    move-exception v0

    move/from16 v2, p6

    .end local p6    # "interactionId":I
    .restart local v2    # "interactionId":I
    goto :goto_6

    .end local v2    # "interactionId":I
    .end local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v22    # "prefetchFlags":I
    .local v1, "interactionId":I
    .restart local v6    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v7    # "prefetchFlags":I
    :catchall_1
    move-exception v0

    move v2, v1

    move-object v13, v6

    move/from16 v22, v7

    move v15, v10

    .end local v1    # "interactionId":I
    .end local v6    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v7    # "prefetchFlags":I
    .restart local v2    # "interactionId":I
    .restart local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v22    # "prefetchFlags":I
    :goto_6
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 640
    nop

    .end local v22    # "prefetchFlags":I
    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "accessibilityNodeId":J
    .end local p5    # "bypassCache":Z
    .end local p7    # "arguments":Landroid/os/Bundle;
    throw v0

    .line 683
    .end local v2    # "interactionId":I
    .end local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v16    # "descendantPrefetchFlags":I
    .end local v17    # "identityToken":J
    .restart local v7    # "prefetchFlags":I
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "accessibilityNodeId":J
    .restart local p5    # "bypassCache":Z
    .restart local p7    # "arguments":Landroid/os/Bundle;
    :catch_4
    move-exception v0

    move/from16 v22, v7

    move v15, v10

    .end local v7    # "prefetchFlags":I
    .restart local v22    # "prefetchFlags":I
    goto :goto_8

    .line 620
    .end local v22    # "prefetchFlags":I
    .restart local v7    # "prefetchFlags":I
    .restart local v9    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v16    # "descendantPrefetchFlags":I
    :cond_d
    move/from16 v22, v7

    move-object v13, v9

    move v15, v10

    .end local v7    # "prefetchFlags":I
    .end local v9    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v22    # "prefetchFlags":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There can be no more than one descendant prefetching strategy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v22    # "prefetchFlags":I
    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "accessibilityNodeId":J
    .end local p5    # "bypassCache":Z
    .end local p7    # "arguments":Landroid/os/Bundle;
    throw v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5

    .line 683
    .end local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v16    # "descendantPrefetchFlags":I
    .restart local v22    # "prefetchFlags":I
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "accessibilityNodeId":J
    .restart local p5    # "bypassCache":Z
    .restart local p7    # "arguments":Landroid/os/Bundle;
    :catch_5
    move-exception v0

    goto :goto_8

    .line 573
    .end local v22    # "prefetchFlags":I
    .restart local v9    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local p6, "prefetchFlags":I
    :cond_e
    move-object v13, v9

    move v15, v10

    .line 686
    .end local v9    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local p6    # "prefetchFlags":I
    .local v1, "prefetchFlags":I
    :goto_7
    goto :goto_9

    .line 683
    .end local v1    # "prefetchFlags":I
    .restart local p6    # "prefetchFlags":I
    :catch_6
    move-exception v0

    move v15, v10

    move/from16 v22, v1

    .line 684
    .end local p6    # "prefetchFlags":I
    .local v0, "re":Landroid/os/RemoteException;
    .restart local v22    # "prefetchFlags":I
    :goto_8
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote findAccessibilityNodeInfoByAccessibilityId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move/from16 v1, v22

    .line 687
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v22    # "prefetchFlags":I
    .restart local v1    # "prefetchFlags":I
    :goto_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist findAccessibilityNodeInfoByAccessibilityId(ILandroid/os/IBinder;JZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 14
    .param p1, "connectionId"    # I
    .param p2, "leashToken"    # Landroid/os/IBinder;
    .param p3, "accessibilityNodeId"    # J
    .param p5, "bypassCache"    # Z
    .param p6, "prefetchFlags"    # I
    .param p7, "arguments"    # Landroid/os/Bundle;

    .line 530
    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 531
    return-object v2

    .line 533
    :cond_0
    const/4 v3, -0x1

    .line 535
    .local v3, "windowId":I
    :try_start_0
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 536
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_1

    .line 537
    invoke-interface {v0, v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getWindowIdForLeashToken(Landroid/os/IBinder;)I

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 545
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_1
    goto :goto_0

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "AccessibilityInteractionClient"

    const-string v5, "Error while calling remote getWindowIdForLeashToken"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    if-ne v3, v0, :cond_2

    .line 547
    return-object v2

    .line 549
    :cond_2
    move-object v6, p0

    move v7, p1

    move v8, v3

    move-wide/from16 v9, p3

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v6 .. v13}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o findAccessibilityNodeInfosByText(IIJLjava/lang/String;)Ljava/util/List;
    .locals 20
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    .line 790
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    move-object v12, v0

    .line 791
    .local v12, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v12, :cond_2

    .line 792
    iget-object v0, v10, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    move v13, v0

    .line 793
    .local v13, "interactionId":I
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    const-string v14, "findAccessibilityNodeInfosByText"

    if-eqz v0, :cond_0

    .line 794
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InteractionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "connectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";accessibilityWindowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v15, p2

    :try_start_2
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";accessibilityNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-wide/from16 v8, p3

    :try_start_3
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v7, p5

    :try_start_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v12, v14, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 828
    .end local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v13    # "interactionId":I
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move/from16 v15, p2

    :goto_0
    move-wide/from16 v8, p3

    :goto_1
    move-object/from16 v7, p5

    goto/16 :goto_3

    .line 793
    .restart local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v13    # "interactionId":I
    :cond_0
    move/from16 v15, p2

    move-wide/from16 v8, p3

    move-object/from16 v7, p5

    .line 800
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    move-wide/from16 v16, v0

    .line 802
    .local v16, "identityToken":J
    nop

    .line 804
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v18

    .line 802
    move-object v1, v12

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move v6, v13

    move-object/from16 v7, p0

    move-wide/from16 v8, v18

    invoke-interface/range {v1 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 806
    .local v0, "packageNames":[Ljava/lang/String;
    :try_start_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 807
    nop

    .line 809
    if-eqz v0, :cond_3

    .line 810
    invoke-direct {v10, v13}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v1

    .line 812
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 813
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InteractionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";connectionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v12, v14, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :cond_1
    if-eqz v1, :cond_3

    .line 818
    const/4 v2, 0x0

    invoke-direct {v10, v1, v11, v2, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;IZ[Ljava/lang/String;)V

    .line 820
    return-object v1

    .line 806
    .end local v0    # "packageNames":[Ljava/lang/String;
    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    :catchall_0
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 807
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "accessibilityNodeId":J
    .end local p5    # "text":Ljava/lang/String;
    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 828
    .end local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v13    # "interactionId":I
    .end local v16    # "identityToken":J
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "accessibilityNodeId":J
    .restart local p5    # "text":Ljava/lang/String;
    :catch_3
    move-exception v0

    goto :goto_3

    .line 791
    .restart local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_2
    move/from16 v15, p2

    .line 831
    .end local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_3
    goto :goto_4

    .line 828
    :catch_4
    move-exception v0

    move/from16 v15, p2

    .line 829
    .local v0, "re":Landroid/os/RemoteException;
    :goto_3
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote findAccessibilityNodeInfosByViewText"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 832
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o findAccessibilityNodeInfosByViewId(IIJLjava/lang/String;)Ljava/util/List;
    .locals 20
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "viewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    .line 723
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    move-object v12, v0

    .line 724
    .local v12, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v12, :cond_3

    .line 725
    iget-object v0, v10, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    move v13, v0

    .line 727
    .local v13, "interactionId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v14, v0

    .line 729
    .local v14, "identityToken":J
    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const-string v8, ";connectionId="

    const-string v9, "InteractionId="

    const-string v7, "findAccessibilityNodeInfosByViewId"

    if-eqz v0, :cond_0

    .line 730
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";accessibilityWindowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move/from16 v6, p2

    :try_start_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";accessibilityNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-wide/from16 v3, p3

    :try_start_4
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";viewId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v5, p5

    :try_start_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v12, v7, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 741
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_0

    :catchall_3
    move-exception v0

    move/from16 v6, p2

    :goto_0
    move-wide/from16 v3, p3

    :goto_1
    move-object/from16 v5, p5

    :goto_2
    move-object v3, v12

    goto/16 :goto_5

    .line 729
    :cond_0
    move/from16 v6, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    .line 737
    :goto_3
    nop

    .line 739
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 737
    move-object v1, v12

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move v6, v13

    move-object v0, v7

    move-object/from16 v7, p0

    move-object/from16 v18, v0

    move-object v0, v8

    move-object/from16 v19, v12

    move-object v12, v9

    .end local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v19, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    move-wide/from16 v8, v16

    :try_start_7
    invoke-interface/range {v1 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 741
    .local v1, "packageNames":[Ljava/lang/String;
    :try_start_8
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 742
    nop

    .line 744
    if-eqz v1, :cond_2

    .line 745
    invoke-direct {v10, v13}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v2

    .line 747
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 748
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":Result: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v18

    move-object/from16 v3, v19

    .end local v19    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v3, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    invoke-direct {v10, v3, v4, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 747
    .end local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v19    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_1
    move-object/from16 v3, v19

    .line 752
    .end local v19    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :goto_4
    if-eqz v2, :cond_4

    .line 753
    const/4 v0, 0x0

    invoke-direct {v10, v2, v11, v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;IZ[Ljava/lang/String;)V

    .line 755
    return-object v2

    .line 744
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v19    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_2
    move-object/from16 v3, v19

    .end local v19    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    goto :goto_6

    .line 741
    .end local v1    # "packageNames":[Ljava/lang/String;
    .end local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v19    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_4
    move-exception v0

    move-object/from16 v3, v19

    .end local v19    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    goto :goto_5

    .end local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_5
    move-exception v0

    move-object v3, v12

    .end local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :goto_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 742
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "accessibilityNodeId":J
    .end local p5    # "viewId":Ljava/lang/String;
    throw v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 724
    .end local v3    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v13    # "interactionId":I
    .end local v14    # "identityToken":J
    .restart local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "accessibilityNodeId":J
    .restart local p5    # "viewId":Ljava/lang/String;
    :cond_3
    move-object v3, v12

    .line 766
    .end local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_4
    :goto_6
    goto :goto_7

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote findAccessibilityNodeInfoByViewIdInActiveWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 767
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 20
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "focusType"    # I

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move-wide/from16 v13, p3

    move/from16 v15, p5

    .line 857
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    move-object v8, v0

    .line 858
    .local v8, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v8, :cond_3

    .line 859
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    move-object v9, v0

    .line 860
    .local v9, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-eqz v9, :cond_0

    .line 861
    invoke-virtual {v9, v15, v13, v14, v12}, Landroid/view/accessibility/AccessibilityCache;->getFocus(IJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 863
    .local v0, "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 869
    return-object v0

    .line 880
    .end local v0    # "cachedInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    iget-object v0, v10, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    move v7, v0

    .line 881
    .local v7, "interactionId":I
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "findFocus"

    if-eqz v0, :cond_1

    .line 882
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InteractionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "connectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";accessibilityWindowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";accessibilityNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";focusType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v8, v6, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide/from16 v16, v0

    .line 891
    .local v16, "identityToken":J
    nop

    .line 893
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 891
    move-object v1, v8

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object v0, v6

    move v6, v7

    move v12, v7

    .end local v7    # "interactionId":I
    .local v12, "interactionId":I
    move-object/from16 v7, p0

    move-object v13, v8

    move-object v14, v9

    .end local v8    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v9    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .local v13, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .local v14, "cache":Landroid/view/accessibility/AccessibilityCache;
    move-wide/from16 v8, v18

    :try_start_3
    invoke-interface/range {v1 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 895
    .local v1, "packageNames":[Ljava/lang/String;
    :try_start_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 896
    nop

    .line 898
    if-eqz v1, :cond_4

    .line 899
    invoke-direct {v10, v12}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 901
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 902
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InteractionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";connectionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";Result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v13, v0, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :cond_2
    const/4 v0, 0x0

    invoke-direct {v10, v2, v11, v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IZ[Ljava/lang/String;)V

    .line 906
    return-object v2

    .line 895
    .end local v1    # "packageNames":[Ljava/lang/String;
    .end local v2    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :catchall_0
    move-exception v0

    goto :goto_0

    .end local v12    # "interactionId":I
    .end local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v14    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .restart local v7    # "interactionId":I
    .restart local v8    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v9    # "cache":Landroid/view/accessibility/AccessibilityCache;
    :catchall_1
    move-exception v0

    move v12, v7

    move-object v13, v8

    move-object v14, v9

    .end local v7    # "interactionId":I
    .end local v8    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v9    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .restart local v12    # "interactionId":I
    .restart local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v14    # "cache":Landroid/view/accessibility/AccessibilityCache;
    :goto_0
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 896
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "accessibilityNodeId":J
    .end local p5    # "focusType":I
    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 858
    .end local v12    # "interactionId":I
    .end local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v14    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .end local v16    # "identityToken":J
    .restart local v8    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "accessibilityNodeId":J
    .restart local p5    # "focusType":I
    :cond_3
    move-object v13, v8

    .line 915
    .end local v8    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_4
    goto :goto_1

    .line 913
    :catch_0
    move-exception v0

    .line 914
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote findFocus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 916
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o focusSearch(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 20
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "direction"    # I

    move-object/from16 v10, p0

    move/from16 v11, p1

    .line 938
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    move-object v12, v0

    .line 939
    .local v12, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v12, :cond_2

    .line 940
    iget-object v0, v10, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    move v13, v0

    .line 941
    .local v13, "interactionId":I
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    const-string v14, "focusSearch"

    if-eqz v0, :cond_0

    .line 942
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InteractionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "connectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";accessibilityWindowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v15, p2

    :try_start_2
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";accessibilityNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-wide/from16 v8, p3

    :try_start_3
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v7, p5

    :try_start_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v12, v14, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 973
    .end local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v13    # "interactionId":I
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move/from16 v15, p2

    :goto_0
    move-wide/from16 v8, p3

    :goto_1
    move/from16 v7, p5

    goto/16 :goto_3

    .line 941
    .restart local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v13    # "interactionId":I
    :cond_0
    move/from16 v15, p2

    move-wide/from16 v8, p3

    move/from16 v7, p5

    .line 949
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    move-wide/from16 v16, v0

    .line 951
    .local v16, "identityToken":J
    nop

    .line 953
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v18

    .line 951
    move-object v1, v12

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move v6, v13

    move-object/from16 v7, p0

    move-wide/from16 v8, v18

    invoke-interface/range {v1 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)[Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 955
    .local v0, "packageNames":[Ljava/lang/String;
    :try_start_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 956
    nop

    .line 958
    if-eqz v0, :cond_3

    .line 959
    invoke-direct {v10, v13}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 961
    .local v1, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v2, 0x0

    invoke-direct {v10, v1, v11, v2, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IZ[Ljava/lang/String;)V

    .line 962
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 963
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InteractionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";connectionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";Result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v12, v14, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    :cond_1
    return-object v1

    .line 955
    .end local v0    # "packageNames":[Ljava/lang/String;
    .end local v1    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :catchall_0
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 956
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "accessibilityNodeId":J
    .end local p5    # "direction":I
    throw v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 973
    .end local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v13    # "interactionId":I
    .end local v16    # "identityToken":J
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "accessibilityNodeId":J
    .restart local p5    # "direction":I
    :catch_3
    move-exception v0

    goto :goto_3

    .line 939
    .restart local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_2
    move/from16 v15, p2

    .line 975
    .end local v12    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :cond_3
    goto :goto_4

    .line 973
    :catch_4
    move-exception v0

    move/from16 v15, p2

    .line 974
    .local v0, "re":Landroid/os/RemoteException;
    :goto_3
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote accessibilityFocusSearch"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 976
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getRootInActiveWindow(II)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "connectionId"    # I
    .param p2, "strategy"    # I

    .line 311
    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const v2, 0x7fffffff

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 1
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I

    .line 326
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(IIZ)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWindow(IIZ)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 9
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "bypassCache"    # Z

    .line 342
    :try_start_0
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 343
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_4

    .line 345
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .local v1, "cache":Landroid/view/accessibility/AccessibilityCache;
    const-string v2, ";accessibilityWindowId="

    const-string v3, "connectionId="

    if-eqz v1, :cond_1

    .line 347
    if-nez p3, :cond_1

    .line 348
    :try_start_1
    invoke-virtual {v1, p2}, Landroid/view/accessibility/AccessibilityCache;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    .line 349
    .local v4, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v4, :cond_1

    .line 353
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 354
    const-string v5, "getWindow cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";bypassCache=false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v5, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_0
    return-object v4

    .line 370
    .end local v4    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 372
    .local v4, "identityToken":J
    :try_start_2
    invoke-interface {v0, p2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 374
    .local v6, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 375
    nop

    .line 376
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 377
    const-string v7, "getWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";bypassCache="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v7, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :cond_2
    if-eqz v6, :cond_4

    .line 383
    if-nez p3, :cond_3

    if-eqz v1, :cond_3

    .line 384
    invoke-virtual {v1, v6}, Landroid/view/accessibility/AccessibilityCache;->addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 386
    :cond_3
    return-object v6

    .line 374
    .end local v6    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catchall_0
    move-exception v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 375
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "bypassCache":Z
    throw v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 395
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v1    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .end local v4    # "identityToken":J
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "bypassCache":Z
    :cond_4
    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote getWindow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getWindows(I)Ljava/util/List;
    .locals 2
    .param p1, "connectionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 406
    nop

    .line 407
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindowsOnAllDisplays(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 408
    .local v0, "windows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 409
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1

    .line 411
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getWindowsOnAllDisplays(I)Landroid/util/SparseArray;
    .locals 10
    .param p1, "connectionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;"
        }
    .end annotation

    .line 423
    :try_start_0
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 424
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_4

    .line 426
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .local v1, "cache":Landroid/view/accessibility/AccessibilityCache;
    const-string v2, "connectionId="

    if-eqz v1, :cond_1

    .line 428
    :try_start_1
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityCache;->getWindowsOnAllDisplays()Landroid/util/SparseArray;

    move-result-object v3

    .line 429
    .local v3, "windows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    if-eqz v3, :cond_1

    .line 433
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 434
    const-string v4, "getWindows cache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v4, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_0
    return-object v3

    .line 449
    .end local v3    # "windows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 451
    .local v3, "identityToken":J
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 452
    .local v5, "populationTimeStamp":J
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getWindows()Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 454
    .local v7, "windows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 455
    nop

    .line 456
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 457
    const-string v8, "getWindows"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v8, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_2
    if-eqz v7, :cond_4

    .line 460
    if-eqz v1, :cond_3

    .line 461
    invoke-virtual {v1, v7, v5, v6}, Landroid/view/accessibility/AccessibilityCache;->setWindowsOnAllDisplays(Landroid/util/SparseArray;J)V

    .line 463
    :cond_3
    return-object v7

    .line 454
    .end local v5    # "populationTimeStamp":J
    .end local v7    # "windows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    :catchall_0
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 455
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    throw v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 472
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v1    # "cache":Landroid/view/accessibility/AccessibilityCache;
    .end local v3    # "identityToken":J
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    :cond_4
    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote getWindowsOnAllDisplays"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 475
    .local v0, "emptyWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;>;"
    return-object v0
.end method

.method public blacklist getWindowsOnMainDisplays(I)Ljava/util/List;
    .locals 4
    .param p1, "connectionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 487
    :try_start_0
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 488
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 490
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .local v1, "identityToken":J
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v0, v3}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getWindowsMainDisplay(I)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    .local v3, "window":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 495
    nop

    .line 496
    if-eqz v3, :cond_0

    .line 497
    return-object v3

    .line 494
    .end local v3    # "window":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 495
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 506
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v1    # "identityToken":J
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    :cond_0
    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote getWindowsOnMainDisplays"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "connectionId"    # I

    .line 1058
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1063
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowChanges()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1064
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->deleteScrollingWindow(I)V

    goto :goto_0

    .line 1060
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->updateScrollingWindow(IJ)V

    .line 1061
    nop

    .line 1070
    :cond_0
    :goto_0
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getCache(I)Landroid/view/accessibility/AccessibilityCache;

    move-result-object v0

    .line 1071
    .local v0, "cache":Landroid/view/accessibility/AccessibilityCache;
    if-nez v0, :cond_1

    .line 1075
    return-void

    .line 1077
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityCache;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1078
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x400000 -> :sswitch_0
    .end sparse-switch
.end method

.method public greylist-max-o performAccessibilityAction(IIJILandroid/os/Bundle;)Z
    .locals 20
    .param p1, "connectionId"    # I
    .param p2, "accessibilityWindowId"    # I
    .param p3, "accessibilityNodeId"    # J
    .param p5, "action"    # I
    .param p6, "arguments"    # Landroid/os/Bundle;

    move-object/from16 v11, p0

    move/from16 v12, p1

    .line 997
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    move-object v13, v0

    .line 998
    .local v13, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v13, :cond_2

    .line 999
    iget-object v0, v11, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    move v14, v0

    .line 1000
    .local v14, "interactionId":I
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceClient()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    const-string/jumbo v15, "performAccessibilityAction"

    if-eqz v0, :cond_0

    .line 1001
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InteractionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "connectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";accessibilityWindowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    move/from16 v9, p2

    :try_start_2
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";accessibilityNodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-wide/from16 v7, p3

    :try_start_3
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move/from16 v10, p5

    :try_start_4
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";arguments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v6, p6

    :try_start_5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v13, v15, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceClient(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1032
    .end local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v14    # "interactionId":I
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    move/from16 v9, p2

    :goto_0
    move-wide/from16 v7, p3

    :goto_1
    move/from16 v10, p5

    :goto_2
    move-object/from16 v6, p6

    goto/16 :goto_4

    .line 1000
    .restart local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v14    # "interactionId":I
    :cond_0
    move/from16 v9, p2

    move-wide/from16 v7, p3

    move/from16 v10, p5

    move-object/from16 v6, p6

    .line 1008
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    move-wide/from16 v16, v0

    .line 1010
    .local v16, "identityToken":J
    nop

    .line 1012
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v18

    .line 1010
    move-object v1, v13

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move v7, v14

    move-object/from16 v8, p0

    move-wide/from16 v9, v18

    invoke-interface/range {v1 .. v10}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1014
    .local v0, "success":Z
    :try_start_7
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1015
    nop

    .line 1017
    if-eqz v0, :cond_2

    .line 1018
    nop

    .line 1019
    invoke-direct {v11, v14}, Landroid/view/accessibility/AccessibilityInteractionClient;->getPerformAccessibilityActionResultAndClear(I)Z

    move-result v1

    .line 1020
    .local v1, "result":Z
    invoke-direct/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1021
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InteractionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";connectionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v13, v15, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTraceCallback(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    :cond_1
    return v1

    .line 1014
    .end local v0    # "success":Z
    .end local v1    # "result":Z
    :catchall_0
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1015
    nop

    .end local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .end local p1    # "connectionId":I
    .end local p2    # "accessibilityWindowId":I
    .end local p3    # "accessibilityNodeId":J
    .end local p5    # "action":I
    .end local p6    # "arguments":Landroid/os/Bundle;
    throw v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1034
    .end local v13    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v14    # "interactionId":I
    .end local v16    # "identityToken":J
    .restart local p0    # "this":Landroid/view/accessibility/AccessibilityInteractionClient;
    .restart local p1    # "connectionId":I
    .restart local p2    # "accessibilityWindowId":I
    .restart local p3    # "accessibilityNodeId":J
    .restart local p5    # "action":I
    .restart local p6    # "arguments":Landroid/os/Bundle;
    :cond_2
    goto :goto_5

    .line 1032
    :catch_4
    move-exception v0

    .line 1033
    .local v0, "re":Landroid/os/RemoteException;
    :goto_4
    const-string v1, "AccessibilityInteractionClient"

    const-string v2, "Error while calling remote performAccessibilityAction"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1035
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_5
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "interactionId"    # I

    .line 1100
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1101
    :try_start_0
    iget v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v1, :cond_0

    .line 1102
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1103
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 1104
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallingUid:I

    .line 1105
    new-instance v1, Ljava/util/ArrayList;

    .line 1106
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallStackOfCallback:Ljava/util/List;

    .line 1108
    :cond_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1109
    monitor-exit v0

    .line 1110
    return-void

    .line 1109
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    .locals 3
    .param p2, "interactionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1141
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1142
    :try_start_0
    iget v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v1, :cond_3

    .line 1143
    if-eqz p1, :cond_2

    .line 1146
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1147
    .local v1, "isIpcCall":Z
    :goto_0
    if-nez v1, :cond_1

    .line 1148
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    goto :goto_1

    .line 1150
    :cond_1
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 1152
    .end local v1    # "isIpcCall":Z
    :goto_1
    goto :goto_2

    .line 1153
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 1155
    :goto_2
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 1156
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallingUid:I

    .line 1157
    new-instance v1, Ljava/util/ArrayList;

    .line 1158
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallStackOfCallback:Ljava/util/List;

    .line 1160
    :cond_3
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1161
    monitor-exit v0

    .line 1162
    return-void

    .line 1161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setPerformAccessibilityActionResult(ZI)V
    .locals 3
    .param p1, "succeeded"    # Z
    .param p2, "interactionId"    # I

    .line 1233
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1234
    :try_start_0
    iget v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v1, :cond_0

    .line 1235
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    .line 1236
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 1237
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallingUid:I

    .line 1238
    new-instance v1, Ljava/util/ArrayList;

    .line 1239
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mCallStackOfCallback:Ljava/util/List;

    .line 1241
    :cond_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1242
    monitor-exit v0

    .line 1243
    return-void

    .line 1242
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setPrefetchAccessibilityNodeInfoResult(Ljava/util/List;I)V
    .locals 13
    .param p2, "interactionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1170
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v0, -0x1

    .line 1171
    .local v0, "interactionIdWaitingForPrefetchResultCopy":I
    const/4 v1, -0x1

    .line 1172
    .local v1, "connectionIdWaitingForPrefetchResultCopy":I
    const/4 v2, 0x0

    .line 1174
    .local v2, "packageNamesForNextPrefetchResultCopy":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1175
    return-void

    .line 1178
    :cond_0
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1179
    :try_start_0
    iget v4, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdWaitingForPrefetchResult:I

    if-ne v4, p2, :cond_1

    .line 1180
    move v0, v4

    .line 1181
    iget v4, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mConnectionIdWaitingForPrefetchResult:I

    move v1, v4

    .line 1183
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPackageNamesForNextPrefetchResult:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1184
    array-length v4, v4

    new-array v4, v4, [Ljava/lang/String;

    move-object v2, v4

    .line 1186
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPackageNamesForNextPrefetchResult:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 1187
    aget-object v5, v5, v4

    aput-object v5, v2, v4

    .line 1186
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1192
    .end local v4    # "i":I
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    if-ne v0, p2, :cond_2

    .line 1195
    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v3, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;IZ[Ljava/lang/String;)V

    .line 1198
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->shouldTraceCallback()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1199
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v5

    const-string/jumbo v6, "setPrefetchAccessibilityNodeInfoResult"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InteractionId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";connectionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1203
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1204
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v10, Ljava/util/HashSet;

    const-string v3, "getStackTrace"

    .line 1205
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-wide/16 v11, 0x20

    .line 1199
    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Landroid/view/accessibility/AccessibilityInteractionClient;->logTrace(Landroid/accessibilityservice/IAccessibilityServiceConnection;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/HashSet;J)V

    .line 1212
    :cond_2
    return-void

    .line 1192
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public greylist-max-r setSameThreadMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .line 297
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_0
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 299
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 300
    monitor-exit v0

    .line 301
    return-void

    .line 300
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
