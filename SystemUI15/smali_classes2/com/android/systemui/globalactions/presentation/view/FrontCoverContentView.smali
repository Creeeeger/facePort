.class public final Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/view/ContentView;
.implements Lcom/samsung/android/globalactions/presentation/view/ViewStateController;


# instance fields
.field public mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;

.field public mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

.field public mBackButton:Landroid/widget/ImageView;

.field public final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field public mConfirmView:Landroid/view/ViewGroup;

.field public final mContext:Landroid/content/Context;

.field public final mDialog:Landroid/app/Presentation;

.field public final mFoldStateListener:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;

.field public mForceDismiss:Z

.field public final mFrontCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

.field public final mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

.field public final mIsCameraViewCover:Z

.field public final mIsIconOnly:Z

.field public mIsSecureConfirming:Z

.field public mLastFoldedState:Z

.field public mListView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentGridView;

.field public final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field public final mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

.field public final mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

.field public final mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

.field public mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;

.field public mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

.field public mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p7, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    invoke-direct {p7, p0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)V

    iput-object p7, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mFrontCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    iput-object p8, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    sget-object p2, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mLastFoldedState:Z

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsSecureConfirming:Z

    sget-object p6, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_CAMERA_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {p3, p6}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsCameraViewCover:Z

    const-string p6, "display"

    invoke-virtual {p1, p6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/hardware/display/DisplayManager;

    const/4 p7, 0x0

    if-eqz p3, :cond_1

    const-string p2, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    invoke-virtual {p6, p2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p2

    array-length p3, p2

    if-lez p3, :cond_0

    aget-object p7, p2, p4

    :cond_0
    if-eqz p7, :cond_4

    new-instance p2, Landroid/app/Presentation;

    invoke-direct {p2, p1, p7}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    goto :goto_1

    :cond_1
    const-string p3, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {p6, p3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p3

    array-length p4, p3

    if-le p4, p2, :cond_2

    new-instance p4, Landroid/app/Presentation;

    aget-object p5, p3, p2

    invoke-direct {p4, p1, p5}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    aget-object p3, p3, p2

    invoke-virtual {p3, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget p1, p1, Landroid/graphics/Point;->x:I

    const/16 p3, 0x200

    if-ge p1, p3, :cond_3

    iput-boolean p2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsIconOnly:Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to get front display. The length of array is : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FrontCoverContentView"

    invoke-virtual {p5, p2, p1}, Lcom/samsung/android/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    new-instance p1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mFoldStateListener:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mFoldStateListener:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;

    invoke-virtual {p1, p0, p7}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

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

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-object p0
.end method

.method public final getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-object p0
.end method

.method public final hideConfirm()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    return-void
.end method

.method public final hideDialogOnSecureConfirm()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsSecureConfirming:Z

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    return-void
.end method

.method public final initAnimations()V
    .locals 8

    new-instance v7, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    move-object v0, v7

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mFrontCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    iput-object v0, v7, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;

    iput-object v0, v7, Lcom/android/systemui/globalactions/presentation/view/FrontCoverViewAnimator;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v0, v7, v1, p0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    return-void
.end method

.method public final initDimens()V
    .locals 0

    return-void
.end method

.method public final initLayouts()V
    .locals 5

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    invoke-virtual {v1}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v2, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_FRONT_COVER_ITEM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentGridView;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    invoke-virtual {v2}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentGridView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentGridView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_MINI_SVIEW_COVER_SIDE_MARGIN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsCameraViewCover:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentGridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    :cond_0
    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentGridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentGridView;

    iget-boolean v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsCameraViewCover:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentGridView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setGravity(I)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_FRONT_COVER_COFIRM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;

    const v2, 0x7f0a0482

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mBackButton:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsIconOnly:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsCameraViewCover:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mBackButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$RootView;

    invoke-virtual {v0, v1}, Landroid/app/Presentation;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    invoke-virtual {v0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mIsCameraViewCover:Z

    if-eqz v2, :cond_4

    const-wide/16 v2, 0x1770

    goto :goto_3

    :cond_4
    const-wide/16 v2, 0x1388

    :goto_3
    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x10405ee

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Presentation;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mFoldStateListener:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mFoldStateListener:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$1;

    invoke-virtual {v0, p0}, Lcom/samsung/android/view/SemWindowManager;->unregisterFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V

    :cond_1
    return-void
.end method

.method public final setAnimationState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-void
.end method

.method public final setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-void
.end method

.method public final show()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    const-string v1, "FrontCoverContentView"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string/jumbo v2, "show FrontCoverContentView"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mDialog:Landroid/app/Presentation;

    invoke-virtual {p0}, Landroid/app/Presentation;->show()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v0, "Failed to show front display dialog - the dialog is null."

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/globalactions/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final showConfirm(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    sget-object p1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SHOW_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    return-void
.end method

.method public final updateItemLists(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->getValidActions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "power"

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "restart"

    if-ne v1, v2, :cond_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;

    iget-object v1, v1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;

    iget-object v0, p1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mTempViewModelList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mTempViewModelList:Ljava/util/List;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$ContentAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
