.class public final Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/view/ContentView;
.implements Lcom/samsung/android/globalactions/presentation/view/ViewStateController;


# instance fields
.field public mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;

.field public mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

.field public mBackgroundView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$FrontLargeCoverGlobalActionsBackgroundView;

.field public final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field public mConfirmView:Landroid/view/ViewGroup;

.field public final mContext:Landroid/content/Context;

.field public final mCoverWindowContext:Landroid/content/Context;

.field public final mDialog:Landroid/app/Presentation;

.field public final mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

.field public final mFoldStateListener:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$1;

.field public mForceDismiss:Z

.field public final mFrontCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;

.field public final mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

.field public final mIsCameraViewCover:Z

.field public final mIsIconOnly:Z

.field public mIsSecureConfirming:Z

.field public mIsWhiteTheme:Z

.field public mLastFoldedState:Z

.field public mListView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentGridView;

.field public final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field public final mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

.field public final mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

.field public final mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

.field public mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$RootView;

.field public mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

.field public mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p8, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;

    invoke-direct {p8, p0}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;)V

    iput-object p8, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mFrontCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;

    const-string p8, "display"

    invoke-virtual {p1, p8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x1

    invoke-virtual {p8, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v3, 0x96b

    invoke-virtual {p1, v1, v3, v2}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mCoverWindowContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mCoverWindowContext:Landroid/content/Context;

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mCoverWindowContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iput-object p7, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    iput-object p9, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    sget-object p2, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mLastFoldedState:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mIsSecureConfirming:Z

    sget-object p3, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_CAMERA_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {p4, p3}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mIsCameraViewCover:Z

    if-eqz p3, :cond_2

    const-string p3, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    invoke-virtual {p8, p3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p3

    array-length p4, p3

    if-lez p4, :cond_1

    aget-object v2, p3, p2

    :cond_1
    if-eqz v2, :cond_5

    new-instance p2, Landroid/app/Presentation;

    invoke-direct {p2, p1, v2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    goto :goto_2

    :cond_2
    const-string p2, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {p8, p2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p2

    array-length p3, p2

    if-le p3, v0, :cond_3

    new-instance p3, Landroid/app/Presentation;

    aget-object p4, p2, v0

    invoke-direct {p3, p1, p4}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget p1, p1, Landroid/graphics/Point;->x:I

    const/16 p2, 0x200

    if-ge p1, p2, :cond_4

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mIsIconOnly:Z

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Failed to get front display. The length of array is : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FrontLargeCoverContentView"

    invoke-virtual {p6, p2, p1}, Lcom/samsung/android/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    new-instance p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$1;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;)V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mFoldStateListener:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$1;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mFoldStateListener:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$1;

    invoke-virtual {p1, p0, v2}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->HIDE:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    :cond_0
    return-void
.end method

.method public final forceRequestLayout()V
    .locals 0

    return-void
.end method

.method public final getAnimationState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-object p0
.end method

.method public final getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-object p0
.end method

.method public final hideConfirm()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    return-void
.end method

.method public final hideDialogOnSecureConfirm()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->SUPPORT_SECONDARY_DISPLAY_AS_COVER:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_FOLDED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mIsSecureConfirming:Z

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    return-void
.end method

.method public final initAnimations()V
    .locals 8

    new-instance v7, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    move-object v0, v7

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mFrontCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;

    iput-object v0, v7, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$3;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$RootView;

    iput-object v0, v7, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverViewAnimator;->mRootView:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v0, v7, v1, p0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    return-void
.end method

.method public final initDimens()V
    .locals 0

    return-void
.end method

.method public final initLayouts()V
    .locals 7

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$RootView;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    invoke-virtual {v1}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$RootView;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$RootView;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v2, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_FRONT_COVER_ITEM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mContext:Landroid/content/Context;

    const v2, 0x7f13070b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentGridView;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    invoke-virtual {v2}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentGridView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentGridView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentGridView;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentGridView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mIsCameraViewCover:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_MINI_SVIEW_COVER_SIDE_MARGIN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v1, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_FRONT_LARGE_COVER_VERTICAL_SPACE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v1, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v5, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_FRONT_LARGE_COVER_HORIZONTAL_SPACE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v4, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;

    invoke-direct {v4, p0}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;)V

    iput-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentGridView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    invoke-virtual {v5}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v5, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$2;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;)V

    iput-object v5, v4, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentGridView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentGridView;

    new-instance v5, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$HorizontalSpaceItemDecoration;

    invoke-direct {v5, p0, v1}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$HorizontalSpaceItemDecoration;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;I)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentGridView;

    new-instance v4, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$VerticalSpaceItemDecoration;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$VerticalSpaceItemDecoration;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;I)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$RootView;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_FRONT_COVER_COFIRM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v1, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_WHITE_THEME:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mIsWhiteTheme:Z

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$RootView;

    invoke-virtual {v0, v1}, Landroid/app/Presentation;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SUPPORT_SF_EFFECT:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SUPPORT_CAPTURED_BLUR:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$FrontLargeCoverGlobalActionsBackgroundView;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$FrontLargeCoverGlobalActionsBackgroundView;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mBackgroundView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$FrontLargeCoverGlobalActionsBackgroundView;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createViewInflateStrategy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/globalactions/presentation/strategies/ViewInflateStrategy;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mBackgroundView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$FrontLargeCoverGlobalActionsBackgroundView;

    invoke-interface {v1, v4}, Lcom/samsung/android/globalactions/presentation/strategies/ViewInflateStrategy;->onInflateView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mBackgroundView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$FrontLargeCoverGlobalActionsBackgroundView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/app/Presentation;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$RootView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mIsCameraViewCover:Z

    if-eqz v2, :cond_4

    const-wide/16 v4, 0x1770

    goto :goto_2

    :cond_4
    const-wide/16 v4, 0x1388

    :goto_2
    invoke-virtual {v1, v4, v5}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10405ee

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x700

    invoke-virtual {v2, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v1

    const-string v2, "isFolded"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "samsung.android.wallpaper.pause"

    invoke-virtual {p0, v3, v1, v0}, Landroid/app/WallpaperManager;->semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onDismiss()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Presentation;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mFoldStateListener:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$1;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mFoldStateListener:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$1;

    invoke-virtual {v0, v1}, Lcom/samsung/android/view/SemWindowManager;->unregisterFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v1

    const-string v2, "isFolded"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x11

    const-string/jumbo v2, "samsung.android.wallpaper.resume"

    invoke-virtual {p0, v1, v2, v0}, Landroid/app/WallpaperManager;->semSendWallpaperCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final setAnimationState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-void
.end method

.method public final setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-void
.end method

.method public final show()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->SUPPORT_SECONDARY_DISPLAY_AS_COVER:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_FOLDED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/util/SubscreenUtil;

    invoke-virtual {v0}, Lcom/android/systemui/qp/util/SubscreenUtil;->closeSubscreenPanel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    const-string v1, "FrontLargeCoverContentView"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string/jumbo v2, "show FrontLargeCoverContentView"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mDialog:Landroid/app/Presentation;

    invoke-virtual {p0}, Landroid/app/Presentation;->show()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v0, "Failed to show front display dialog - the dialog is null."

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final showConfirm(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    sget-object p1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SHOW_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    return-void
.end method

.method public final updateItemLists(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->getValidActions()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "screen_capture_popup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;

    iget-object v1, v1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;

    iget-object v0, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->mTempViewModelList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->mTempViewModelList:Ljava/util/List;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontLargeCoverContentView$ContentAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
