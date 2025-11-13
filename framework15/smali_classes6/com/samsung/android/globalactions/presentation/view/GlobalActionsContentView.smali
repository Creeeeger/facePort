.class public Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;
.super Ljava/lang/Object;
.source "GlobalActionsContentView.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/view/ContentView;
.implements Lcom/samsung/android/globalactions/presentation/view/ViewStateController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;,
        Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;,
        Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$BaseContentAdapter;,
        Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsBackgroundView;
    }
.end annotation


# static fields
.field private static final blacklist LAND_NUM_COLUMNS_4_ITEMS:I = 0x2

.field private static final blacklist LAND_NUM_COLUMNS_MORE_THAN_4_ITEMS:I = 0x3

.field private static final blacklist NAV_BAR_POS_LEFT:I = 0x1

.field private static final blacklist NAV_BAR_POS_RIGHT:I = 0x2

.field private static final blacklist PORT_NUM_COLUMNS_DEFAULT:I = 0x1

.field private static final blacklist PORT_NUM_COLUMNS_MORE_THEN_4_ITEMS:I = 0x2

.field private static final blacklist REFERENCE_NUM_ITEMS:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "GlobalActionsContentView"


# instance fields
.field private blacklist mAnimator:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;

.field private blacklist mAnimatorFSM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;

.field private blacklist mBackgroundView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsBackgroundView;

.field private blacklist mBaseAnimatorCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

.field private blacklist mBottomButtonView:Landroid/widget/LinearLayout;

.field private blacklist mBottomMsgView:Landroid/widget/LinearLayout;

.field private final blacklist mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private blacklist mConfirmationView:Landroid/view/ViewGroup;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDialog:Landroid/app/Dialog;

.field private final blacklist mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

.field private blacklist mForceDismiss:Z

.field private blacklist mGridViewAdapter:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$BaseContentAdapter;

.field private blacklist mIWindowManager:Landroid/view/IWindowManager;

.field private blacklist mIsClearCoverClosed:Z

.field private blacklist mIsVoiceAssistantMode:Z

.field private blacklist mIsWhiteTheme:Z

.field private blacklist mItemHorizontalSpacing:I

.field private blacklist mItemVerticalSpacingLand:I

.field private blacklist mItemVerticalSpacingPort:I

.field private blacklist mItemWidthLand:I

.field private blacklist mItemWidthPort:I

.field private blacklist mItemWidthPortPhone:I

.field private blacklist mLandListView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;

.field private blacklist mListView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;

.field private final blacklist mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field private blacklist mNeedToForceUpdate:Z

.field private final blacklist mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

.field private blacklist mPopupView:Landroid/widget/FrameLayout;

.field private final blacklist mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

.field private blacklist mRootView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;

.field private blacklist mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

.field private blacklist mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

.field private blacklist mTopView:Landroid/widget/LinearLayout;

.field private blacklist mViewAnimationState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

.field private blacklist mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

.field private final blacklist mWindowManagerUtil:Lcom/samsung/android/globalactions/util/WindowManagerUtils;


# direct methods
.method public static synthetic blacklist $r8$lambda$V_ak5_kI0J5rU5M9lra_KOhrHgo(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->lambda$initLayouts$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAnimatorFSM(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mAnimatorFSM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBackgroundView(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsBackgroundView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBackgroundView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsBackgroundView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBottomButtonView(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomButtonView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBottomMsgView(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomMsgView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConditionChecker(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Lcom/samsung/android/globalactions/util/ConditionChecker;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfirmationView(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mConfirmationView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDialog(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmForceDismiss(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mForceDismiss:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGridViewAdapter(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$BaseContentAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mGridViewAdapter:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$BaseContentAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsClearCoverClosed(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mIsClearCoverClosed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsVoiceAssistantMode(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mIsVoiceAssistantMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsWhiteTheme(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mIsWhiteTheme:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmItemHorizontalSpacing(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mItemHorizontalSpacing:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmItemVerticalSpacingLand(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mItemVerticalSpacingLand:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmItemVerticalSpacingPort(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mItemVerticalSpacingPort:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmItemWidthLand(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mItemWidthLand:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmItemWidthPort(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mItemWidthPort:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmItemWidthPortPhone(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mItemWidthPortPhone:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLandListView(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mLandListView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListView(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mListView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLogWrapper(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Lcom/samsung/android/globalactions/util/LogWrapper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNeedToForceUpdate(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mNeedToForceUpdate:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParentView(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResourceFactory(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRootView(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mRootView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectedViewModel(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTopView(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mTopView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewStateController(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Lcom/samsung/android/globalactions/presentation/view/ViewStateController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWindowManagerUtil(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)Lcom/samsung/android/globalactions/util/WindowManagerUtils;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mWindowManagerUtil:Lcom/samsung/android/globalactions/util/WindowManagerUtils;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAnimator(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAnimatorFSM(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mAnimatorFSM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmForceDismiss(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mForceDismiss:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNeedToForceUpdate(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mNeedToForceUpdate:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/WindowManagerUtils;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/LogWrapper;Landroid/app/Dialog;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mNeedToForceUpdate:Z

    new-instance v1, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$3;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)V

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBaseAnimatorCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iput-object p3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iput-object p4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p5, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mWindowManagerUtil:Lcom/samsung/android/globalactions/util/WindowManagerUtils;

    iput-object p6, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iput-object p7, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iput-object p8, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mDialog:Landroid/app/Dialog;

    iput-boolean p9, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mIsClearCoverClosed:Z

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mForceDismiss:Z

    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mViewAnimationState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    iput-object p0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mViewStateController:Lcom/samsung/android/globalactions/presentation/view/ViewStateController;

    return-void
.end method

.method private synthetic blacklist lambda$initLayouts$0(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mPopupView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public blacklist dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mAnimatorFSM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mAnimatorFSM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->HIDE:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->handleAnimationEvent(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;)V

    :cond_0
    return-void
.end method

.method public blacklist forceRequestLayout()V
    .locals 0

    return-void
.end method

.method public blacklist getAnimationState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mViewAnimationState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-object v0
.end method

.method public blacklist hideConfirm()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mAnimatorFSM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->handleAnimationEvent(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;)V

    return-void
.end method

.method public blacklist hideDialogOnSecureConfirm()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mAnimatorFSM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->handleAnimationEvent(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;)V

    return-void
.end method

.method public blacklist initAnimations()V
    .locals 4

    new-instance v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBaseAnimatorCallback:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;->setCallback(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator$ViewUpdateCallback;)V

    new-instance v0, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mAnimatorFSM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;

    return-void
.end method

.method public blacklist initDimens()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_TABLET_DEVICE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10503b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mItemHorizontalSpacing:I

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10503bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mItemVerticalSpacingPort:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10503b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mItemHorizontalSpacing:I

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10503ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mItemVerticalSpacingPort:I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10503b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mItemVerticalSpacingLand:I

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10503bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mItemWidthLand:I

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10503be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mItemWidthPort:I

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10503bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mItemWidthPortPhone:I

    return-void
.end method

.method public blacklist initLayouts()V
    .locals 7

    new-instance v0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mRootView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mRootView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v2, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_ITEM_LIST:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10405d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mListView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mListView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mRootView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_ITEM_LIST_LAND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mLandListView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mLandListView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mRootView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_TOP_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mTopView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mRootView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_BOTTOM_BUTTON_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomButtonView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mRootView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_FORCE_RESTART_TEXT_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomMsgView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mRootView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_CONFIRMATION_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mConfirmationView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mRootView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_SCREEN_CAPTURE_POPUP:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mPopupView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mPopupView:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mPopupView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_ICON:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v3, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v3, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_VOICE_ASSISTANT_MODE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mIsVoiceAssistantMode:Z

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v3, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_WHITE_THEME:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mIsWhiteTheme:Z

    new-instance v2, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$BaseContentAdapter;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$BaseContentAdapter;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mGridViewAdapter:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$BaseContentAdapter;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mListView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mGridViewAdapter:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$BaseContentAdapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mLandListView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mGridViewAdapter:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$BaseContentAdapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mRootView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v3, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SUPPORT_SF_EFFECT:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v3, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SUPPORT_CAPTURED_BLUR:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    new-instance v2, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsBackgroundView;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsBackgroundView;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBackgroundView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsBackgroundView;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    invoke-interface {v2}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createViewInflateStrategy()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/presentation/strategies/ViewInflateStrategy;

    iget-object v5, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBackgroundView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsBackgroundView;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/presentation/strategies/ViewInflateStrategy;->onInflateView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBackgroundView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsBackgroundView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mRootView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;

    invoke-virtual {v3}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsRootView;->bringToFront()V

    :cond_3
    return-void
.end method

.method public blacklist notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mGridViewAdapter:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$BaseContentAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$BaseContentAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public blacklist onDismiss()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mAnimator:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimator;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mAnimatorFSM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mAnimatorFSM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mTopView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mTopView:Landroid/widget/LinearLayout;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomButtonView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomButtonView:Landroid/widget/LinearLayout;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomMsgView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomMsgView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomMsgView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomMsgView:Landroid/widget/LinearLayout;

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mGridViewAdapter:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$BaseContentAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$BaseContentAdapter;->resetItems()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mListView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public blacklist registerRotationWatcher()V
    .locals 3

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mIWindowManager:Landroid/view/IWindowManager;

    new-instance v0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$2;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public blacklist setAnimationState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V

    return-void
.end method

.method public blacklist setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mViewAnimationState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-void
.end method

.method public blacklist show()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public blacklist showConfirm(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mAnimatorFSM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;

    sget-object v1, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;->SHOW_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM;->handleAnimationEvent(Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsAnimatorFSM$Event;)V

    return-void
.end method

.method public blacklist updateItemLists(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;)V
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mTopView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomButtonView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomMsgView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomMsgView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomMsgView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mGridViewAdapter:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$BaseContentAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$BaseContentAdapter;->resetItems()V

    invoke-virtual {p1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->getValidActions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mTopView:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->TOP_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    if-ne v2, v3, :cond_3

    new-instance v11, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mTopView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iget-boolean v7, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mIsVoiceAssistantMode:Z

    iget-boolean v8, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mIsWhiteTheme:Z

    move-object v2, v11

    move-object v4, v1

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Landroid/view/ViewGroup;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;ZZLcom/samsung/android/globalactions/presentation/view/ViewStateController;)V

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->createView(Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomButtonView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->KEY_SETTINGS_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    if-eq v2, v3, :cond_5

    :cond_4
    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->BOTTOM_BTN_LIST_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    if-ne v2, v3, :cond_6

    :cond_5
    new-instance v11, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomButtonView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iget-boolean v7, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mIsVoiceAssistantMode:Z

    iget-boolean v8, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mIsWhiteTheme:Z

    move-object v2, v11

    move-object v4, v1

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Landroid/view/ViewGroup;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;ZZLcom/samsung/android/globalactions/presentation/view/ViewStateController;)V

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->createView(Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomMsgView:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_7

    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->BOTTOM_FORCE_RESTART_MSG_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    if-ne v2, v3, :cond_7

    new-instance v11, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomMsgView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iget-boolean v7, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mIsVoiceAssistantMode:Z

    iget-boolean v8, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mIsWhiteTheme:Z

    move-object v2, v11

    move-object v4, v1

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Landroid/view/ViewGroup;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;ZZLcom/samsung/android/globalactions/presentation/view/ViewStateController;)V

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mBottomMsgView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentItemView;->createView(Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mPopupView:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_8

    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->BOTTOM_POPUP_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    if-ne v2, v3, :cond_8

    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->isAvailableShow()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mPopupView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mGridViewAdapter:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$BaseContentAdapter;

    invoke-virtual {v2, v1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$BaseContentAdapter;->addItem(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    :cond_9
    :goto_1
    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mGridViewAdapter:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$BaseContentAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$BaseContentAdapter;->updateNumColumns()V

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;->mListView:Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;

    new-instance v1, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$1;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/presentation/view/GlobalActionsContentView$SamsungGlobalActionsGridView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
