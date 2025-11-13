.class public final Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const/4 p1, 0x1

    const-string p2, "NVP#onLayout"

    invoke-static {p2}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p3}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpandedHeightToMaxHeight()V

    iget-object p3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean p1, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasLayoutedSinceDown:Z

    iget-boolean p4, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingOnLayout:Z

    const/4 p5, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p3}, Lcom/android/systemui/shade/NotificationPanelViewController;->abortAnimations()V

    iget-object p3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget p4, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingVelocity:F

    invoke-virtual {p3, p4}, Lcom/android/systemui/shade/NotificationPanelViewController;->fling(F)V

    iget-object p3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean p5, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpdateFlingOnLayout:Z

    :cond_0
    iget-object p3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p4, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isAnimationPlaying()Z

    move-result p4

    xor-int/2addr p4, p1

    invoke-virtual {p3, p4}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateMaxDisplayedNotifications(Z)V

    iget-object p3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    const-string p4, "onLayoutChange"

    iput-object p4, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mRecomputedMaxCountCallStack:Ljava/lang/String;

    iget-object p4, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p6, p4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p6}, Landroid/view/ViewGroup;->getWidth()I

    move-result p6

    int-to-float p6, p6

    iget-object p7, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p7, p7, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {p7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p7

    int-to-float p7, p7

    cmpl-float p6, p6, p7

    if-nez p6, :cond_1

    move p6, p1

    goto :goto_0

    :cond_1
    move p6, p5

    :goto_0
    iput-boolean p6, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsFullWidth:Z

    iget-object p7, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p4, p4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p4, p4, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iput-boolean p6, p4, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSmallScreen:Z

    iget-object p3, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iput-boolean p6, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mIsFullWidth:Z

    iget-object p3, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p3, :cond_2

    invoke-interface {p3, p6}, Lcom/android/systemui/plugins/qs/QS;->setIsNotificationPanelFullWidth(Z)V

    :cond_2
    sget-object p3, Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;->INSTANCE:Lcom/android/systemui/keyguard/MigrateClocksToBlueprint;

    invoke-static {}, Lcom/android/systemui/Flags;->migrateClocksToBlueprint()V

    iget-object p3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p3, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget p4, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMaxExpansionHeight:I

    invoke-virtual {p3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isQsFragmentCreated()Z

    move-result p6

    if-eqz p6, :cond_3

    invoke-virtual {p3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->updateMinHeight()V

    iget-object p6, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p6}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result p6

    iput p6, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMaxExpansionHeight:I

    iget-object p3, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput p6, p3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mMaxTopPadding:I

    :cond_3
    iget-object p3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p3, p5}, Lcom/android/systemui/shade/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    iget-object p3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p3, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {p3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result p5

    if-eqz p5, :cond_6

    iget-boolean p5, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFullyExpanded:Z

    if-eqz p5, :cond_6

    iget p5, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMaxExpansionHeight:I

    int-to-float p5, p5

    iput p5, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    iget-object p5, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeightSetToMaxListener:Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;

    if-eqz p5, :cond_4

    invoke-virtual {p5, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda8;->onExpansionHeightSetToMax(Z)V

    :cond_4
    iget p5, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMaxExpansionHeight:I

    if-eq p5, p4, :cond_9

    iget-object p6, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz p6, :cond_5

    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    iget-object p6, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    filled-new-array {p4, p5}, [I

    move-result-object p4

    invoke-static {p4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p4

    iput-object p4, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p5, 0x12c

    invoke-virtual {p4, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p4, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    sget-object p5, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p4, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p4, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance p5, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda36;

    invoke-direct {p5, p3, p1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$$ExternalSyntheticLambda36;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;I)V

    invoke-virtual {p4, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p4, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance p5, Lcom/android/systemui/shade/QuickSettingsControllerImpl$1;

    invoke-direct {p5, p3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl$1;-><init>(Lcom/android/systemui/shade/QuickSettingsControllerImpl;)V

    invoke-virtual {p4, p5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p3, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_6
    invoke-virtual {p3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded$1()Z

    move-result p4

    if-nez p4, :cond_8

    iget-object p4, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_7

    goto :goto_1

    :cond_7
    iget p4, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mMinExpansionHeight:I

    int-to-float p4, p4

    iget p5, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mLastOverscroll:F

    add-float/2addr p4, p5

    invoke-virtual {p3, p4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpansionHeight(F)V

    goto :goto_2

    :cond_8
    :goto_1
    iget-object p3, p3, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string p4, "onLayoutChange: qs expansion not set"

    invoke-virtual {p3, p4}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    :cond_9
    :goto_2
    iget-object p3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget p4, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    invoke-virtual {p3, p4}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpandedHeight(F)V

    iget-object p3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget p4, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-ne p4, p1, :cond_a

    iget-object p1, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateViewState()V

    :cond_a
    iget-object p1, p3, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->updateExpansion()V

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object p3, p1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_b

    invoke-virtual {p1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isQsFragmentCreated()Z

    move-result p3

    if-eqz p3, :cond_b

    iget-object p1, p1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result p3

    invoke-interface {p1, p3}, Lcom/android/systemui/plugins/qs/QS;->setHeightOverride(I)V

    :cond_b
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateMaxHeadsUpTranslation()V

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateGestureExclusionRect()V

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$ShadeLayoutChangeListener;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

    :cond_c
    invoke-static {p2}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    return-void
.end method
