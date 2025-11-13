.class public final Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/view/ContentView;
.implements Lcom/samsung/android/globalactions/presentation/view/ViewStateController;


# instance fields
.field public final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field public mConfirmView:Landroid/view/ViewGroup;

.field public final mContext:Landroid/content/Context;

.field public final mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

.field public final mDialog:Landroid/app/Dialog;

.field public mForceDismiss:Z

.field public mGridViewAdapter:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

.field public final mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

.field public mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

.field public final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field public final mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

.field public final mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

.field public final mResources:Landroid/content/res/Resources;

.field public mRootView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentRootView;

.field public mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

.field public final mSideCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

.field public final mToastController:Lcom/samsung/android/globalactions/util/ToastController;

.field public mViewAnimationState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

.field public mViewAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

.field public mVisibleRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/util/ToastController;Landroid/app/Dialog;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;-><init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mSideCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mParentView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iput-object p3, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p4, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iput-object p5, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iput-object p6, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iput-object p7, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    iput-object p8, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    iput-object p9, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mResources:Landroid/content/res/Resources;

    sget-object p1, Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimationState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

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

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimationState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-object p0
.end method

.method public final getState()Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimationState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-object p0
.end method

.method public final hideConfirm()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->HIDE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    return-void
.end method

.method public final hideDialogOnSecureConfirm()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    sget-object v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SECURE_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    return-void
.end method

.method public final initAnimations()V
    .locals 8

    new-instance v7, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mHandlerUtil:Lcom/samsung/android/globalactions/util/HandlerUtil;

    move-object v0, v7

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mSideCoverAnimatorCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    iput-object v0, v7, Lcom/android/systemui/globalactions/presentation/view/SideCoverViewAnimator;->mCallback:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$1;

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v0, v7, v1, p0}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;-><init>(Lcom/samsung/android/globalactions/presentation/view/GlobalActionsAnimator;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/view/ViewStateController;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    return-void
.end method

.method public final initDimens()V
    .locals 0

    return-void
.end method

.method public final initLayouts()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, v0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getVisibleRect()Landroid/graphics/Rect;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentRootView;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentRootView;-><init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentRootView;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v2, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_SIDE_COVER_ITEM_LIST:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v1, p0, v3, v4}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;-><init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    invoke-interface {v5, v2}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, p0, v3, v2, v5}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;-><init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mGridViewAdapter:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v6, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_SIDE_COVER_WIDTH:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v5, v6}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v6, 0x2d0

    if-ne v5, v6, :cond_1

    const/16 v5, 0x140

    goto :goto_0

    :cond_1
    const/16 v6, 0x438

    if-ne v5, v6, :cond_2

    const/16 v5, 0x1e0

    goto :goto_0

    :cond_2
    const/16 v5, 0x280

    :goto_0
    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ge v2, v5, :cond_3

    int-to-float v2, v3

    const v3, 0x3f924dd3    # 1.143f

    :goto_1
    mul-float/2addr v2, v3

    float-to-int v3, v2

    goto :goto_2

    :cond_3
    if-le v2, v5, :cond_4

    int-to-float v2, v3

    const v3, 0x3f639581    # 0.889f

    goto :goto_1

    :cond_4
    :goto_2
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setGravity(I)V

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mListView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentGridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentRootView;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_SIDE_COVER_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotY(F)V

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setRotation(F)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotY(F)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setRotation(F)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mConfirmView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mDialog:Landroid/app/Dialog;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mRootView:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentRootView;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mGridViewAdapter:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final setAnimationState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimationState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-void
.end method

.method public final setInterceptor()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    new-instance v1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/ToastController;->setInterceptor(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final setState(Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimationState:Lcom/samsung/android/globalactions/presentation/view/ViewAnimationState;

    return-void
.end method

.method public final show()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final showConfirm(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mSelectedViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mViewAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;

    sget-object p1, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;->SHOW_CONFIRM:Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;

    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/CoverViewAnimatorFSM$Event;)V

    return-void
.end method

.method public final updateItemLists(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->getValidActions()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string v3, "cover_text_direction"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "power"

    if-eq v1, v2, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "restart"

    if-ne v1, v2, :cond_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mGridViewAdapter:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    iget-object v1, v1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->mViewModelList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mGridViewAdapter:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    iget-object v0, p1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->mTempViewModelList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->mTempViewModelList:Ljava/util/List;

    iget-object p1, p1, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;->mViewModelList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView;->mGridViewAdapter:Lcom/android/systemui/globalactions/presentation/view/SideCoverContentView$SideCoverContentAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
