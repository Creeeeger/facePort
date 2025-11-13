.class public final Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final logger:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;

.field public final nodes:Ljava/util/Map;

.field public final rootNode:Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->logger:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;

    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->rootNode:Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->nodes:Ljava/util/Map;

    return-void
.end method

.method public static final detachChildren$lambda$4$detachRecursively(Ljava/util/Map;Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;Ljava/util/Map;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, -0x1

    const/4 v5, 0x1

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-object v7, v3

    check-cast v7, Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;

    iget-object v8, v2, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getChildCount()I

    move-result v9

    sub-int/2addr v9, v5

    :goto_0
    if-ge v4, v9, :cond_c

    invoke-interface {v8, v9}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v11, v0

    check-cast v11, Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    if-eqz v10, :cond_b

    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    invoke-virtual {v7, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v12, :cond_0

    check-cast v12, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->parent:Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;

    if-eqz v12, :cond_0

    invoke-virtual {v1, v12}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->getNode(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;)Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    move-result-object v12

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    if-nez v12, :cond_1

    move v15, v5

    goto :goto_2

    :cond_1
    const/4 v15, 0x0

    :goto_2
    if-eqz v15, :cond_2

    iget-object v14, v1, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->nodes:Ljava/util/Map;

    invoke-interface {v14, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v15, :cond_3

    if-nez v6, :cond_3

    invoke-interface {v11}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->offerToKeepInParentForAnimation()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v11}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getNodeLabel()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getNodeLabel()Ljava/lang/String;

    move-result-object v14

    xor-int/2addr v15, v5

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->logger:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v13, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger$logSkipDetachingChild$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger$logSkipDetachingChild$2;

    const-string v2, "NotifViewManager"

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    move-object/from16 v16, v7

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v5, v13, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v12, v5, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object v14, v5, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput-boolean v15, v5, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {v4, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto :goto_5

    :cond_3
    move-object/from16 v16, v7

    move v7, v5

    invoke-interface {v11}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getNodeLabel()Ljava/lang/String;

    move-result-object v18

    xor-int/lit8 v2, v15, 0x1

    if-nez v6, :cond_4

    move/from16 v22, v7

    goto :goto_3

    :cond_4
    const/16 v22, 0x0

    :goto_3
    invoke-interface {v8}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getNodeLabel()Ljava/lang/String;

    move-result-object v19

    if-eqz v12, :cond_5

    iget-object v4, v12, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getNodeLabel()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v20, v4

    goto :goto_4

    :cond_5
    const/16 v20, 0x0

    :goto_4
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->logger:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;

    move-object/from16 v17, v4

    move/from16 v21, v2

    invoke-virtual/range {v17 .. v22}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;->logDetachingChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v5, "ShadeNode#removeChild"

    invoke-static {v5}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_6
    :try_start_0
    invoke-interface {v8, v11, v2}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->removeChild(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Z)V

    invoke-interface {v11}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->onViewRemoved()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_7
    const/4 v2, 0x0

    iput-object v2, v10, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->parent:Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    goto :goto_5

    :catchall_0
    move-exception v0

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_8
    throw v0

    :cond_9
    move-object/from16 v16, v7

    move v7, v5

    :goto_5
    invoke-interface {v11}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getChildCount()I

    move-result v2

    if-lez v2, :cond_a

    invoke-static {v0, v1, v10, v3}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->detachChildren$lambda$4$detachRecursively(Ljava/util/Map;Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;Ljava/util/Map;)V

    :cond_a
    const/4 v2, -0x1

    goto :goto_6

    :cond_b
    move-object/from16 v16, v7

    move v7, v5

    move v2, v4

    :goto_6
    add-int/2addr v9, v2

    move v4, v2

    move v5, v7

    move-object/from16 v7, v16

    move-object/from16 v2, p2

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public static registerNodes(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;Ljava/util/Map;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->children:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->children:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->registerNodes(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lcom/android/systemui/statusbar/notification/collection/render/DuplicateNodeException;

    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getNodeLabel()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Node "

    const-string v1, " appears more than once"

    invoke-static {v0, p1, v1}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/render/DuplicateNodeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final applySpec(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;)V
    .locals 5

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->rootNode:Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    const-string v2, "Tree root "

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v4, "ShadeViewDiffer.applySpec"

    invoke-static {v4}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->treeToMap(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;)Ljava/util/Map;

    move-result-object p1

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->detachChildren(Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;Ljava/util/Map;)V

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->attachChildren(Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;Ljava/util/Map;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getNodeLabel()Ljava/lang/String;

    move-result-object p1

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getNodeLabel()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match own root at "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_3
    throw p0
.end method

.method public final attachChildren(Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;Ljava/util/Map;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v4, "attachChildren"

    invoke-static {v4}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-object v5, v2

    check-cast v5, Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_f

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->children:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    add-int/lit8 v7, v6, 0x1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;

    invoke-interface {v4, v6}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->getNode(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;)Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    :try_start_1
    invoke-interface {v11}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getView()Landroid/view/View;

    move-result-object v12

    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-interface {v11}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->removeFromParentIfKeptForAnimation()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->logger:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;

    invoke-interface {v11}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getNodeLabel()Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v12 .. v17}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;->logDetachingChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    :goto_1
    iget-object v9, v10, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->parent:Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v12, "NotifViewManager"

    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->logger:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;

    if-nez v9, :cond_5

    :try_start_2
    invoke-interface {v11}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getNodeLabel()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getNodeLabel()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    move-object/from16 v17, v5

    sget-object v5, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger$logAttachingChild$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger$logAttachingChild$2;

    iget-object v13, v13, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    move/from16 v18, v7

    const/4 v7, 0x0

    invoke-virtual {v13, v12, v14, v5, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v9, v7, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    move-object v7, v5

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v15, v7, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput v6, v7, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {v13, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v7, "ShadeNode#addChildAt"

    invoke-static {v7}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    invoke-interface {v4, v11, v6}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->addChildAt(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;I)V

    invoke-interface {v11}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->onViewAdded()V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_3

    :try_start_4
    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_3
    iput-object v1, v10, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->parent:Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_4
    throw v0

    :cond_5
    move-object/from16 v17, v5

    move/from16 v18, v7

    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v11}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getNodeLabel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getNodeLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v14, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger$logMovingChild$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger$logMovingChild$2;

    iget-object v13, v13, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v15, 0x0

    invoke-virtual {v13, v12, v9, v14, v15}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v5, v12, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    move-object v5, v9

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v7, v5, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    iput v6, v5, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    invoke-virtual {v13, v9}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v7, "ShadeNode#moveChildTo"

    invoke-static {v7}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    :try_start_5
    invoke-interface {v4, v11, v6}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->moveChildTo(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;I)V

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v5, :cond_b

    :try_start_6
    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    goto :goto_3

    :catchall_2
    move-exception v0

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_7
    throw v0

    :cond_8
    const/4 v15, 0x0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-interface {v11}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getNodeLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getNodeLabel()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v10, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->parent:Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    if-eqz v4, :cond_9

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getNodeLabel()Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_9
    move-object v14, v15

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Child "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " should have parent "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but is actually "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object/from16 v17, v5

    move/from16 v18, v7

    :cond_b
    :goto_3
    invoke-interface {v11}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->resetKeepInParentForAnimation()V

    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    iget-object v5, v8, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->children:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_c

    invoke-virtual {v0, v10, v2}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->attachChildren(Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;Ljava/util/Map;)V

    :cond_c
    move-object/from16 v5, v17

    move/from16 v6, v18

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_e
    return-void

    :cond_f
    :try_start_7
    const-string v0, "Required value was null."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_4
    if-eqz v3, :cond_10

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_10
    throw v0
.end method

.method public final detachChildren(Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;Ljava/util/Map;)V
    .locals 5

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "detachChildren"

    invoke-static {v1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->nodes:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    move v2, v3

    :cond_1
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;->getView()Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-static {v3, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->detachChildren$lambda$4$detachRecursively(Ljava/util/Map;Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;Ljava/util/Map;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_3
    return-void

    :goto_1
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_4
    throw p0
.end method

.method public final getNode(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;)Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->nodes:Ljava/util/Map;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->nodes:Ljava/util/Map;

    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeNode;->controller:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final treeToMap(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;)Ljava/util/Map;
    .locals 5

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :try_start_0
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->registerNodes(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/collection/render/DuplicateNodeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDiffer;->logger:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    sget-object v2, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger$logDuplicateNodeInTree$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger$logDuplicateNodeInTree$2;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewDifferLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v4, "NotifViewManager"

    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v2, v3, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-static {p1, v2, v4}, Lcom/android/systemui/statusbar/notification/collection/render/NodeControllerKt;->treeSpecToStrHelper(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    throw v0
.end method
