.class public final Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final mAnimator:Lcom/android/systemui/qs/animator/QsCoverAnimator;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field public final mCoverDisplay:I

.field public mDisabled1:I

.field public mDisabled2:I

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public mExpandedFraction:F

.field public mExpandedHeight:F

.field public final mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field public final mFoldStateChangedListener:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$1;

.field public mIsAnnounced:Z

.field public mLp:Landroid/view/WindowManager$LayoutParams;

.field public mMaxExpandedHeight:F

.field public mPanelDisabled:Z

.field public mPanelExpanded:Z

.field public mPanelFullyExpanded:Z

.field public mPanelHeightAnimator:Landroid/animation/ValueAnimator;

.field public final mPanelResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field public mQSPanel:Landroid/view/View;

.field public final mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field public final mSubScreenComponent:Lcom/android/systemui/subscreen/dagger/SubScreenQuickPanelComponent$Factory;

.field public final mSubScreenQSEventHandler:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

.field public mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

.field public mSubScreenStateChangedListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

.field public final mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

.field public final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenQsPanelController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/keyguard/DisplayLifecycle;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/subscreen/ScreenRecordingStateProvider;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/Context;Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;Landroid/hardware/devicestate/DeviceStateManager;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/subscreen/dagger/SubScreenQuickPanelComponent$Factory;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/qp/util/SubscreenUtil;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p10

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x1

    iput v3, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mCoverDisplay:I

    const/4 v4, 0x0

    iput v4, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mDisabled1:I

    iput v4, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mDisabled2:I

    iput-boolean v4, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelDisabled:Z

    iput-boolean v4, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mIsAnnounced:Z

    new-instance v4, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$1;

    invoke-direct {v4, v0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$1;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;)V

    iput-object v4, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mFoldStateChangedListener:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$1;

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubscreenQsPanelController:Lcom/android/systemui/qp/SubscreenQsPanelController;

    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qp/SubscreenQsPanelController;->init()V

    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    move-object/from16 v14, p6

    iput-object v14, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    move-object/from16 v4, p13

    iput-object v4, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenComponent:Lcom/android/systemui/subscreen/dagger/SubScreenQuickPanelComponent$Factory;

    move-object/from16 v11, p14

    iput-object v11, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    const-string v4, "com.samsung.android.hardware.display.category.BUILTIN"

    move-object/from16 v9, p5

    invoke-virtual {v9, v4}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v4

    array-length v5, v4

    if-le v5, v3, :cond_0

    aget-object v3, v4, v3

    move-object/from16 v4, p9

    invoke-virtual {v4, v3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object/from16 v4, p9

    move-object v3, v4

    :goto_0
    iput-object v3, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    iput v4, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mCoverDisplay:I

    invoke-virtual/range {p10 .. p10}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->reset()V

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, v2, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mMaxLengthSeconds:F

    const v4, 0x3f19999a    # 0.6f

    iput v4, v2, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->mSpeedUpFactor:F

    invoke-virtual/range {p10 .. p10}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->build()Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    new-instance v2, Lcom/android/systemui/qs/animator/QsCoverAnimator;

    invoke-direct {v2, v3, v1}, Lcom/android/systemui/qs/animator/QsCoverAnimator;-><init>(Landroid/content/Context;Lcom/android/systemui/qp/SubscreenQsPanelController;)V

    iput-object v2, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mAnimator:Lcom/android/systemui/qs/animator/QsCoverAnimator;

    move-object/from16 v1, p15

    iput-object v0, v1, Lcom/android/systemui/qp/util/SubscreenUtil;->mSubScreenQuickPanelWindowController:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;

    new-instance v1, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    move-object v4, v1

    new-instance v2, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda0;

    move-object v5, v2

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    new-instance v2, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda0;

    move-object v6, v2

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    new-instance v2, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda1;

    move-object v7, v2

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    new-instance v2, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda6;

    move-object v8, v2

    invoke-direct {v2, v0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;)V

    new-instance v2, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda7;

    move-object v10, v2

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    new-instance v2, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda8;

    move-object v12, v2

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    new-instance v2, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda1;

    move-object v13, v2

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    new-instance v2, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda8;

    move-object v15, v2

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    new-instance v2, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda7;

    move-object/from16 v17, v2

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    new-instance v2, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda7;

    move-object/from16 v18, v2

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    new-instance v2, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda1;

    move-object/from16 v21, v2

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    new-instance v2, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda2;

    move-object/from16 v23, v2

    invoke-direct {v2, v0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;)V

    new-instance v2, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda1;

    move-object/from16 v25, v2

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;I)V

    move-object/from16 v9, p11

    move-object/from16 v11, p5

    move-object/from16 v14, p8

    move-object/from16 v16, p12

    move-object/from16 v19, p14

    move-object/from16 v20, p7

    move-object/from16 v22, p6

    move-object/from16 v24, p16

    invoke-direct/range {v4 .. v25}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Landroid/hardware/devicestate/DeviceStateManager;Ljava/util/function/BooleanSupplier;Landroid/hardware/display/DisplayManager;Ljava/util/function/DoubleSupplier;Ljava/util/function/Supplier;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ljava/util/function/DoubleSupplier;Lcom/android/systemui/navigationbar/NavigationModeController;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/subscreen/ScreenRecordingStateProvider;Ljava/util/function/Supplier;Lcom/android/systemui/model/SysUiState;Ljava/util/function/DoubleConsumer;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ljava/util/function/Supplier;)V

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQSEventHandler:Lcom/android/systemui/subscreen/SubScreenQSEventHandler;

    return-void
.end method


# virtual methods
.method public final animateCollapsePanels(IZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->checkNotInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelExpanded:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->collapsePanel()V

    :cond_1
    return-void
.end method

.method public final animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->checkNotInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelExpanded:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->checkNotInitialized()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->createPanelHeightAnimatorAndRun(FZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final checkNotInitialized()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final collapsePanel()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->checkNotInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->createPanelHeightAnimatorAndRun(FZ)V

    return-void
.end method

.method public final createPanelHeightAnimatorAndRun(FZ)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget v1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mMaxExpandedHeight:F

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelFullyExpanded:Z

    iget v3, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedHeight:F

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v3, 0x1

    aput v1, v4, v3

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelHeightAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0, p2, v2}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;ZZ)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelHeightAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$3;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelHeightAnimator:Landroid/animation/ValueAnimator;

    iget v5, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedHeight:F

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mMaxExpandedHeight:F

    :cond_1
    move v6, v0

    sub-float p2, v6, v5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final disable(IIIZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->checkNotInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mDisabled1:I

    xor-int/2addr p1, p2

    iput p2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mDisabled1:I

    iget p4, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mDisabled2:I

    xor-int/2addr p4, p3

    iput p3, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mDisabled2:I

    const/high16 v0, 0x10000

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    and-int p1, p2, v0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->collapsePanel()V

    :cond_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->collapsePanel()V

    :cond_2
    and-int/lit8 p1, p4, 0x4

    if-eqz p1, :cond_3

    and-int/lit8 p1, p3, 0x4

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->collapsePanel()V

    :cond_3
    and-int p1, p2, v0

    if-nez p1, :cond_5

    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_5

    and-int/lit8 p1, p3, 0x4

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-boolean p2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelDisabled:Z

    if-eq p2, p1, :cond_6

    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelDisabled:Z

    :cond_6
    return-void
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SubScreenQuickPanelWindowController ============================================= "

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    mMaxExpandedHeight = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mMaxExpandedHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    mExpandedHeight = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    mPanelExpanded = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    mPanelFullyExpanded = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelFullyExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    mPanelDisabled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelDisabled:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final onCameraLaunchGestureDetected(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->checkNotInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelExpanded:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->collapsePanel()V

    :cond_1
    return-void
.end method

.method public final updatePanelExpansion(FZ)V
    .locals 6

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mMaxExpandedHeight:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mMaxExpandedHeight:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    :cond_1
    iput p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedHeight:F

    cmpl-float p1, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelExpanded:Z

    if-eq p1, v3, :cond_6

    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelExpanded:Z

    new-instance v3, Landroid/content/Intent;

    if-eqz p1, :cond_3

    const-string v4, "com.android.systemui.subscreen.EXPANDED"

    goto :goto_1

    :cond_3
    const-string v4, "com.android.systemui.subscreen.COLLAPSED"

    :goto_1
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v5, Lcom/android/systemui/UiOffloadThread;

    invoke-virtual {v4, v5}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/UiOffloadThread;

    new-instance v5, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda14;

    invoke-direct {v5, p0, v3}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;Landroid/content/Intent;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->checkNotInitialized()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    if-eqz p1, :cond_5

    move p1, v2

    goto :goto_2

    :cond_5
    const/16 p1, 0x8

    :goto_2
    invoke-virtual {v3, p1}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;->setVisibility(I)V

    :cond_6
    :goto_3
    iget p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedHeight:F

    iget v3, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mMaxExpandedHeight:F

    div-float/2addr p1, v3

    iput p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedFraction:F

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mAnimator:Lcom/android/systemui/qs/animator/QsCoverAnimator;

    if-eqz v4, :cond_9

    iget-object v5, v4, Lcom/android/systemui/qs/animator/QsCoverAnimator;->mPanelViewTranslationAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v5, :cond_7

    invoke-virtual {v5, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_7
    if-eqz p2, :cond_8

    iget-object p2, v4, Lcom/android/systemui/qs/animator/QsCoverAnimator;->mPanelViewAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    goto :goto_4

    :cond_8
    iget-object p1, v4, Lcom/android/systemui/qs/animator/QsCoverAnimator;->mQSPanel:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    :goto_4
    iget p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedFraction:F

    cmpl-float p2, p1, v0

    if-nez p2, :cond_a

    iput-boolean v2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mIsAnnounced:Z

    :cond_a
    cmpl-float p1, p1, v3

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->checkNotInitialized()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mIsAnnounced:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenQsWindowView:Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mContext:Landroid/content/Context;

    const v4, 0x7f1312e1

    invoke-virtual {p2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_c
    iput-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mIsAnnounced:Z

    :cond_d
    :goto_5
    iget p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedFraction:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_e

    move p1, v1

    goto :goto_6

    :cond_e
    move p1, v2

    :goto_6
    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mPanelFullyExpanded:Z

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenStateChangedListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    if-eqz p1, :cond_f

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p2, "quickPanelSwipeFraction"

    iget v3, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedFraction:F

    invoke-virtual {p1, p2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSubScreenStateChangedListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->onStateChanged(Landroid/os/Bundle;)V

    :cond_f
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    if-nez p1, :cond_10

    goto :goto_8

    :cond_10
    iget p2, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mExpandedFraction:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_11

    goto :goto_7

    :cond_11
    move v1, v2

    :goto_7
    const-wide/16 v2, 0x800

    invoke-virtual {p1, v2, v3, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(JZ)V

    iget p0, p0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowController;->mCoverDisplay:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    :goto_8
    return-void
.end method
