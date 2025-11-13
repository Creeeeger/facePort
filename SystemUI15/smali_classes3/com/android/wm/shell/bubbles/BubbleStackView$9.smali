.class public final Lcom/android/wm/shell/bubbles/BubbleStackView$9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMove(F)V
    .locals 13

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isManageEduVisible()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isStackEduVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    neg-float p1, p1

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    float-to-int v2, p1

    int-to-float v2, v2

    iget-object v3, v1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getContentHeight()I

    move-result v3

    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    int-to-float v0, v3

    div-float v3, v2, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v5, v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v3, v6

    mul-float v7, v3, v3

    mul-float/2addr v7, v3

    add-float/2addr v7, v6

    mul-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v7, v3

    :cond_2
    const v3, 0x3d8f5c29    # 0.07f

    mul-float/2addr v7, v3

    mul-float/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    iput v0, v1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mDraggedAmount:I

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_3

    float-to-double v2, v2

    int-to-long v5, v0

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v12

    const/4 v11, 0x0

    const-wide v8, -0x7c8a8198780dc0d8L    # -5.384641034560944E-292

    const/4 v10, 0x6

    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget v0, v1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mDraggedAmount:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->setCollapsedAmount(F)V

    iget-boolean v0, v1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mNotifiedAboutThreshold:Z

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz v0, :cond_5

    iget v2, v1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mDraggedAmount:I

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    const v3, 0x3ca3d70a    # 0.02f

    mul-float/2addr v0, v3

    cmpl-float v0, v2, v0

    if-lez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mNotifiedAboutThreshold:Z

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_4

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide v3, -0x3fe1c60edbec984L

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v0, v1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz v0, :cond_5

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScrimAnimation:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScrim:Landroid/view/View;

    sget-object v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->FLYOUT_IME_ANIMATION_SPRING_CONFIG:Lcom/android/wm/shell/shared/animation/PhysicsAnimator$SpringConfig;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    move-result-object p0

    const v1, 0x3ea3d70a    # 0.32f

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getContentHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    const p0, 0x3df5c28e    # 0.11999999f

    mul-float/2addr p1, p0

    sub-float/2addr v1, p1

    const p0, 0x3e4ccccd    # 0.2f

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final onUp(F)V
    .locals 11

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$9;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeUpVelocity:F

    iput v1, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeDownVelocity:F

    goto :goto_0

    :cond_0
    iput v1, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeUpVelocity:F

    iput p1, v0, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeDownVelocity:F

    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    iget v0, p1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeDownVelocity:F

    iget v1, p1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mMinFlingVelocity:I

    int-to-float v2, v1

    cmpl-float v3, v0, v2

    const/4 v4, 0x0

    if-lez v3, :cond_1

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    aget-boolean p1, p1, v4

    if-eqz p1, :cond_5

    float-to-double v2, v0

    int-to-long v0, v1

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v8, 0x0

    const-wide v5, 0x4176c54ca90c311cL    # 2.387681056547652E7

    const/4 v7, 0x6

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    iget v0, p1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mSwipeUpVelocity:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    aget-boolean p1, p1, v4

    if-eqz p1, :cond_3

    float-to-double v2, v0

    int-to-long v0, v1

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v9, 0x0

    const-wide v6, 0x4fe50e4e85b13807L    # 7.619078095765417E76

    const/4 v8, 0x6

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mExpandedView:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    if-eqz v0, :cond_4

    iget v1, p1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mDraggedAmount:I

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3ca3d70a    # 0.02f

    mul-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_3

    iget p1, p1, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->mDraggedAmount:I

    int-to-long v0, p1

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v9, 0x0

    const-wide v6, -0x6ff1472380a2ca29L    # -2.473571377158487E-231

    const/4 v8, 0x1

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0, v4}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    goto :goto_3

    :cond_4
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BUBBLES_enabled:[Z

    aget-boolean p1, p1, v4

    if-eqz p1, :cond_5

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BUBBLES:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide v1, -0x3b74f1347dabc9d3L    # -1.5972101728805086E22

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/animation/ExpandedViewAnimationControllerImpl;->animateBackToExpanded()V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScrimAnimation:Landroid/view/ViewPropertyAnimator;

    if-nez p1, :cond_6

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->showScrim(ZLcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda24;)V

    :cond_6
    :goto_3
    return-void
.end method
