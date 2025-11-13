.class Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityNodePrefetcher"
.end annotation


# instance fields
.field private blacklist mFetchFlags:I

.field private blacklist mInterruptPrefetch:Z

.field private final greylist-max-o mTempViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmFetchFlags(Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;I)V
    .locals 0

    iput p1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mFetchFlags:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInterruptPrefetch(Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mInterruptPrefetch:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/AccessibilityInteractionController;)V
    .locals 0

    .line 1287
    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1289
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;)V

    return-void
.end method

.method private blacklist addChildrenOfRoot(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Landroid/view/AccessibilityInteractionController$PrefetchDeque;)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootInfo"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p3, "rootProvider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .param p4, "deque"    # Landroid/view/AccessibilityInteractionController$PrefetchDeque;

    .line 1342
    if-nez p3, :cond_0

    .line 1343
    new-instance v0, Landroid/view/AccessibilityInteractionController$ViewNode;

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {v0, v1, p1}, Landroid/view/AccessibilityInteractionController$ViewNode;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)V

    .local v0, "rootDequeNode":Landroid/view/AccessibilityInteractionController$DequeNode;
    goto :goto_0

    .line 1345
    .end local v0    # "rootDequeNode":Landroid/view/AccessibilityInteractionController$DequeNode;
    :cond_0
    new-instance v0, Landroid/view/AccessibilityInteractionController$VirtualNode;

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3, p3}, Landroid/view/AccessibilityInteractionController$VirtualNode;-><init>(Landroid/view/AccessibilityInteractionController;JLandroid/view/accessibility/AccessibilityNodeProvider;)V

    .line 1348
    .restart local v0    # "rootDequeNode":Landroid/view/AccessibilityInteractionController$DequeNode;
    :goto_0
    invoke-interface {v0, p2, p4}, Landroid/view/AccessibilityInteractionController$DequeNode;->addChildren(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/AccessibilityInteractionController$PrefetchDeque;)V

    .line 1349
    return-void
.end method

.method private blacklist enforceNodeTreeConsistent(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)V
    .locals 13
    .param p1, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1363
    .local p2, "nodes":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 1365
    .local v0, "nodeMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 1366
    .local v1, "nodeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1367
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1368
    .local v3, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1366
    .end local v3    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1373
    .end local v2    # "i":I
    :cond_0
    move-object v2, p1

    .line 1374
    .local v2, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_1
    if-eqz v2, :cond_1

    .line 1375
    move-object p1, v2

    .line 1376
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    goto :goto_1

    .line 1380
    :cond_1
    const/4 v3, 0x0

    .line 1381
    .local v3, "accessFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v4, 0x0

    .line 1382
    .local v4, "inputFocus":Landroid/view/accessibility/AccessibilityNodeInfo;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1383
    .local v5, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 1384
    .local v6, "fringe":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v6, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1386
    :goto_2
    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    .line 1387
    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1390
    .local v7, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, " in window:"

    if-eqz v8, :cond_8

    .line 1397
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1398
    if-nez v3, :cond_2

    .line 1403
    move-object v3, v7

    goto :goto_3

    .line 1399
    :cond_2
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Duplicate accessibility focus:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v10}, Landroid/view/AccessibilityInteractionController;->-$$Nest$fgetmViewRootImpl(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;

    move-result-object v10

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v10, v10, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1408
    :cond_3
    :goto_3
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1409
    if-nez v4, :cond_4

    .line 1414
    move-object v4, v7

    goto :goto_4

    .line 1410
    :cond_4
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Duplicate input focus: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v10}, Landroid/view/AccessibilityInteractionController;->-$$Nest$fgetmViewRootImpl(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;

    move-result-object v10

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v10, v10, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1418
    :cond_5
    :goto_4
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v8

    .line 1419
    .local v8, "childCount":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_5
    if-ge v9, v8, :cond_7

    .line 1420
    invoke-virtual {v7, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v10

    .line 1421
    .local v10, "childId":J
    invoke-virtual {v0, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1422
    .local v12, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v12, :cond_6

    .line 1423
    invoke-interface {v6, v12}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1419
    .end local v10    # "childId":J
    .end local v12    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1426
    .end local v7    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v8    # "childCount":I
    .end local v9    # "j":I
    :cond_7
    goto/16 :goto_2

    .line 1391
    .restart local v7    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_8
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Duplicate node: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v10}, Landroid/view/AccessibilityInteractionController;->-$$Nest$fgetmViewRootImpl(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;

    move-result-object v10

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v10, v10, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1429
    .end local v7    # "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_9
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "j":I
    :goto_6
    if-ltz v7, :cond_b

    .line 1430
    invoke-virtual {v0, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1431
    .local v8, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1429
    .end local v8    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 1432
    .restart local v8    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_a
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Disconnected node: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1435
    .end local v7    # "j":I
    .end local v8    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_b
    return-void
.end method

.method private blacklist isFlagSet(I)Z
    .locals 1
    .param p1, "strategy"    # I

    .line 1352
    iget v0, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mFetchFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V
    .locals 8
    .param p1, "root"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1502
    .local p2, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p0, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_8

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1505
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1507
    .local v0, "addedChildren":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    .line 1508
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1510
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 1511
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1512
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 1513
    invoke-virtual {p0, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 1536
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1514
    return-void

    .line 1516
    :cond_1
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1517
    .local v4, "child":Landroid/view/View;
    iget-object v5, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v5, v4}, Landroid/view/AccessibilityInteractionController;->-$$Nest$misShown(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1518
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v5

    .line 1519
    .local v5, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v5, :cond_3

    .line 1520
    invoke-virtual {v4}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    .line 1521
    .local v6, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v6, :cond_2

    .line 1522
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1523
    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    .end local v6    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    goto :goto_1

    .line 1526
    :cond_3
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    .line 1528
    .restart local v6    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v6, :cond_4

    .line 1529
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1530
    invoke-virtual {v0, v4, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1512
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v6    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1536
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1537
    nop

    .line 1538
    invoke-virtual {p0, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1539
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1540
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1541
    .local v4, "addedChild":Landroid/view/View;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1542
    .local v5, "virtualRoot":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v5, :cond_6

    .line 1543
    invoke-direct {p0, v4, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    goto :goto_3

    .line 1545
    :cond_6
    nop

    .line 1546
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v6

    .line 1547
    .local v6, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    invoke-direct {p0, v5, v6, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    .line 1549
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v4    # "addedChild":Landroid/view/View;
    .end local v5    # "virtualRoot":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v6    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :goto_3
    goto :goto_2

    .line 1551
    :cond_7
    return-void

    .line 1536
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1537
    throw v2

    .line 1503
    .end local v0    # "addedChildren":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v1    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_8
    :goto_4
    return-void
.end method

.method private greylist-max-o prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V
    .locals 6
    .param p1, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1631
    .local p3, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 1632
    .local v0, "initialOutInfosSize":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    .line 1633
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1634
    invoke-virtual {p0, p3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1635
    return-void

    .line 1637
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v3

    .line 1638
    .local v3, "childNodeId":J
    nop

    .line 1639
    invoke-static {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v5

    .line 1638
    invoke-virtual {p2, v5}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 1640
    .local v5, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v5, :cond_1

    .line 1641
    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1633
    .end local v3    # "childNodeId":J
    .end local v5    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1644
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p0, p3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1645
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .line 1646
    .local v2, "addedChildCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 1647
    add-int v4, v0, v3

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1648
    .local v4, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v4, p2, p3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    .line 1646
    .end local v4    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1651
    .end local v2    # "addedChildCount":I
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private greylist-max-o prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1439
    .local p2, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p0, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1440
    return-void

    .line 1442
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    .line 1443
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {p0, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1444
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 1445
    .local v1, "parentView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 1446
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v2, :cond_1

    .line 1447
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1449
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    .line 1450
    .end local v1    # "parentView":Landroid/view/View;
    .end local v2    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_0

    .line 1451
    :cond_2
    return-void
.end method

.method private greylist-max-o prefetchPredecessorsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V
    .locals 8
    .param p1, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "providerHost"    # Landroid/view/View;
    .param p3, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1556
    .local p4, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    .line 1557
    .local v0, "initialResultSize":I
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v1

    .line 1558
    .local v1, "parentNodeId":J
    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    .line 1559
    .local v3, "accessibilityViewId":I
    :goto_0
    const v4, 0x7fffffff

    if-eq v3, v4, :cond_5

    .line 1560
    invoke-virtual {p0, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1561
    return-void

    .line 1563
    :cond_0
    nop

    .line 1564
    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v4

    .line 1565
    .local v4, "virtualDescendantId":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1566
    invoke-virtual {p2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v5

    if-ne v3, v5, :cond_1

    goto :goto_1

    .line 1585
    :cond_1
    invoke-direct {p0, p2, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    .line 1586
    return-void

    .line 1568
    :cond_2
    :goto_1
    invoke-virtual {p3, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    .line 1569
    .local v5, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v5, :cond_4

    .line 1572
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v6

    .line 1573
    .local v6, "currentResultSize":I
    add-int/lit8 v7, v6, -0x1

    .local v7, "i":I
    :goto_2
    if-lt v7, v0, :cond_3

    .line 1574
    invoke-interface {p4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1573
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 1578
    .end local v7    # "i":I
    :cond_3
    return-void

    .line 1580
    .end local v6    # "currentResultSize":I
    :cond_4
    invoke-interface {p4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1581
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v1

    .line 1582
    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    .line 1584
    .end local v5    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    nop

    .line 1588
    .end local v4    # "virtualDescendantId":I
    goto :goto_0

    .line 1589
    :cond_5
    return-void
.end method

.method private blacklist prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;Z)V
    .locals 9
    .param p1, "current"    # Landroid/view/View;
    .param p3, "predecessorsPrefetched"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 1455
    .local p2, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p0, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1456
    return-void

    .line 1458
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    .line 1459
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    .line 1460
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 1461
    .local v1, "parentGroup":Landroid/view/ViewGroup;
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    .line 1462
    .local v2, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1464
    if-nez p3, :cond_1

    .line 1465
    :try_start_0
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    .line 1466
    invoke-virtual {v3}, Landroid/view/ViewGroup;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 1467
    .local v3, "parentInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v3, :cond_1

    .line 1468
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1471
    .end local v3    # "parentInfo":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 1472
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1473
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 1474
    invoke-virtual {p0, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    .line 1495
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1475
    return-void

    .line 1477
    :cond_2
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1478
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v7

    if-eq v6, v7, :cond_4

    iget-object v6, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    .line 1479
    invoke-static {v6, v5}, Landroid/view/AccessibilityInteractionController;->-$$Nest$misShown(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1480
    const/4 v6, 0x0

    .line 1481
    .local v6, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    nop

    .line 1482
    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v7

    .line 1483
    .local v7, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v7, :cond_3

    .line 1484
    invoke-virtual {v5}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    move-object v6, v8

    goto :goto_1

    .line 1486
    :cond_3
    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    move-object v6, v8

    .line 1489
    :goto_1
    if-eqz v6, :cond_4

    .line 1490
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1473
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v7    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1495
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1496
    goto :goto_2

    .line 1495
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1496
    throw v3

    .line 1498
    .end local v1    # "parentGroup":Landroid/view/ViewGroup;
    .end local v2    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_6
    :goto_2
    return-void
.end method

.method private blacklist prefetchSiblingsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;Z)V
    .locals 16
    .param p1, "current"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p2, "providerHost"    # Landroid/view/View;
    .param p3, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;
    .param p5, "predecessorsPrefetched"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 1594
    .local p4, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v4

    .line 1595
    .local v4, "parentNodeId":J
    nop

    .line 1596
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v6

    .line 1597
    .local v6, "parentAccessibilityViewId":I
    nop

    .line 1598
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v7

    .line 1599
    .local v7, "parentVirtualDescendantId":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 1600
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v8

    if-ne v6, v8, :cond_0

    move-object/from16 v8, p2

    goto :goto_0

    .line 1625
    :cond_0
    move-object/from16 v8, p2

    invoke-direct {v0, v8, v2, v3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;Z)V

    goto :goto_2

    .line 1599
    :cond_1
    move-object/from16 v8, p2

    .line 1601
    :goto_0
    nop

    .line 1602
    invoke-virtual {v1, v7}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    .line 1603
    .local v9, "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v9, :cond_5

    .line 1604
    if-nez v3, :cond_2

    .line 1605
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1607
    :cond_2
    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v10

    .line 1608
    .local v10, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v10, :cond_5

    .line 1609
    invoke-virtual {v0, v2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1610
    return-void

    .line 1612
    :cond_3
    invoke-virtual {v9, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v12

    .line 1613
    .local v12, "childNodeId":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v14

    cmp-long v14, v12, v14

    if-eqz v14, :cond_4

    .line 1614
    nop

    .line 1615
    invoke-static {v12, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v14

    .line 1616
    .local v14, "childVirtualDescendantId":I
    invoke-virtual {v1, v14}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v15

    .line 1618
    .local v15, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v15, :cond_4

    .line 1619
    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1608
    .end local v12    # "childNodeId":J
    .end local v14    # "childVirtualDescendantId":I
    .end local v15    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1624
    .end local v9    # "parent":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v10    # "childCount":I
    .end local v11    # "i":I
    :cond_5
    nop

    .line 1627
    :goto_2
    return-void
.end method


# virtual methods
.method public blacklist prefetchAccessibilityNodeInfos(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/util/List;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 1295
    .local p3, "outInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-nez p2, :cond_0

    .line 1296
    return-void

    .line 1298
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v6

    .line 1299
    .local v6, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    const/4 v0, 0x1

    .line 1300
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->isFlagSet(I)Z

    move-result v7

    .line 1301
    .local v7, "prefetchPredecessors":Z
    const/4 v8, 0x4

    const/4 v0, 0x2

    if-nez v6, :cond_3

    .line 1302
    if-eqz v7, :cond_1

    .line 1303
    invoke-direct {p0, p1, p3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    .line 1305
    :cond_1
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1306
    invoke-direct {p0, p1, p3, v7}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;Z)V

    .line 1308
    :cond_2
    invoke-direct {p0, v8}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1309
    invoke-direct {p0, p1, p3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    goto :goto_0

    .line 1312
    :cond_3
    if-eqz v7, :cond_4

    .line 1313
    invoke-direct {p0, p2, p1, v6, p3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    .line 1315
    :cond_4
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1316
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, v6

    move-object v4, p3

    move v5, v7

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;Z)V

    .line 1319
    :cond_5
    invoke-direct {p0, v8}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1320
    invoke-direct {p0, p2, v6, p3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    .line 1323
    :cond_6
    :goto_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->isFlagSet(I)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x10

    .line 1324
    invoke-direct {p0, v0}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->isFlagSet(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1325
    :cond_7
    invoke-virtual {p0, p3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->shouldStopPrefetching(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1326
    return-void

    .line 1328
    :cond_8
    new-instance v0, Landroid/view/AccessibilityInteractionController$PrefetchDeque;

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    iget v2, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mFetchFlags:I

    and-int/lit8 v2, v2, 0x1c

    invoke-direct {v0, v1, v2, p3}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;-><init>(Landroid/view/AccessibilityInteractionController;ILjava/util/List;)V

    .line 1331
    .local v0, "deque":Landroid/view/AccessibilityInteractionController$PrefetchDeque;, "Landroid/view/AccessibilityInteractionController$PrefetchDeque<Landroid/view/AccessibilityInteractionController$DequeNode;>;"
    invoke-direct {p0, p1, p2, v6, v0}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->addChildrenOfRoot(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Landroid/view/AccessibilityInteractionController$PrefetchDeque;)V

    .line 1332
    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrefetchDeque;->performTraversalAndPrefetch()V

    .line 1337
    .end local v0    # "deque":Landroid/view/AccessibilityInteractionController$PrefetchDeque;, "Landroid/view/AccessibilityInteractionController$PrefetchDeque<Landroid/view/AccessibilityInteractionController$DequeNode;>;"
    :cond_9
    return-void
.end method

.method public blacklist shouldStopPrefetching(Ljava/util/List;)Z
    .locals 2
    .param p1, "prefetchedInfos"    # Ljava/util/List;

    .line 1356
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v0}, Landroid/view/AccessibilityInteractionController;->-$$Nest$fgetmHandler(Landroid/view/AccessibilityInteractionController;)Landroid/view/AccessibilityInteractionController$PrivateHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;->hasUserInteractiveMessagesWaiting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mInterruptPrefetch:Z

    if-nez v0, :cond_1

    .line 1357
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1356
    :goto_0
    return v0
.end method
