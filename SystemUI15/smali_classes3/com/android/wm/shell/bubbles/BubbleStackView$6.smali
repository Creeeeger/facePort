.class public final Lcom/android/wm/shell/bubbles/BubbleStackView$6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    sget-object v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->FLYOUT_IME_ANIMATION_SPRING_CONFIG:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsDraggingStack:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    iget-boolean v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    if-nez v3, :cond_7

    iget-boolean v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleWithView(Landroid/view/View;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p1, Lcom/android/wm/shell/bubbles/Bubble;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-boolean v5, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v5, :cond_3

    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    iput-boolean v1, v4, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    iput-object v2, v4, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    :cond_3
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-boolean v4, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    if-eqz v4, :cond_5

    if-nez v0, :cond_5

    iget-object v0, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mSelectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eq p1, v1, :cond_4

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubbleInternal(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->dispatchPendingChanges()V

    goto :goto_1

    :cond_4
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setSelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    goto :goto_1

    :cond_5
    iget-boolean v0, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowedUserEducationInTouchListenerActive:Z

    if-nez v0, :cond_6

    iget-object v0, v2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iput-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowedUserEducationInTouchListenerActive:Z

    :goto_1
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleStackView$6$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView$6$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView$6;Lcom/android/wm/shell/bubbles/Bubble;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_7
    :goto_2
    return-void
.end method
