.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iput-boolean p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda4;->f$1:Z

    iput-boolean p3, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda4;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onBubbleViewsReady(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mPendingBubbles:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/wm/shell/bubbles/Bubble;->mIsTextChanged:Z

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    iget-boolean v7, v0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda4;->f$1:Z

    or-int/2addr v5, v7

    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    const/4 v8, 0x0

    aget-boolean v7, v7, v8

    iget-boolean v0, v0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda4;->f$2:Z

    if-eqz v7, :cond_1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    if-eqz v4, :cond_0

    move v9, v6

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    invoke-virtual {v1, v6}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    move-result v10

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    filled-new-array {v7, v9, v12, v13, v10}, [Ljava/lang/Object;

    move-result-object v16

    const/16 v14, 0x3fc

    const/4 v15, 0x0

    const-wide v12, 0x647cd15deac73710L

    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-nez v4, :cond_4

    iput-boolean v5, v1, Lcom/android/wm/shell/bubbles/Bubble;->mSuppressFlyout:Z

    iget-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mTimeSource:Lcom/android/wm/shell/bubbles/BubbleData$TimeSource;

    check-cast v4, Lcom/android/wm/shell/bubbles/BubbleData$$ExternalSyntheticLambda7;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/wm/shell/bubbles/Bubble;->mLastUpdated:J

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    aget-boolean v4, v4, v8

    if-eqz v4, :cond_2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v14

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide v10, 0x2c0df7e475b33490L    # 1.7537752608862175E-96

    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object v1, v3, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_3

    move v4, v6

    goto :goto_1

    :cond_3
    move v4, v8

    :goto_1
    iput-boolean v4, v3, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleData;->trim()V

    goto :goto_3

    :cond_4
    iput-boolean v5, v1, Lcom/android/wm/shell/bubbles/Bubble;->mSuppressFlyout:Z

    xor-int/lit8 v4, v5, 0x1

    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    aget-boolean v5, v5, v8

    if-eqz v5, :cond_5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v14

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide v10, -0x7a8c5901d00ec288L    # -2.114549307727863E-282

    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    iput-object v1, v3, Lcom/android/wm/shell/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    iget-boolean v3, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-nez v3, :cond_7

    if-eqz v4, :cond_7

    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    if-eqz v3, :cond_6

    move v3, v6

    goto :goto_2

    :cond_6
    move v3, v8

    :goto_2
    iput-boolean v3, v4, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    :cond_7
    :goto_3
    invoke-virtual {v1, v6}, Lcom/android/wm/shell/bubbles/Bubble;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1, v8}, Lcom/android/wm/shell/bubbles/Bubble;->setShouldAutoExpand(Z)V

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    iget-boolean v3, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-nez v3, :cond_8

    invoke-virtual {v2, v6}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpandedInternal(Z)V

    :cond_8
    iget-boolean v3, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    if-eqz v3, :cond_9

    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-ne v3, v1, :cond_9

    move v3, v6

    goto :goto_4

    :cond_9
    move v3, v8

    :goto_4
    if-nez v3, :cond_a

    if-eqz v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    move v8, v6

    :cond_b
    invoke-virtual {v1, v8}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressNotification(Z)V

    xor-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setShowDot(Z)V

    iget-object v0, v1, Lcom/android/wm/shell/bubbles/Bubble;->mLocusId:Landroid/content/LocusId;

    if-eqz v0, :cond_f

    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/bubbles/Bubble;->isSuppressed()Z

    move-result v4

    if-eqz v4, :cond_c

    iget v4, v1, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_c

    goto :goto_5

    :cond_c
    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->doUnsuppress(Lcom/android/wm/shell/bubbles/Bubble;)V

    goto :goto_6

    :cond_d
    :goto_5
    if-nez v3, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/android/wm/shell/bubbles/Bubble;->isSuppressed()Z

    move-result v3

    if-nez v3, :cond_e

    iget v3, v1, Lcom/android/wm/shell/bubbles/Bubble;->mFlags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_f

    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mVisibleLocusIds:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    iget-object v3, v2, Lcom/android/wm/shell/bubbles/BubbleData;->mSuppressedBubbles:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->doSuppress(Lcom/android/wm/shell/bubbles/Bubble;)V

    :cond_f
    :goto_6
    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method
