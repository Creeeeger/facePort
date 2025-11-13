.class public final Lcom/android/wm/shell/bubbles/BubbleController$10;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubbleData$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyUpdate(Lcom/android/wm/shell/bubbles/BubbleData$Update;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    iget-object v6, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v6, :cond_1

    iget-object v6, v6, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v6, "null"

    :goto_1
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-boolean v6, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    iget-boolean v8, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expandedChanged:Z

    iget-boolean v9, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expanded:Z

    iget-boolean v10, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectionChanged:Z

    iget-object v11, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v11, :cond_2

    invoke-interface {v11}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_2
    const-string v11, "null"

    :goto_2
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-object v11, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v11, :cond_3

    iget-object v11, v11, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    goto :goto_3

    :cond_3
    const-string v11, "null"

    :goto_3
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget-object v11, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->unsuppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v11, :cond_4

    iget-object v11, v11, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    goto :goto_4

    :cond_4
    const-string v11, "null"

    :goto_4
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget-boolean v11, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->shouldShowEducation:Z

    iget-boolean v15, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->showOverflowChanged:Z

    sget-object v17, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object v6, v2

    move-object/from16 v8, v16

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v15, v21

    move-object/from16 v16, v22

    filled-new-array/range {v5 .. v16}, [Ljava/lang/Object;

    move-result-object v21

    const v19, 0xf03fcc

    const/16 v20, 0x0

    const-wide v5, 0x528d2481d5b233edL    # 4.6378544619346984E89

    move-object/from16 v16, v17

    move-wide/from16 v17, v5

    invoke-static/range {v16 .. v21}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleController;->ensureBubbleViewsAndWindowCreated()V

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleController;->loadOverflowBubblesFromDisk()V

    iget-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->showOverflowChanged:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;

    iget-object v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->overflowBubbles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    invoke-interface {v2}, Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;->bubbleOverflowChanged()V

    :cond_6
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v5, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mOverflow:Lcom/android/wm/shell/bubbles/BubbleOverflow;

    if-nez v5, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {v6}, Lcom/android/wm/shell/bubbles/Bubble;->showDot()Z

    move-result v6

    if-eqz v6, :cond_8

    iput-boolean v4, v5, Lcom/android/wm/shell/bubbles/BubbleOverflow;->showDot:Z

    iget-object v2, v5, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v5, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz v2, :cond_a

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/bubbles/BadgedImageView;->updateDotVisibility(Z)V

    goto :goto_5

    :cond_9
    iput-boolean v3, v5, Lcom/android/wm/shell/bubbles/BubbleOverflow;->showDot:Z

    iget-object v2, v5, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v5, Lcom/android/wm/shell/bubbles/BubbleOverflow;->overflowBtn:Lcom/android/wm/shell/bubbles/BadgedImageView;

    if-eqz v2, :cond_a

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/bubbles/BadgedImageView;->updateDotVisibility(Z)V

    :cond_a
    :goto_5
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    if-eqz v2, :cond_b

    invoke-interface {v2, v1}, Lcom/android/wm/shell/bubbles/BubbleData$Listener;->applyUpdate(Lcom/android/wm/shell/bubbles/BubbleData$Update;)V

    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v8, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v8, v8, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;

    invoke-interface {v8, v7}, Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;->removeBubble(Lcom/android/wm/shell/bubbles/Bubble;)V

    const/16 v8, 0x8

    if-eq v6, v8, :cond_c

    const/16 v8, 0xe

    if-ne v6, v8, :cond_d

    goto :goto_6

    :cond_d
    const/4 v8, 0x5

    if-eq v6, v8, :cond_e

    const/16 v9, 0xc

    if-ne v6, v9, :cond_f

    :cond_e
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    iget-object v9, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v9, v9, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v10, v7, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/wm/shell/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v9, v9, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v10, v7, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/wm/shell/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_11

    invoke-virtual {v7}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    move-result v9

    if-eqz v9, :cond_10

    if-eq v6, v8, :cond_10

    const/16 v8, 0x9

    if-ne v6, v8, :cond_11

    :cond_10
    iget-object v6, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v6, v6, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$5;

    iget-object v7, v7, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    iget-object v8, v6, Lcom/android/systemui/wmshell/BubblesManager$5;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda4;

    invoke-direct {v9, v6, v7}, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/wmshell/BubblesManager$5;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_11
    iget-boolean v6, v7, Lcom/android/wm/shell/bubbles/Bubble;->mIsBubble:Z

    if-eqz v6, :cond_12

    iget-object v6, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {v6, v7, v3}, Lcom/android/wm/shell/bubbles/BubbleController;->setIsBubble(Lcom/android/wm/shell/bubbles/Bubble;Z)V

    :cond_12
    iget-object v6, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v6, v6, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$5;

    iget-object v7, v7, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    iget-object v8, v6, Lcom/android/systemui/wmshell/BubblesManager$5;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda1;

    const/4 v10, 0x2

    invoke-direct {v9, v6, v7, v10}, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wmshell/BubblesManager$5;Ljava/lang/Object;I)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_6

    :cond_13
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v6, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mDataRepository:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    iget v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->transform(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v7, v6, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->volatileRepository:Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;

    monitor-enter v7

    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_14
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    invoke-virtual {v7, v2}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->getEntities(I)Ljava/util/List;

    move-result-object v12

    new-instance v13, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$removeBubbles$1$1;

    invoke-direct {v13, v11}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository$removeBubbles$1$1;-><init>(Lcom/android/wm/shell/bubbles/storage/BubbleEntity;)V

    invoke-interface {v12, v13}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_15
    invoke-virtual {v7, v8}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->uncache(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_16

    invoke-static {v6}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->persistToDisk$default(Lcom/android/wm/shell/bubbles/BubbleDataRepository;)V

    :cond_16
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v2, :cond_18

    iget-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v6, v5, Lcom/android/wm/shell/bubbles/BubbleController;->mDataRepository:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    iget v5, v5, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->transform(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v7, v6, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->volatileRepository:Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;

    invoke-virtual {v7, v5, v2}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->addBubbles(ILjava/util/List;)V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_17

    invoke-static {v6}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->persistToDisk$default(Lcom/android/wm/shell/bubbles/BubbleDataRepository;)V

    :cond_17
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;

    iget-object v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    invoke-interface {v2, v5}, Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;->addBubble(Lcom/android/wm/shell/bubbles/Bubble;)V

    :cond_18
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v2, :cond_19

    iget-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v5, v5, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;

    invoke-interface {v5, v2}, Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;->updateBubble(Lcom/android/wm/shell/bubbles/Bubble;)V

    :cond_19
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v2, :cond_1a

    iget-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v5, v5, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;

    invoke-interface {v5, v2, v4}, Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;->suppressionChanged(Lcom/android/wm/shell/bubbles/Bubble;Z)V

    :cond_1a
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->unsuppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v2, :cond_1b

    iget-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v5, v5, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;

    invoke-interface {v5, v2, v3}, Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;->suppressionChanged(Lcom/android/wm/shell/bubbles/Bubble;Z)V

    :cond_1b
    iget-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expandedChanged:Z

    if-eqz v2, :cond_1c

    iget-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expanded:Z

    if-nez v2, :cond_1c

    move v2, v4

    goto :goto_8

    :cond_1c
    move v2, v3

    :goto_8
    iget-boolean v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    if-eqz v5, :cond_1e

    iget-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v6, v5, Lcom/android/wm/shell/bubbles/BubbleController;->mDataRepository:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    iget v5, v5, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    iget-object v7, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->transform(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iget-object v8, v6, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->volatileRepository:Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;

    invoke-virtual {v8, v5, v7}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->addBubbles(ILjava/util/List;)V

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v4

    if-eqz v5, :cond_1d

    invoke-static {v6}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->persistToDisk$default(Lcom/android/wm/shell/bubbles/BubbleDataRepository;)V

    :cond_1d
    iget-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v5, v5, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;

    iget-object v6, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    xor-int/lit8 v7, v2, 0x1

    invoke-interface {v5, v6, v7}, Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;->bubbleOrderChanged(Ljava/util/List;Z)V

    :cond_1e
    if-eqz v2, :cond_1f

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;

    invoke-interface {v2, v3}, Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;->expansionChanged(Z)V

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$5;

    iget-object v5, v2, Lcom/android/systemui/wmshell/BubblesManager$5;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;

    invoke-direct {v6, v2, v3}, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wmshell/BubblesManager$5;Z)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1f
    iget-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectionChanged:Z

    if-eqz v2, :cond_20

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;

    iget-object v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v2, v5}, Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;->selectionChanged(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    :cond_20
    iget-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expandedChanged:Z

    if-eqz v2, :cond_21

    iget-boolean v2, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expanded:Z

    if-eqz v2, :cond_21

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleViewCallback:Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;

    invoke-interface {v2, v4}, Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;->expansionChanged(Z)V

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$5;

    iget-object v5, v2, Lcom/android/systemui/wmshell/BubblesManager$5;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;

    invoke-direct {v6, v2, v4}, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wmshell/BubblesManager$5;Z)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_21
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/systemui/wmshell/BubblesManager$5;

    const-string v5, "BubbleData.Listener.applyUpdate"

    iget-object v6, v2, Lcom/android/systemui/wmshell/BubblesManager$5;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda1;

    const/4 v8, 0x1

    invoke-direct {v7, v2, v5, v8}, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wmshell/BubblesManager$5;Ljava/lang/Object;I)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleController;->updateBubbleViews()V

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->mCachedState:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    monitor-enter v2

    :try_start_1
    iget-boolean v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectionChanged:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_23

    iget-object v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v5, :cond_22

    invoke-interface {v5}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :catchall_1
    move-exception v0

    goto/16 :goto_13

    :cond_22
    move-object v5, v6

    :goto_9
    iput-object v5, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mSelectedBubbleKey:Ljava/lang/String;

    :cond_23
    iget-boolean v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expandedChanged:Z

    if-eqz v5, :cond_24

    iget-boolean v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expanded:Z

    iput-boolean v5, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mIsStackExpanded:Z

    :cond_24
    iget-boolean v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryChanged:Z

    if-eqz v5, :cond_26

    iget-object v5, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->this$1:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object v5, v5, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v5, v5, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v7, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryGroup:Ljava/lang/String;

    iget-object v5, v5, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedGroupKeys:Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_25

    iget-object v7, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mSuppressedGroupToNotifKeys:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryGroup:Ljava/lang/String;

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_25
    iget-object v5, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mSuppressedGroupToNotifKeys:Ljava/util/HashMap;

    iget-object v7, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryGroup:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    :goto_a
    iget-object v5, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mTmpBubbles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mTmpBubbles:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mTmpBubbles:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->overflowBubbles:Ljava/util/List;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mSuppressedBubbleKeys:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    iget-object v5, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mShortcutIdToBubble:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    iget-object v5, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mAppBubbleTaskIds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    iget-object v5, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mTmpBubbles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_27
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v8, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mShortcutIdToBubble:Ljava/util/HashMap;

    iget-object v9, v7, Lcom/android/wm/shell/bubbles/Bubble;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v9, :cond_28

    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    goto :goto_c

    :cond_28
    iget-object v9, v7, Lcom/android/wm/shell/bubbles/Bubble;->mMetadataShortcutId:Ljava/lang/String;

    :goto_c
    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v7}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->updateBubbleSuppressedState(Lcom/android/wm/shell/bubbles/Bubble;)V

    iget-boolean v8, v7, Lcom/android/wm/shell/bubbles/Bubble;->mIsAppBubble:Z

    if-eqz v8, :cond_27

    iget-object v8, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->mAppBubbleTaskIds:Ljava/util/HashMap;

    iget-object v9, v7, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/wm/shell/bubbles/Bubble;->getTaskId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_b

    :cond_29
    monitor-exit v2

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleController;->isShowingAsBubbleBar()Z

    move-result v2

    if-eqz v2, :cond_33

    new-instance v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;

    invoke-direct {v2}, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;-><init>()V

    iget-boolean v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expandedChanged:Z

    iput-boolean v5, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->expandedChanged:Z

    iget-boolean v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expanded:Z

    iput-boolean v5, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->expanded:Z

    iget-boolean v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->shouldShowEducation:Z

    iput-boolean v5, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->shouldShowEducation:Z

    iget-boolean v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectionChanged:Z

    if-eqz v5, :cond_2b

    iget-object v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v5, :cond_2a

    invoke-interface {v5}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_2a
    move-object v5, v6

    :goto_d
    iput-object v5, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->selectedBubbleKey:Ljava/lang/String;

    :cond_2b
    iget-object v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v5, :cond_2c

    invoke-virtual {v5}, Lcom/android/wm/shell/bubbles/Bubble;->asBubbleBarBubble()Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    move-result-object v5

    goto :goto_e

    :cond_2c
    move-object v5, v6

    :goto_e
    iput-object v5, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->addedBubble:Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    iget-object v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v5, :cond_2d

    invoke-virtual {v5}, Lcom/android/wm/shell/bubbles/Bubble;->asBubbleBarBubble()Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    move-result-object v5

    goto :goto_f

    :cond_2d
    move-object v5, v6

    :goto_f
    iput-object v5, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->updatedBubble:Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    iget-object v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v5, :cond_2e

    iget-object v5, v5, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    goto :goto_10

    :cond_2e
    move-object v5, v6

    :goto_10
    iput-object v5, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->suppressedBubbleKey:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->unsuppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v5, :cond_2f

    iget-object v6, v5, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    :cond_2f
    iput-object v6, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->unsupressedBubbleKey:Ljava/lang/String;

    move v5, v3

    :goto_11
    iget-object v6, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_30

    iget-object v6, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v7, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->removedBubbles:Ljava/util/List;

    new-instance v8, Lcom/android/wm/shell/common/bubbles/RemovedBubble;

    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v9, v9, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v8, v9, v6}, Lcom/android/wm/shell/common/bubbles/RemovedBubble;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_30
    iget-boolean v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    if-eqz v5, :cond_31

    :goto_12
    iget-object v5, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_31

    iget-object v5, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->bubbleKeysInOrder:Ljava/util/List;

    iget-object v6, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v6, v6, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_31
    iget-boolean v3, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->showOverflowChanged:Z

    iput-boolean v3, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->showOverflowChanged:Z

    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->overflowBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v4

    iput-boolean v1, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->showOverflow:Z

    iget-boolean v1, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->expandedChanged:Z

    if-nez v1, :cond_32

    iget-object v1, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->selectedBubbleKey:Ljava/lang/String;

    if-nez v1, :cond_32

    iget-object v1, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->addedBubble:Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    if-nez v1, :cond_32

    iget-object v1, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->updatedBubble:Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    if-nez v1, :cond_32

    iget-object v1, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->removedBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->bubbleKeysInOrder:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->suppressedBubbleKey:Ljava/lang/String;

    if-nez v1, :cond_32

    iget-object v1, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->unsupressedBubbleKey:Ljava/lang/String;

    if-nez v1, :cond_32

    iget-object v1, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->currentBubbleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->bubbleBarLocation:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    if-nez v1, :cond_32

    iget-boolean v1, v2, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->showOverflowChanged:Z

    if-eqz v1, :cond_33

    :cond_32
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController$10;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleStateListener:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;->onBubbleStateChange(Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;)V

    :cond_33
    return-void

    :goto_13
    monitor-exit v2

    throw v0

    :goto_14
    monitor-exit v7

    throw v0
.end method
