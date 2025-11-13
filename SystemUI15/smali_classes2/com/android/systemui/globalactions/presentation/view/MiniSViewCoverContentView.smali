.class public final Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/view/ContentView;
.implements Lcom/samsung/android/globalactions/presentation/view/ViewStateController;


# instance fields
.field public mAdapter:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

.field public mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

.field public final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field public mConfirmView:Landroid/view/ViewGroup;

.field public final mContext:Landroid/content/Context;

.field public final mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

.field public final mDialog:Landroid/app/Dialog;

.field public mForceDismiss:Z

.field public final mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

.field public mListView:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;

.field public final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field public final mMiniSViewCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

.field public final mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

.field public final mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

.field public mRootView:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$RootView;

.field public mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

.field public mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

.field public final mToastController:Lcom/samsung/android/globalactions/util/ToastController;

.field public mVisibleRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/util/ToastController;Landroid/app/Dialog;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;-><init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mMiniSViewCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iput-object p7, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    iput-object p8, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    iput-object p9, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    sget-object p1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

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

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-object p0
.end method

.method public final getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-object p0
.end method

.method public final hideConfirm()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    return-void
.end method

.method public final hideDialogOnSecureConfirm()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    return-void
.end method

.method public final initAnimations()V
    .locals 7

    new-instance v6, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mHandler:Lcom/samsung/android/globalactions/util/HandlerUtil;

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mMiniSViewCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

    iput-object v0, v6, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$1;

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v0, v6, v1, p0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    return-void
.end method

.method public final initDimens()V
    .locals 0

    return-void
.end method

.method public final initLayouts()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, v0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$RootView;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$RootView;-><init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$RootView;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v2, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_MINI_SVIEW_COVER_ITEM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;-><init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentGridView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setGravity(I)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$RootView;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v2, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_MINI_SVIEW_COVER_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mDialog:Landroid/app/Dialog;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$RootView;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setAnimationState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-void
.end method

.method public final setInterceptor()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/ToastController;->setInterceptor(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-void
.end method

.method public final show()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final showConfirm(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

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
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    iget-object v1, v1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    iget-object v0, p1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;->mTempViewModelList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;->mTempViewModelList:Ljava/util/List;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;->mViewModelList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView;->mAdapter:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentView$ContentAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
