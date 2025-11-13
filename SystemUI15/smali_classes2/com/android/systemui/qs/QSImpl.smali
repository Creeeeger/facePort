.class public final Lcom/android/systemui/qs/QSImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QS;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public mContainer:Lcom/android/systemui/qs/QSContainerImpl;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

.field public mHeaderAnimating:Z

.field public mInSplitShade:Z

.field public mIsSmallScreen:Z

.field public mLastKeyguardAndExpanded:Z

.field public mLastPanelFraction:F

.field public mLastQSExpansion:F

.field public mLastViewHeight:I

.field public mLayoutDirection:I

.field public mListening:Z

.field public final mListeningAndVisibilityLifecycleOwner:Lcom/android/systemui/qs/QSImpl$ListeningAndVisibilityLifecycleOwner;

.field public final mLocationTemp:[I

.field public mLockscreenToShadeProgress:F

.field public mOverScrolling:Z

.field public mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

.field public mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

.field public mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

.field public mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

.field public mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

.field public mQSSquishinessController:Lcom/android/systemui/qs/QSSquishinessController;

.field public final mQsBounds:Landroid/graphics/Rect;

.field public final mQsDisableFlagsLogger:Lcom/android/systemui/qs/QSDisableFlagsLogger;

.field public mQsDisabled:Z

.field public mQsExpanded:Z

.field public final mQsMediaHost:Lcom/android/systemui/media/controls/ui/view/MediaHost;

.field public mQsVisible:Z

.field public mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

.field public final mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field public mRootView:Landroid/view/View;

.field public mScrollListener:Lcom/android/systemui/plugins/qs/QS$ScrollListener;

.field public final mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

.field public mShouldUpdateMediaSquishiness:Z

.field public mShowCollapsedOnKeyguard:Z

.field public mSquishinessFraction:F

.field public mStackScrollerOverscrolling:Z

.field public mStatusBarState:I

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public final mTmpLocation:[I

.field public mTransitioningToFullShade:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/media/controls/ui/view/MediaHost;Lcom/android/systemui/media/controls/ui/view/MediaHost;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/qs/QSDisableFlagsLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/qs/FooterActionsController;Lcom/android/systemui/qs/footer/ui/viewmodel/FooterActionsViewModel$Factory;Lcom/android/systemui/shade/transition/LargeScreenShadeInterpolator;Lcom/android/systemui/shade/SecPanelSplitHelper;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Landroid/graphics/Rect;

    invoke-direct {p5}, Landroid/graphics/Rect;-><init>()V

    iput-object p5, p0, Lcom/android/systemui/qs/QSImpl;->mQsBounds:Landroid/graphics/Rect;

    const/high16 p5, -0x40800000    # -1.0f

    iput p5, p0, Lcom/android/systemui/qs/QSImpl;->mLastQSExpansion:F

    const/high16 p5, 0x3f800000    # 1.0f

    iput p5, p0, Lcom/android/systemui/qs/QSImpl;->mSquishinessFraction:F

    const/4 p5, 0x2

    new-array p9, p5, [I

    iput-object p9, p0, Lcom/android/systemui/qs/QSImpl;->mLocationTemp:[I

    const/4 p9, -0x1

    iput p9, p0, Lcom/android/systemui/qs/QSImpl;->mStatusBarState:I

    new-array p9, p5, [I

    iput-object p9, p0, Lcom/android/systemui/qs/QSImpl;->mTmpLocation:[I

    iput-object p1, p0, Lcom/android/systemui/qs/QSImpl;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    iput-object p4, p0, Lcom/android/systemui/qs/QSImpl;->mQsMediaHost:Lcom/android/systemui/media/controls/ui/view/MediaHost;

    iput-object p7, p0, Lcom/android/systemui/qs/QSImpl;->mQsDisableFlagsLogger:Lcom/android/systemui/qs/QSDisableFlagsLogger;

    iput-object p3, p0, Lcom/android/systemui/qs/QSImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p6, p0, Lcom/android/systemui/qs/QSImpl;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-object p2, p0, Lcom/android/systemui/qs/QSImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p8, p0, Lcom/android/systemui/qs/QSImpl;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    new-instance p1, Lcom/android/systemui/qs/QSImpl$ListeningAndVisibilityLifecycleOwner;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSImpl$ListeningAndVisibilityLifecycleOwner;-><init>(Lcom/android/systemui/qs/QSImpl;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSImpl;->mListeningAndVisibilityLifecycleOwner:Lcom/android/systemui/qs/QSImpl$ListeningAndVisibilityLifecycleOwner;

    sget p1, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    new-instance p1, Lcom/android/systemui/qs/SecQSImpl;

    new-instance p2, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/qs/QSImpl;)V

    new-instance p3, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p5}, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSImpl;I)V

    invoke-direct {p1, p2, p13, p3, p14}, Lcom/android/systemui/qs/SecQSImpl;-><init>(Lkotlin/jvm/functions/Function0;Lcom/android/systemui/shade/SecPanelSplitHelper;Ljava/lang/Runnable;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSImpl;->mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

    return-void
.end method


# virtual methods
.method public final animateHeaderSlidingOut()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mHeaderAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x168

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSImpl$1;-><init>(Lcom/android/systemui/qs/QSImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final closeCustomizer()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->hide(Z)V

    return-void
.end method

.method public final closeDetail()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSImpl;->detailController$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQSDetailController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecQSDetailController;->closeDetail()V

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSImpl;->qscMainViewController:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->close()V

    :cond_0
    return-void
.end method

.method public final disable(IIIZ)V
    .locals 4

    iget-object p4, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getDisplayId()I

    move-result p4

    if-eq p1, p4, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSImpl;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;

    invoke-direct {p1, p2, p3}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;-><init>(II)V

    new-instance p4, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;

    invoke-direct {p4, p2, p3}, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;-><init>(II)V

    iget-object p2, p0, Lcom/android/systemui/qs/QSImpl;->mQsDisableFlagsLogger:Lcom/android/systemui/qs/QSDisableFlagsLogger;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    new-instance v1, Lcom/android/systemui/qs/QSDisableFlagsLogger$logDisableFlagChange$2;

    invoke-direct {v1, p2}, Lcom/android/systemui/qs/QSDisableFlagsLogger$logDisableFlagChange$2;-><init>(Lcom/android/systemui/qs/QSDisableFlagsLogger;)V

    const/4 v2, 0x0

    iget-object p2, p2, Lcom/android/systemui/qs/QSDisableFlagsLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v3, "QSDisableFlagsLog"

    invoke-virtual {p2, v3, v0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/log/LogMessageImpl;

    iget v2, p1, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->disable1:I

    iput v2, v1, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iget p1, p1, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->disable2:I

    iput p1, v1, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    iget p1, p4, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->disable1:I

    int-to-long v2, p1

    iput-wide v2, v1, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    iget p1, p4, Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger$DisableState;->disable2:I

    int-to-long v2, p1

    iput-wide v2, v1, Lcom/android/systemui/log/LogMessageImpl;->long2:J

    invoke-virtual {p2, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    const/4 p1, 0x1

    and-int/lit8 p2, p3, 0x1

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    move p4, p1

    goto :goto_0

    :cond_1
    move p4, p3

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mQsDisabled:Z

    if-ne p4, v0, :cond_2

    return-void

    :cond_2
    iput-boolean p4, p0, Lcom/android/systemui/qs/QSImpl;->mQsDisabled:Z

    iget-object p4, p0, Lcom/android/systemui/qs/QSImpl;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_3

    move v0, p1

    goto :goto_1

    :cond_3
    move v0, p3

    :goto_1
    iget-boolean v1, p4, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    iput-boolean v0, p4, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    :goto_2
    iget-object p4, p0, Lcom/android/systemui/qs/QSImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    move p1, p3

    :goto_3
    iget-boolean p2, p4, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsDisabled:Z

    if-ne p1, p2, :cond_6

    goto :goto_8

    :cond_6
    iput-boolean p1, p4, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsDisabled:Z

    iget-object p2, p4, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/SecQuickQSPanel;

    iget-boolean v0, p2, Lcom/android/systemui/qs/SecQuickQSPanel;->mDisabledByPolicy:Z

    const/16 v1, 0x8

    if-ne p1, v0, :cond_7

    goto :goto_5

    :cond_7
    iput-boolean p1, p2, Lcom/android/systemui/qs/SecQuickQSPanel;->mDisabledByPolicy:Z

    if-nez p1, :cond_8

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_8

    move p1, p3

    goto :goto_4

    :cond_8
    move p1, v1

    :goto_4
    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/SecQuickQSPanel;->setVisibility(I)V

    :goto_5
    iget-object p1, p4, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mDateButtonContainer:Landroid/view/View;

    iget-boolean p2, p4, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsDisabled:Z

    if-eqz p2, :cond_9

    goto :goto_6

    :cond_9
    move v1, p3

    :goto_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-boolean p2, p4, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mQsDisabled:Z

    if-eqz p2, :cond_a

    sget-boolean p2, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz p2, :cond_b

    iget-object p2, p4, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object p2, p2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {p2}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object p2

    iget-object p2, p2, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->common:Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;

    iget-object p2, p2, Lcom/android/systemui/qs/panelresource/SecQSPanelResourceCommon;->shadeHeaderController$delegate:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object p2, p2, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    goto :goto_7

    :cond_a
    const/4 p3, -0x2

    :cond_b
    :goto_7
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p4, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_8
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->updateQsState()V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    new-instance p2, Landroid/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p2, p1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p1, "QSImpl:"

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mQsBounds: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mQsBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mQsExpanded: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mQsExpanded:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mHeaderAnimating: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mHeaderAnimating:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mStackScrollerOverscrolling: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mStackScrollerOverscrolling:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mListening: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mListening:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mQsVisible: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mQsVisible:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mLayoutDirection: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/qs/QSImpl;->mLayoutDirection:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mLastQSExpansion: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/qs/QSImpl;->mLastQSExpansion:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mLastPanelFraction: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/qs/QSImpl;->mLastPanelFraction:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mSquishinessFraction: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/qs/QSImpl;->mSquishinessFraction:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mQsDisabled: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mQsDisabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mTemp: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mLocationTemp:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mShowCollapsedOnKeyguard: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mShowCollapsedOnKeyguard:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mLastKeyguardAndExpanded: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mLastKeyguardAndExpanded:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mStatusBarState: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/qs/QSImpl;->mStatusBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mTmpLocation: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mTmpLocation:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mLastViewHeight: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/qs/QSImpl;->mLastViewHeight:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "mLastHeaderTranslation: 0.0"

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mInSplitShade: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mInSplitShade:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mTransitioningToFullShade: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mTransitioningToFullShade:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mLockscreenToShadeProgress: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/qs/QSImpl;->mLockscreenToShadeProgress:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mOverScrolling: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mOverScrolling:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mShouldUpdateMediaSquishiness: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mShouldUpdateMediaSquishiness:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isCustomizing: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->isCustomizing()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "top: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "y: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "translationY: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "alpha: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "height: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "measuredHeight: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clipBounds: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "getView(): null"

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    if-eqz p0, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "headerHeight: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "VISIBLE"

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    if-ne p0, p1, :cond_2

    const-string p0, "INVISIBLE"

    goto :goto_1

    :cond_2
    const-string p0, "GONE"

    :goto_1
    const-string p1, "Header visibility: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p0, "mHeader: null"

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final getDesiredHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSImpl;->shadeHeaderController$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object v0, v0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getHeader()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    return-object p0
.end method

.method public final getHeightDiff()I
    .locals 2

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public getListeningAndVisibilityLifecycleOwner()Lcom/android/systemui/qs/QSImpl$ListeningAndVisibilityLifecycleOwner;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mListeningAndVisibilityLifecycleOwner:Lcom/android/systemui/qs/QSImpl$ListeningAndVisibilityLifecycleOwner;

    return-object p0
.end method

.method public final getQsMinExpansionHeight()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mInSplitShade:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mLocationTemp:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x1

    aget v0, v1, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSImpl;->shadeHeaderController$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/ShadeHeaderController;

    iget-object v0, v0, Lcom/android/systemui/shade/ShadeHeaderController;->header:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    add-int/2addr v0, p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getStatusBarState()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/QSImpl;->mStatusBarState:I

    return p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public final hideImmediately()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public final isCustomizing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->isCustomizing()Z

    move-result p0

    return p0
.end method

.method public isExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSImpl;->mQsExpanded:Z

    return p0
.end method

.method public final isFullyCollapsed()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/qs/QSImpl;->mLastQSExpansion:F

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isKeyguardState()Z
    .locals 1

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isListening()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSImpl;->mListening:Z

    return p0
.end method

.method public isQsVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSImpl;->mQsVisible:Z

    return p0
.end method

.method public final isShowingDetail()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailOpening:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailShowing:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailClosing:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isCustomizerShowing:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->isCustomizing()Z

    move-result p0

    return p0
.end method

.method public final notifyCustomizeChanged()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->isCustomizing()Z

    move-result v0

    sget v1, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    if-nez v0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS$HeightListener;->onQsHeightChanged()V

    :cond_2
    return-void
.end method

.method public final onComponentCreated(Lcom/android/systemui/qs/dagger/QSComponent;Landroid/os/Bundle;)V
    .locals 9

    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/android/systemui/qs/dagger/QSComponent;->getRootView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    invoke-interface {p1}, Lcom/android/systemui/qs/dagger/QSComponent;->getQSPanelController()Lcom/android/systemui/qs/SecQSPanelController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    invoke-interface {p1}, Lcom/android/systemui/qs/dagger/QSComponent;->getQuickQSPanelController()Lcom/android/systemui/qs/SecQuickQSPanelController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0434

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/NonInterceptingScrollView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    new-instance v2, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSImpl;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    new-instance v2, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSImpl;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    sget v2, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iput-boolean v0, v1, Lcom/android/systemui/qs/NonInterceptingScrollView;->mScrollEnabled:Z

    iget-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/android/systemui/util/ViewUtil;->getSecQuickStatusBarHeader(Landroid/view/ViewGroup;)Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-interface {p1}, Lcom/android/systemui/qs/dagger/QSComponent;->getQSContainerImplController()Lcom/android/systemui/qs/QSContainerImplController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSContainerImplController;->getView()Lcom/android/systemui/qs/QSContainerImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSImpl;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    iget-object v4, p0, Lcom/android/systemui/qs/QSImpl;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v1, v2}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    invoke-interface {p1}, Lcom/android/systemui/qs/dagger/QSComponent;->getQSSquishinessController()Lcom/android/systemui/qs/QSSquishinessController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mQSSquishinessController:Lcom/android/systemui/qs/QSSquishinessController;

    invoke-interface {p1}, Lcom/android/systemui/qs/dagger/QSComponent;->getQSCustomizerController()Lcom/android/systemui/qs/customize/QSCustomizerController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->setQs(Lcom/android/systemui/plugins/qs/QS;)V

    const-string v1, "expanded"

    if-eqz p2, :cond_0

    const-string/jumbo v2, "visible"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSImpl;->setQsVisible(Z)V

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSImpl;->setExpanded(Z)V

    const-string v2, "listening"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSImpl;->setListening(Z)V

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSImpl;->mQsExpanded:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iget-object v2, v2, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    invoke-interface {v2, p2}, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;->restoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSImpl;->mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

    if-eqz v2, :cond_3

    new-instance v4, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSImpl;I)V

    new-instance v5, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v0}, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSImpl;I)V

    iget-object v6, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iget-object v7, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-interface {p1}, Lcom/android/systemui/qs/dagger/QSComponent;->getSecQSImplAnimatorManager()Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->setQs(Lcom/android/systemui/plugins/qs/QS;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-ne p2, v0, :cond_1

    invoke-virtual {v8, v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->updatePanelExpanded(Z)V

    :cond_1
    iput-object v8, v6, Lcom/android/systemui/qs/SecQSPanelController;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    iget-object p2, v6, Lcom/android/systemui/qs/SecQSPanelController;->mQSCMainViewController:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;

    iget-object v1, v8, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->mTransitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iput-object v1, p2, Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;->transitionAnimator:Lcom/android/systemui/qs/animator/QsTransitionAnimator;

    iput-object v8, v2, Lcom/android/systemui/qs/SecQSImpl;->secQSImplAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    invoke-interface {p1}, Lcom/android/systemui/qs/dagger/QSComponent;->getBarController()Lcom/android/systemui/qs/bar/BarController;

    move-result-object p2

    new-instance v1, Lcom/android/systemui/qs/SecQSImpl$onComponentCreated$3$1;

    invoke-direct {v1, v2}, Lcom/android/systemui/qs/SecQSImpl$onComponentCreated$3$1;-><init>(Lcom/android/systemui/qs/SecQSImpl;)V

    iput-object v5, p2, Lcom/android/systemui/qs/bar/BarController;->mQSLastExpansionInitializer:Ljava/lang/Runnable;

    iput-object v1, p2, Lcom/android/systemui/qs/bar/BarController;->mUpdateAnimatorsRunner:Ljava/lang/Runnable;

    new-instance v5, Lcom/android/systemui/qs/bar/BarController$3;

    invoke-direct {v5, p2, v1, v4}, Lcom/android/systemui/qs/bar/BarController$3;-><init>(Lcom/android/systemui/qs/bar/BarController;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v5, p2, Lcom/android/systemui/qs/bar/BarController;->mBarListener:Lcom/android/systemui/qs/bar/BarController$3;

    iget-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    const v4, 0x7f0a0996

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/SecQSPanel;

    iput-object v1, p2, Lcom/android/systemui/qs/bar/BarController;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    iget-object v1, v1, Lcom/android/systemui/qs/SecQSPanel;->mOnConfigurationChangedListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v4, p2, Lcom/android/systemui/qs/bar/BarController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/bar/BarController$2;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p2, Lcom/android/systemui/qs/bar/BarController;->mQsPanel:Lcom/android/systemui/qs/SecQSPanel;

    new-instance v4, Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;

    invoke-direct {v4, p2, v3}, Lcom/android/systemui/qs/bar/BarController$OnApplyWindowInsetsListener;-><init>(Lcom/android/systemui/qs/bar/BarController;I)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-virtual {p2}, Lcom/android/systemui/qs/bar/BarController;->updateBarUnderneathQqs()V

    iget-object v1, p2, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2, v0}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/bar/BarController;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    sget-object v1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    const-string v3, "BarController"

    invoke-virtual {v1, v3, p2}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;)V

    iget-object v1, p2, Lcom/android/systemui/qs/bar/BarController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v3, p2, Lcom/android/systemui/qs/bar/BarController;->mKnoxStateMonitorCallback:Lcom/android/systemui/qs/bar/BarController$1;

    invoke-virtual {v1, v3}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->registerCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    iget-object v1, p2, Lcom/android/systemui/qs/bar/BarController;->mBarBackUpRestoreHelper:Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper$initialize$1;

    invoke-direct {v3, v1}, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper$initialize$1;-><init>(Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;)V

    iget-object v1, v1, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->qsBackupRestoreManager$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSBackupRestoreManager;

    const-string v4, "QuickPanelLayout"

    invoke-virtual {v1, v4, v3}, Lcom/android/systemui/qs/QSBackupRestoreManager;->addCallback(Ljava/lang/String;Lcom/android/systemui/qs/QSBackupRestoreManager$Callback;)V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v1, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v1, p2}, Lcom/android/systemui/shade/SecPanelSplitHelper;->addListener(Lcom/android/systemui/shade/PanelTransitionStateListener;)V

    iput-object p2, v2, Lcom/android/systemui/qs/SecQSImpl;->barController:Lcom/android/systemui/qs/bar/BarController;

    invoke-interface {p1}, Lcom/android/systemui/qs/dagger/QSComponent;->getQscMainViewController()Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/util/ViewController;->init()V

    iput-object p2, v2, Lcom/android/systemui/qs/SecQSImpl;->qscMainViewController:Lcom/android/systemui/qs/customize/viewcontroller/QSCMainViewController;

    iget-object p2, v7, Lcom/android/systemui/qs/NonInterceptingScrollView;->mSecNonInterceptingScrollView:Lcom/android/systemui/qs/SecNonInterceptingScrollView;

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v2, Lcom/android/systemui/qs/SecQSImpl;->qsExpanded:Lkotlin/jvm/functions/Function0;

    iput-object v1, p2, Lcom/android/systemui/qs/SecNonInterceptingScrollView;->qsExpanded:Lkotlin/jvm/functions/Function0;

    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/qs/dagger/QSComponent;->getQsButtonsContainerController()Lcom/android/systemui/qs/buttons/QSButtonsContainerController;

    move-result-object p2

    iput-object p2, v2, Lcom/android/systemui/qs/SecQSImpl;->qsButtonsContainerController:Lcom/android/systemui/qs/buttons/QSButtonsContainerController;

    invoke-interface {p1}, Lcom/android/systemui/qs/dagger/QSComponent;->getQsGradationDrawableController()Lcom/android/systemui/qs/SecQSGradationDrawableController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v2, Lcom/android/systemui/qs/SecQSImpl;->qsPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iget-object p1, v2, Lcom/android/systemui/qs/SecQSImpl;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {p1, v2}, Lcom/android/systemui/shade/SecPanelSplitHelper;->addListener(Lcom/android/systemui/shade/PanelTransitionStateListener;)V

    iget-object p1, v2, Lcom/android/systemui/qs/SecQSImpl;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->addCallback(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;)V

    iget-object p1, v2, Lcom/android/systemui/qs/SecQSImpl;->coloredBGHelper$delegate:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/bar/ColoredBGHelper;

    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->initialize()V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/QSImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSImpl;->onStateChanged(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    new-instance p2, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/QSImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSImpl;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/QSImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSImpl;->mLayoutDirection:I

    iget-object v2, p0, Lcom/android/systemui/qs/QSImpl;->mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSImpl;->mLayoutDirection:I

    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/android/systemui/qs/SecQSImpl;->secQSImplAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->onRtlChanged()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_0
    if-eqz v2, :cond_5

    iget-object v0, v2, Lcom/android/systemui/qs/SecQSImpl;->barController:Lcom/android/systemui/qs/bar/BarController;

    if-eqz v0, :cond_3

    iget v1, v0, Lcom/android/systemui/qs/bar/BarController;->mOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/qs/bar/BarController;->mQSLastExpansionInitializer:Ljava/lang/Runnable;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Lcom/android/systemui/qs/bar/BarController;->mOrientation:I

    :cond_3
    :goto_1
    iget-object v0, v2, Lcom/android/systemui/qs/SecQSImpl;->coloredBGHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/ColoredBGHelper;

    if-eqz v0, :cond_5

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    iget v1, v0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->uiMode:I

    if-eq p1, v1, :cond_4

    const-string v1, "ColoredBGHelper"

    const-string v2, "onUiModeChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, v0, Lcom/android/systemui/qs/bar/ColoredBGHelper;->uiMode:I

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->updateBGColor(Z)V

    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->updateQsState()V

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mListening:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSImpl;->setListening(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizerController;->setQs(Lcom/android/systemui/plugins/qs/QS;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizerController;->setContainerController(Lcom/android/systemui/plugins/qs/QSContainerController;)V

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mScrollListener:Lcom/android/systemui/plugins/qs/QS$ScrollListener;

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    iget-object v2, p0, Lcom/android/systemui/qs/QSImpl;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    :cond_2
    const-string v0, "QSImpl"

    invoke-virtual {v2, v0}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mListeningAndVisibilityLifecycleOwner:Lcom/android/systemui/qs/QSImpl$ListeningAndVisibilityLifecycleOwner;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/qs/QSImpl$ListeningAndVisibilityLifecycleOwner;->mDestroyed:Z

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSImpl$ListeningAndVisibilityLifecycleOwner;->updateState()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

    if-eqz p0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSImpl;->secQSImplAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->setQs(Lcom/android/systemui/plugins/qs/QS;)V

    invoke-virtual {v0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->destroyQSViews()V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSImpl;->barController:Lcom/android/systemui/qs/bar/BarController;

    if-eqz v0, :cond_5

    iput-object v1, v0, Lcom/android/systemui/qs/bar/BarController;->mBarListener:Lcom/android/systemui/qs/bar/BarController$3;

    iget-object v1, v0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    sget-object v1, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    const-string v2, "BarController"

    monitor-enter v1

    :try_start_0
    sget-object v3, Lcom/android/systemui/logging/PanelScreenShotLogger;->providers:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v1, v0, Lcom/android/systemui/qs/bar/BarController;->mKnoxStateMonitorCallback:Lcom/android/systemui/qs/bar/BarController$1;

    iget-object v2, v0, Lcom/android/systemui/qs/bar/BarController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->removeCallback(Lcom/android/systemui/knox/KnoxStateMonitorCallback;)V

    iget-object v1, v0, Lcom/android/systemui/qs/bar/BarController;->mBarBackUpRestoreHelper:Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;

    iget-object v1, v1, Lcom/android/systemui/qs/bar/BarBackUpRestoreHelper;->qsBackupRestoreManager$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSBackupRestoreManager;

    const-string v2, "QuickPanelLayout"

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSBackupRestoreManager;->removeCallback(Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->removeListener(Lcom/android/systemui/shade/PanelTransitionStateListener;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/SecQSImpl;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->removeListener(Lcom/android/systemui/shade/PanelTransitionStateListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSImpl;->lockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->removeCallback(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;)V

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSImpl;->coloredBGHelper$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/ColoredBGHelper;

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/ColoredBGHelper;->onDestroy()V

    :cond_6
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "expanded"

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSImpl;->mQsExpanded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "listening"

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSImpl;->mListening:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "visible"

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSImpl;->mQsVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/QSCustomizerController;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mQsExpanded:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSPanelControllerBase;->mTileLayout:Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/SecQSPanel$QSTileLayout;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final onStateChanged(I)V
    .locals 2

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget v0, p0, Lcom/android/systemui/qs/QSImpl;->mStatusBarState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/QSImpl;->mStatusBarState:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/qs/QSImpl;->mLastQSExpansion:F

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->updateQsState()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->updateShowCollapsedOnKeyguard()V

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    iget-object v1, v0, Lcom/android/systemui/qs/SecQSImpl;->secQSImplAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->onStateChanged(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImplController;->getView()Lcom/android/systemui/qs/QSContainerImpl;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSecQSContainerImpl:Lcom/android/systemui/qs/SecQSContainerImpl;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/qs/SecQSContainerImpl;->keyguardShowing:Z

    :goto_1
    iput p1, v0, Lcom/android/systemui/qs/SecQSImpl;->barState:I

    :cond_5
    return-void
.end method

.method public final onUpcomingStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSImpl;->onStateChanged(I)V

    :cond_0
    return-void
.end method

.method public final setCollapseExpandAction(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->setCollapseExpandAction(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->setCollapseExpandAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setCollapsedMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V
    .locals 0

    return-void
.end method

.method public final setContainerController(Lcom/android/systemui/plugins/qs/QSContainerController;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mQSCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizerController;->setContainerController(Lcom/android/systemui/plugins/qs/QSContainerController;)V

    return-void
.end method

.method public final setExpanded(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSImpl;->mQsExpanded:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mInSplitShade:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSImpl;->setListening(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->updateQsPanelControllerListening()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->updateQsState()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSImpl;->mListening:Z

    iget-object v1, v0, Lcom/android/systemui/qs/SecQSImpl;->barController:Lcom/android/systemui/qs/bar/BarController;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;-><init>(ZI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/qs/SecQSImpl;->qsButtonsContainerController:Lcom/android/systemui/qs/buttons/QSButtonsContainerController;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/qs/buttons/QSButtonsContainerController;->setListening(ZZ)V

    :cond_2
    return-void
.end method

.method public final setFancyClipping(IIIIIZZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/systemui/qs/QSContainerImpl;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/android/systemui/qs/QSContainerImpl;

    iget v1, v0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingLeftInset:I

    const/4 v2, 0x1

    if-eq v1, p1, :cond_0

    iput p1, v0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingLeftInset:I

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v3, v0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingTop:I

    if-eq v3, p2, :cond_1

    iput p2, v0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingTop:I

    move v1, v2

    :cond_1
    iget v3, v0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingRightInset:I

    if-eq v3, p3, :cond_2

    iput p3, v0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingRightInset:I

    move v1, v2

    :cond_2
    iget v3, v0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingBottom:I

    if-eq v3, p4, :cond_3

    iput p4, v0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingBottom:I

    move v1, v2

    :cond_3
    iget-boolean v3, v0, Lcom/android/systemui/qs/QSContainerImpl;->mClippingEnabled:Z

    if-eq v3, p6, :cond_4

    iput-boolean p6, v0, Lcom/android/systemui/qs/QSContainerImpl;->mClippingEnabled:Z

    move v1, v2

    :cond_4
    iget-boolean v3, v0, Lcom/android/systemui/qs/QSContainerImpl;->mIsFullWidth:Z

    if-eq v3, p7, :cond_5

    iput-boolean p7, v0, Lcom/android/systemui/qs/QSContainerImpl;->mIsFullWidth:Z

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->updateClippingPath()V

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

    if-eqz p0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/qs/SecQSImpl;->secQSImplAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    if-eqz v0, :cond_7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->setFancyClipping(IIIIIZZ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_7
    return-void
.end method

.method public final setHasNotifications(Z)V
    .locals 0

    return-void
.end method

.method public final setHeaderClickable(Z)V
    .locals 0

    return-void
.end method

.method public final setHeaderListening(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    iget-object v0, v0, Lcom/android/systemui/qs/QSContainerImplController;->mQuickStatusBarHeaderController:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSImpl;->mQsExpanded:Z

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/qs/SecQSImpl;->setListening(ZZ)V

    :cond_0
    return-void
.end method

.method public final setHeightOverride(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    return-void
.end method

.method public final setInSplitShade(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSImpl;->mInSplitShade:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->updateShowCollapsedOnKeyguard()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->updateQsState()V

    return-void
.end method

.method public final setIsNotificationPanelFullWidth(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSImpl;->mIsSmallScreen:Z

    return-void
.end method

.method public final setListening(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSImpl;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mQSContainerImplController:Lcom/android/systemui/qs/QSContainerImplController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSImpl;->mQsVisible:Z

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-object v0, v0, Lcom/android/systemui/qs/QSContainerImplController;->mQuickStatusBarHeaderController:Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mListeningAndVisibilityLifecycleOwner:Lcom/android/systemui/qs/QSImpl$ListeningAndVisibilityLifecycleOwner;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSImpl$ListeningAndVisibilityLifecycleOwner;->updateState()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->updateQsPanelControllerListening()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/qs/QSImpl;->mQsVisible:Z

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSImpl;->mQsExpanded:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/qs/SecQSImpl;->setListening(ZZ)V

    :cond_2
    return-void
.end method

.method public final setOverScrollAmount(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mOverScrolling:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

    if-eqz p0, :cond_1

    int-to-float p1, p1

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSImpl;->secQSImplAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->setOverScrollAmount(F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    int-to-float p0, p1

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final setOverscrolling(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSImpl;->mStackScrollerOverscrolling:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

    if-eqz v0, :cond_0

    iput-boolean p1, v0, Lcom/android/systemui/qs/SecQSImpl;->stackScrollerOverscrolling:Z

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSImpl;->secQSImplAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->setStackScrollerOverscrolling(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->updateQsState()V

    return-void
.end method

.method public final setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSImpl;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    return-void
.end method

.method public final setQsExpansion(FFFF)V
    .locals 5

    iget-boolean p3, p0, Lcom/android/systemui/qs/QSImpl;->mIsSmallScreen:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p3, p0, Lcom/android/systemui/qs/QSImpl;->mInSplitShade:Z

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcom/android/systemui/qs/QSImpl;->mTransitioningToFullShade:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/android/systemui/qs/QSImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    check-cast p3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget p3, p3, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/qs/QSImpl;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    iput p1, p3, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    iget-object v1, p3, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    cmpl-float v4, p1, v3

    if-lez v4, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    iput-boolean v4, v1, Lcom/android/systemui/qs/NonInterceptingScrollView;->mScrollEnabled:Z

    :cond_3
    invoke-virtual {p3}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->isKeyguardState()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-boolean p3, p0, Lcom/android/systemui/qs/QSImpl;->mShowCollapsedOnKeyguard:Z

    if-nez p3, :cond_4

    move p3, v0

    goto :goto_2

    :cond_4
    move p3, v2

    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSImpl;->mHeaderAnimating:Z

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/systemui/qs/QSImpl;->mStatusBarState:I

    if-ne v1, v0, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSImpl;->mShowCollapsedOnKeyguard:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->isKeyguardState()Z

    move-result v1

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v4, p0, Lcom/android/systemui/qs/QSImpl;->mLastQSExpansion:F

    cmpl-float v4, p1, v4

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSImpl;->mLastKeyguardAndExpanded:Z

    if-ne v4, p3, :cond_6

    iget v4, p0, Lcom/android/systemui/qs/QSImpl;->mLastViewHeight:I

    if-ne v4, v1, :cond_6

    iget v4, p0, Lcom/android/systemui/qs/QSImpl;->mSquishinessFraction:F

    cmpl-float v4, v4, p4

    if-nez v4, :cond_6

    iget v4, p0, Lcom/android/systemui/qs/QSImpl;->mLastPanelFraction:F

    cmpl-float v4, v4, p2

    if-nez v4, :cond_6

    return-void

    :cond_6
    iput p2, p0, Lcom/android/systemui/qs/QSImpl;->mLastPanelFraction:F

    iput p4, p0, Lcom/android/systemui/qs/QSImpl;->mSquishinessFraction:F

    iput p1, p0, Lcom/android/systemui/qs/QSImpl;->mLastQSExpansion:F

    iput-boolean p3, p0, Lcom/android/systemui/qs/QSImpl;->mLastKeyguardAndExpanded:Z

    iput v1, p0, Lcom/android/systemui/qs/QSImpl;->mLastViewHeight:I

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p1, p2

    if-nez p2, :cond_7

    move p2, v0

    goto :goto_3

    :cond_7
    move p2, v2

    :goto_3
    cmpl-float p3, p1, v3

    if-nez p3, :cond_8

    goto :goto_4

    :cond_8
    move v0, v2

    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->getHeightDiff()I

    iget-object p3, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p3, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    if-eqz v0, :cond_9

    iget-object p3, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {p3, v2}, Landroid/widget/ScrollView;->setScrollY(I)V

    :cond_9
    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/android/systemui/qs/QSImpl;->mQsBounds:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {p3}, Landroid/widget/ScrollView;->getTranslationY()F

    move-result p3

    neg-float p3, p3

    float-to-int p3, p3

    iput p3, p2, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lcom/android/systemui/qs/QSImpl;->mQsBounds:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {p3}, Landroid/widget/ScrollView;->getWidth()I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Lcom/android/systemui/qs/QSImpl;->mQsBounds:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {p3}, Landroid/widget/ScrollView;->getHeight()I

    move-result p3

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->updateQsBounds()V

    iget-object p2, p0, Lcom/android/systemui/qs/QSImpl;->mQSSquishinessController:Lcom/android/systemui/qs/QSSquishinessController;

    if-eqz p2, :cond_c

    iget p3, p0, Lcom/android/systemui/qs/QSImpl;->mSquishinessFraction:F

    iget p4, p2, Lcom/android/systemui/qs/QSSquishinessController;->squishiness:F

    cmpg-float p4, p4, p3

    if-nez p4, :cond_b

    goto :goto_5

    :cond_b
    iput p3, p2, Lcom/android/systemui/qs/QSSquishinessController;->squishiness:F

    :cond_c
    :goto_5
    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

    if-eqz p0, :cond_d

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSImpl;->secQSImplAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->setQsExpansionPosition(F)V

    :cond_d
    return-void
.end method

.method public final setQsVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mQsVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSImpl;->mQsVisible:Z

    iget-boolean p1, p0, Lcom/android/systemui/qs/QSImpl;->mListening:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSImpl;->setListening(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mListeningAndVisibilityLifecycleOwner:Lcom/android/systemui/qs/QSImpl$ListeningAndVisibilityLifecycleOwner;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl$ListeningAndVisibilityLifecycleOwner;->updateState()V

    return-void
.end method

.method public final setScrollListener(Lcom/android/systemui/plugins/qs/QS$ScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSImpl;->mScrollListener:Lcom/android/systemui/plugins/qs/QS$ScrollListener;

    return-void
.end method

.method public final setShouldUpdateSquishinessOnMedia(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSImpl;->mShouldUpdateMediaSquishiness:Z

    return-void
.end method

.method public final setTransitionToFullShadeProgress(ZFF)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mTransitioningToFullShade:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSImpl;->mTransitioningToFullShade:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->updateShowCollapsedOnKeyguard()V

    :cond_0
    iput p2, p0, Lcom/android/systemui/qs/QSImpl;->mLockscreenToShadeProgress:F

    iget p2, p0, Lcom/android/systemui/qs/QSImpl;->mLastQSExpansion:F

    iget v0, p0, Lcom/android/systemui/qs/QSImpl;->mLastPanelFraction:F

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget p3, p0, Lcom/android/systemui/qs/QSImpl;->mSquishinessFraction:F

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/android/systemui/qs/QSImpl;->setQsExpansion(FFFF)V

    return-void
.end method

.method public updateQsBounds()V
    .locals 6

    iget v0, p0, Lcom/android/systemui/qs/QSImpl;->mStatusBarState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSImpl;->mLastQSExpansion:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070e97

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/android/systemui/qs/QSImpl;->mQsBounds:Landroid/graphics/Rect;

    neg-int v4, v0

    iget-object v5, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getWidth()I

    move-result v5

    add-int/2addr v5, v0

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    iget-object v3, p0, Lcom/android/systemui/qs/QSImpl;->mQsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setClipBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    iget-object v3, p0, Lcom/android/systemui/qs/QSImpl;->mLocationTemp:[I

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->getLocationOnScreen([I)V

    aget v0, v3, v1

    aget v1, v3, v2

    iget-object v2, p0, Lcom/android/systemui/qs/QSImpl;->mQsMediaHost:Lcom/android/systemui/media/controls/ui/view/MediaHost;

    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/view/MediaHost;->currentClipping:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/qs/QSImpl;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelScrollView:Lcom/android/systemui/qs/NonInterceptingScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    iget-object p0, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQSPanelController;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v4, p0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final updateQsPanelControllerListening()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSImpl;->mListening:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSImpl;->mQsVisible:Z

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSImpl;->mQsExpanded:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->setListening(Z)V

    return-void
.end method

.method public final updateQsState()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mQsExpanded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mStackScrollerOverscrolling:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mHeaderAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSImpl;->mSecQSImpl:Lcom/android/systemui/qs/SecQSImpl;

    if-eqz v3, :cond_6

    if-nez v0, :cond_2

    iget-object v0, v3, Lcom/android/systemui/qs/SecQSImpl;->shadeRepository$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast v4, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v4, v4, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->lockscreenShadeExpansion:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, v4, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/data/repository/ShadeRepository;

    check-cast v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->legacyExpandImmediate:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v3, Lcom/android/systemui/qs/SecQSImpl;->panelSplitHelper:Lcom/android/systemui/shade/SecPanelSplitHelper;

    invoke-virtual {v0}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isQSState()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    iget-boolean v0, v3, Lcom/android/systemui/qs/SecQSImpl;->stackScrollerOverscrolling:Z

    if-nez v0, :cond_5

    iget-object v0, v3, Lcom/android/systemui/qs/SecQSImpl;->secQSImplAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    if-eqz v0, :cond_3

    sget-boolean v4, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailShowing:Z

    if-ne v4, v1, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/systemui/qs/animator/QsAnimatorState;->isCustomizerShowing:Z

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v2

    :cond_6
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSImpl;->mQsExpanded:Z

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/SecQSPanelControllerBase;->setExpanded(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->isKeyguardState()Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    iget-boolean v6, p0, Lcom/android/systemui/qs/QSImpl;->mQsExpanded:Z

    const/4 v7, 0x4

    if-nez v6, :cond_8

    if-eqz v4, :cond_8

    iget-boolean v6, p0, Lcom/android/systemui/qs/QSImpl;->mHeaderAnimating:Z

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/systemui/qs/QSImpl;->mShowCollapsedOnKeyguard:Z

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    move v6, v7

    goto :goto_5

    :cond_8
    :goto_4
    move v6, v2

    :goto_5
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSImpl;->mHeaderAnimating:Z

    if-nez v4, :cond_9

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSImpl;->mShowCollapsedOnKeyguard:Z

    if-eqz v4, :cond_a

    :cond_9
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSImpl;->mQsExpanded:Z

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSImpl;->mStackScrollerOverscrolling:Z

    if-nez v4, :cond_b

    :cond_a
    move v4, v1

    goto :goto_6

    :cond_b
    move v4, v2

    :goto_6
    iget-object v6, p0, Lcom/android/systemui/qs/QSImpl;->mQuickQSPanelController:Lcom/android/systemui/qs/SecQuickQSPanelController;

    iget-boolean v8, v5, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mExpanded:Z

    if-ne v8, v4, :cond_c

    goto :goto_7

    :cond_c
    iput-boolean v4, v5, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->mExpanded:Z

    invoke-virtual {v6, v4}, Lcom/android/systemui/qs/SecQuickQSPanelController;->setExpanded(Z)V

    :goto_7
    sget-boolean v4, Lcom/android/systemui/qs/animator/QsAnimatorState;->isDetailPopupShowing:Z

    if-nez v4, :cond_e

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSImpl;->mQsDisabled:Z

    if-nez v4, :cond_d

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    move v1, v2

    :cond_e
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mQSPanelController:Lcom/android/systemui/qs/SecQSPanelController;

    if-eqz v1, :cond_f

    goto :goto_9

    :cond_f
    move v2, v7

    :goto_9
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/SecQSPanelController;->setVisibility(I)V

    if-eqz v3, :cond_11

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSImpl;->mQsExpanded:Z

    iget-object v0, v3, Lcom/android/systemui/qs/SecQSImpl;->secQSImplAnimatorManager:Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/animator/SecQSImplAnimatorManager;->setQsExpanded(Z)V

    :cond_10
    iget-object v0, v3, Lcom/android/systemui/qs/SecQSImpl;->barController:Lcom/android/systemui/qs/bar/BarController;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/android/systemui/qs/bar/BarController;->mAllBarItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/bar/BarController$$ExternalSyntheticLambda1;-><init>(ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_11
    return-void
.end method

.method public final updateShowCollapsedOnKeyguard()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/QSImpl;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mTransitioningToFullShade:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mInSplitShade:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSImpl;->mShowCollapsedOnKeyguard:Z

    if-eq v0, v1, :cond_2

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSImpl;->mShowCollapsedOnKeyguard:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->updateQsState()V

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSImpl;->isKeyguardState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/qs/QSImpl;->mLastQSExpansion:F

    iget v1, p0, Lcom/android/systemui/qs/QSImpl;->mLastPanelFraction:F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/qs/QSImpl;->mSquishinessFraction:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/qs/QSImpl;->setQsExpansion(FFFF)V

    :cond_2
    return-void
.end method
