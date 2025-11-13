.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda13;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda13;->$r8$classId:I

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->mBubbleListener:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleProperties:Lcom/android/wm/shell/bubbles/properties/BubbleProperties;

    check-cast v0, Lcom/android/wm/shell/bubbles/properties/ProdBubbleProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/wm/shell/Flags;->FEATURE_FLAGS:Lcom/android/wm/shell/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "persist.wm.debug.bubble_bar"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/bubbles/properties/ProdBubbleProperties;->_isBubbleBarEnabled:Z

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleController;->canShowAsBubbleBar()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    iput-object p0, p1, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleStateListener:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleController;->setUpBubbleViewsForMode()V

    iget-object p0, p1, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleStateListener:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;

    if-eqz p0, :cond_3

    iget-object p0, p1, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mStateChange:Lcom/android/wm/shell/bubbles/BubbleData$Update;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->createInitialState()Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;

    move-result-object v3

    iget-boolean v4, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->shouldShowEducation:Z

    iput-boolean v4, v3, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->shouldShowEducation:Z

    :goto_0
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v4, v3, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->currentBubbleList:Ljava/util/List;

    iget-object v5, v0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {v5}, Lcom/android/wm/shell/bubbles/Bubble;->asBubbleBarBubble()Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleBarLocation:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    iput-object v0, v3, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->bubbleBarLocation:Lcom/android/wm/shell/common/bubbles/BubbleBarLocation;

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    iput-boolean v0, v3, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->expanded:Z

    iput-boolean v0, v3, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->expandedChanged:Z

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iput-object v2, v3, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->selectedBubbleKey:Ljava/lang/String;

    iget-object p0, p1, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleStateListener:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;

    invoke-virtual {p0, v3}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;->onBubbleStateChange(Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;)V

    goto :goto_1

    :cond_2
    iput-object v2, p1, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleStateListener:Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl$1;

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/wmshell/BubblesManager$5;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/wmshell/BubblesManager$5;->val$sysuiMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/wmshell/BubblesManager$5$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wmshell/BubblesManager$5;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
