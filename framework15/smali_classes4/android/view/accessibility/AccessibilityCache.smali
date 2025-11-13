.class public Landroid/view/accessibility/AccessibilityCache;
.super Ljava/lang/Object;
.source "AccessibilityCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;,
        Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;
    }
.end annotation


# static fields
.field public static final greylist-max-o CACHE_CRITICAL_EVENTS_MASK:I = 0x41b83d

.field private static final greylist-max-o CHECK_INTEGRITY:Z

.field private static final greylist-max-o DEBUG:Z

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "AccessibilityCache"

.field private static final blacklist VERBOSE:Z


# instance fields
.field private greylist-max-o mAccessibilityFocus:J

.field private blacklist mAccessibilityFocusedWindow:I

.field private final greylist-max-o mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

.field private blacklist mEnabled:Z

.field private greylist-max-o mInputFocus:J

.field private blacklist mInputFocusWindow:I

.field private greylist-max-o mIsAllWindowsCached:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mNodeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mOnNodeAddedListener:Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;

.field private final greylist-max-o mTempWindowArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mValidWindowCacheTimeStamp:J

.field private final blacklist mWindowCacheByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    const/4 v0, 0x3

    const-string v1, "AccessibilityCache"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sput-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    nop

    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    sput-boolean v2, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityCache;->mValidWindowCacheTimeStamp:J

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    return-void
.end method

.method private blacklist addWindowByDisplayLocked(ILandroid/view/accessibility/AccessibilityWindowInfo;)V
    .locals 3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v1

    new-instance v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {v2, p2}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private greylist-max-o clearNodesForWindowLocked(I)V
    .locals 2

    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearNodesForWindowLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityCache"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private greylist-max-o clearSubTreeLocked(IJ)V
    .locals 2

    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AccessibilityCache"

    const-string v1, "Clearing cached subtree."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p2, p3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)Z

    :cond_1
    return-void
.end method

.method private blacklist clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;J)Z"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    return v1

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->remove(J)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)Z

    move-result v6

    if-eqz v6, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist clearWindowCacheLocked()V
    .locals 5

    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AccessibilityCache"

    const-string v1, "clearWindowCacheLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    :cond_1
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    return-void
.end method

.method private blacklist isCachedNodeOrDescendantLocked(JJLandroid/util/LongSparseArray;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)Z"
        }
    .end annotation

    cmp-long v0, p3, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p5, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v0, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v3

    move-object v2, p0

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityCache;->isCachedNodeOrDescendantLocked(JJLandroid/util/LongSparseArray;)Z

    move-result v1

    return v1
.end method

.method private blacklist removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AccessibilityCache"

    const-string v1, "Removing cached node."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->remove(J)V

    return-object v2
.end method


# virtual methods
.method public greylist-max-o add(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 12

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AccessibilityCache"

    const-string v2, "Cache is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    if-eqz v1, :cond_2

    const-string v1, "AccessibilityCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    if-nez v2, :cond_3

    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    move-object v2, v3

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v5, :cond_8

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/LongArray;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_7

    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v9

    if-eqz v6, :cond_4

    invoke-virtual {v6, v9, v10}, Landroid/util/LongArray;->indexOf(J)I

    move-result v11

    if-gez v11, :cond_5

    :cond_4
    invoke-direct {p0, v1, v9, v10}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    :cond_5
    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_6

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityCache;->clearNodesForWindowLocked(I)V

    monitor-exit v0

    return-void

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v10

    cmp-long v10, v10, v8

    if-eqz v10, :cond_8

    invoke-direct {p0, v1, v8, v9}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    :cond_8
    new-instance v6, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v6, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v2, v3, v4, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v7

    const-wide/32 v8, 0x7fffffff

    if-eqz v7, :cond_a

    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    cmp-long v7, v10, v8

    if-eqz v7, :cond_9

    iget-wide v7, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    cmp-long v7, v7, v3

    if-eqz v7, :cond_9

    iget-wide v7, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v1, v7, v8}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    :cond_9
    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    iput v1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    goto :goto_1

    :cond_a
    iget-wide v10, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    cmp-long v7, v10, v3

    if-nez v7, :cond_b

    iput-wide v8, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    const/4 v7, -0x1

    iput v7, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    :cond_b
    :goto_1
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_c

    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    iput v1, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    :cond_c
    iget-object v7, p0, Landroid/view/accessibility/AccessibilityCache;->mOnNodeAddedListener:Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;

    if-eqz v7, :cond_d

    iget-object v7, p0, Landroid/view/accessibility/AccessibilityCache;->mOnNodeAddedListener:Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;

    invoke-interface {v7, v6}, Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;->onNodeAdded(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_d
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .locals 4

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AccessibilityCache"

    const-string v2, "Cache is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "AccessibilityCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at display Id [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v1, p1}, Landroid/view/accessibility/AccessibilityCache;->addWindowByDisplayLocked(ILandroid/view/accessibility/AccessibilityWindowInfo;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o checkIntegrity()V
    .locals 22

    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v4, v1, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_7

    iget-object v6, v1, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    if-nez v6, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_6

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz v3, :cond_2

    const-string v10, "AccessibilityCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Duplicate active window:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move-object v3, v9

    :cond_3
    :goto_2
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_5

    if-eqz v0, :cond_4

    const-string v10, "AccessibilityCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Duplicate focused window:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move-object v0, v9

    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v7, :cond_16

    iget-object v9, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/LongSparseArray;

    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v10

    if-gtz v10, :cond_8

    move-object/from16 v16, v0

    move-object/from16 v19, v3

    move/from16 v17, v4

    goto/16 :goto_f

    :cond_8
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    iget-object v11, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v12, :cond_15

    invoke-virtual {v9, v13}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v10, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string v15, "AccessibilityCache"

    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate node: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in window:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, v3

    move/from16 v17, v4

    goto/16 :goto_e

    :cond_9
    move-object/from16 v16, v0

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v5, :cond_a

    const-string v0, "AccessibilityCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Duplicate accessibility focus:"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " in window:"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_a
    move-object v5, v14

    :cond_b
    :goto_7
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v6, :cond_c

    const-string v0, "AccessibilityCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Duplicate input focus: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v15, " in window:"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_c
    move-object v6, v14

    :cond_d
    :goto_8
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v15

    const/16 v17, 0x0

    move/from16 v18, v1

    move/from16 v1, v17

    :goto_9
    if-ge v1, v15, :cond_f

    move-object/from16 v19, v3

    move/from16 v17, v4

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-ne v3, v14, :cond_e

    const/4 v4, 0x1

    move v1, v4

    goto :goto_a

    :cond_e
    add-int/lit8 v1, v1, 0x1

    move/from16 v4, v17

    move-object/from16 v3, v19

    goto :goto_9

    :cond_f
    move-object/from16 v19, v3

    move/from16 v17, v4

    move/from16 v1, v18

    :goto_a
    if-nez v1, :cond_10

    const-string v3, "AccessibilityCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v1

    const-string v1, "Invalid parent-child relation between parent: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " and child: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_10
    move/from16 v18, v1

    goto :goto_b

    :cond_11
    move-object/from16 v19, v3

    move/from16 v17, v4

    :goto_b
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_14

    move-object v15, v5

    invoke-virtual {v14, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v4, :cond_13

    move-object/from16 v18, v6

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v5

    invoke-virtual {v9, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eq v5, v14, :cond_12

    const-string v6, "AccessibilityCache"

    move/from16 v20, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v4

    const-string v4, "Invalid child-parent relation between child: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " and parent: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_12
    move/from16 v20, v1

    move-object/from16 v21, v4

    goto :goto_d

    :cond_13
    move/from16 v20, v1

    move-object/from16 v21, v4

    move-object/from16 v18, v6

    :goto_d
    add-int/lit8 v3, v3, 0x1

    move-object v5, v15

    move-object/from16 v6, v18

    move/from16 v1, v20

    goto :goto_c

    :cond_14
    move/from16 v20, v1

    move-object v15, v5

    move-object/from16 v18, v6

    :goto_e
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    move/from16 v4, v17

    move-object/from16 v3, v19

    goto/16 :goto_6

    :cond_15
    move-object/from16 v16, v0

    move-object/from16 v19, v3

    move/from16 v17, v4

    :goto_f
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    move/from16 v4, v17

    move-object/from16 v3, v19

    goto/16 :goto_5

    :cond_16
    move-object/from16 v16, v0

    move-object/from16 v19, v3

    move/from16 v17, v4

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o clear()V
    .locals 4

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AccessibilityCache"

    const-string v2, "clear()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCacheLocked()V

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/view/accessibility/AccessibilityCache;->clearNodesForWindowLocked(I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x7fffffff

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    const/4 v2, -0x1

    iput v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist clearOnNodeAddedListener()V
    .locals 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mOnNodeAddedListener:Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist clearSubTree(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v2, :cond_2

    sget-boolean v2, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "AccessibilityCache"

    const-string v3, "Cache is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v1

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getFocus(IJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 17

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p4

    iget-object v10, v7, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-boolean v0, v7, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    const/4 v11, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AccessibilityCache"

    const-string v1, "Cache is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v10

    return-object v11

    :cond_1
    const/4 v0, 0x2

    if-ne v8, v0, :cond_2

    iget v1, v7, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    iget-wide v2, v7, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    move v12, v1

    move-wide v13, v2

    goto :goto_0

    :cond_2
    iget v1, v7, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    iget-wide v2, v7, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    move v12, v1

    move-wide v13, v2

    :goto_0
    const/4 v1, -0x1

    if-ne v12, v1, :cond_3

    monitor-exit v10

    return-object v11

    :cond_3
    const/4 v1, -0x2

    if-eq v9, v1, :cond_4

    if-eq v9, v12, :cond_4

    monitor-exit v10

    return-object v11

    :cond_4
    iget-object v1, v7, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    move-object v15, v1

    if-nez v15, :cond_5

    monitor-exit v10

    return-object v11

    :cond_5
    invoke-virtual {v15, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v6, v1

    if-nez v6, :cond_6

    monitor-exit v10

    return-object v11

    :cond_6
    cmp-long v1, p2, v13

    if-eqz v1, :cond_a

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v2

    move-object/from16 v1, p0

    move-wide/from16 v4, p2

    move-object/from16 v16, v6

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityCache;->isCachedNodeOrDescendantLocked(JJLandroid/util/LongSparseArray;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    if-eqz v1, :cond_9

    const-string v1, "AccessibilityCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFocus is null with type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne v8, v0, :cond_8

    const-string v0, "FOCUS_ACCESSIBILITY"

    goto :goto_1

    :cond_8
    const-string v0, "FOCUS_INPUT"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    monitor-exit v10

    return-object v11

    :cond_a
    move-object/from16 v16, v6

    :goto_2
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    if-eqz v1, :cond_c

    const-string v1, "AccessibilityCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFocus(0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v13, v14}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " with type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne v8, v0, :cond_b

    const-string v0, "FOCUS_ACCESSIBILITY"

    goto :goto_3

    :cond_b
    const-string v0, "FOCUS_INPUT"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_c
    move-object/from16 v3, v16

    :goto_4
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    monitor-exit v10

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o getNode(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AccessibilityCache"

    const-string v3, "Cache is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-object v2

    :cond_1
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    if-nez v1, :cond_2

    monitor-exit v0

    return-object v2

    :cond_2
    invoke-virtual {v1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v2, :cond_3

    new-instance v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    move-object v2, v3

    :cond_3
    sget-boolean v3, Landroid/view/accessibility/AccessibilityCache;->VERBOSE:Z

    if-eqz v3, :cond_4

    const-string v3, "AccessibilityCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get(0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 6

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AccessibilityCache"

    const-string v3, "Cache is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-object v2

    :cond_1
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-eqz v5, :cond_3

    new-instance v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {v2, v5}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    monitor-exit v0

    return-object v2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getWindowsOnAllDisplays()Landroid/util/SparseArray;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AccessibilityCache"

    const-string v3, "Cache is disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-object v2

    :cond_1
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    if-nez v1, :cond_2

    monitor-exit v0

    return-object v2

    :cond_2
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_8

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_7

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCacheByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lez v6, :cond_6

    iget-object v7, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_4

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v10

    invoke-virtual {v7, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    add-int/lit8 v10, v8, -0x1

    :goto_2
    if-ltz v10, :cond_5

    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/accessibility/AccessibilityWindowInfo;

    new-instance v12, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {v12, v11}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->removeAt(I)V

    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    monitor-exit v0

    return-object v1

    :cond_8
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isEnabled()Z
    .locals 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isNodeInCache(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v2

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v5, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v5, :cond_2

    sget-boolean v5, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "AccessibilityCache"

    const-string v6, "Cache is disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v4

    return v0

    :cond_2
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/LongSparseArray;

    if-nez v5, :cond_3

    monitor-exit v4

    return v0

    :cond_3
    invoke-virtual {v5, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    const/4 v0, 0x1

    :cond_4
    monitor-exit v4

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 10

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "AccessibilityCache"

    const-string v3, "Cache is disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    sget-boolean v2, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "AccessibilityCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAccessibilityEvent("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    const-wide/32 v4, 0x7fffffff

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityCache;->mValidWindowCacheTimeStamp:J

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowChanges()I

    move-result v4

    const/16 v5, 0x80

    if-ne v4, v5, :cond_5

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCacheLocked()V

    goto/16 :goto_1

    :sswitch_1
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    iget v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v7

    if-ne v6, v7, :cond_7

    iget v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    iget-wide v7, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v6, v7, v8}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    move-object v0, v6

    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    const/4 v4, -0x1

    iput v4, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    goto/16 :goto_1

    :sswitch_2
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    cmp-long v4, v6, v4

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v4, v5, v6}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iput v4, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    iget v4, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocusedWindow:I

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v4, v5, v6}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v5

    invoke-direct {p0, v4, v5, v6}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    goto :goto_1

    :sswitch_4
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v8

    and-int/2addr v8, v3

    if-eqz v8, :cond_4

    invoke-direct {p0, v5, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v5, v6, v7}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    move-object v0, v8

    :goto_0
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    :cond_5
    :sswitch_5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityCache;->mValidWindowCacheTimeStamp:J

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    goto :goto_1

    :sswitch_6
    iget-wide v6, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    cmp-long v4, v6, v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    invoke-direct {p0, v4, v5, v6}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    :cond_6
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iput v4, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocusWindow:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    invoke-direct {p0, v4, v5, v6}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    :sswitch_7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v5

    invoke-direct {p0, v4, v5, v6}, Landroid/view/accessibility/AccessibilityCache;->removeCachedNodeLocked(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    move-object v0, v4

    nop

    :cond_7
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_9

    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string v1, "AccessibilityCache"

    const-string v2, "Refreshing and re-adding cached node."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    invoke-virtual {v1, v0, v3}, Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;->refreshNode(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityCache;->add(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_9
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->checkIntegrity()V

    :cond_a
    return-void

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x4 -> :sswitch_7
        0x8 -> :sswitch_6
        0x10 -> :sswitch_7
        0x20 -> :sswitch_5
        0x800 -> :sswitch_4
        0x1000 -> :sswitch_3
        0x2000 -> :sswitch_7
        0x8000 -> :sswitch_2
        0x10000 -> :sswitch_1
        0x400000 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist registerOnNodeAddedListener(Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;)V
    .locals 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityCache;->mOnNodeAddedListener:Landroid/view/accessibility/AccessibilityCache$OnNodeAddedListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setEnabled(Z)V
    .locals 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setWindowsOnAllDisplays(Landroid/util/SparseArray;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;>;J)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mEnabled:Z

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "AccessibilityCache"

    const-string v2, "Cache is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    sget-boolean v1, Landroid/view/accessibility/AccessibilityCache;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "AccessibilityCache"

    const-string v2, "Set windows"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-wide v1, p0, Landroid/view/accessibility/AccessibilityCache;->mValidWindowCacheTimeStamp:J

    cmp-long v1, v1, p2

    if-lez v1, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCacheLocked()V

    if-nez p1, :cond_4

    monitor-exit v0

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    nop

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_6

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {p0, v4, v7}, Landroid/view/accessibility/AccessibilityCache;->addWindowByDisplayLocked(ILandroid/view/accessibility/AccessibilityWindowInfo;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
