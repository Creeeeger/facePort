.class public final Lcom/android/wm/shell/common/split/SplitWindowManager;
.super Landroid/view/WindowlessWindowManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/split/DividerPanel$DividerPanelCallbacks;


# instance fields
.field public mAddToAppPairDialogForRecent:Landroid/app/AlertDialog;

.field public mAppPairShortcutController:Lcom/android/wm/shell/splitscreen/AppPairShortcutController;

.field public mContext:Landroid/content/Context;

.field public final mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

.field public final mDividerPanelAutoOpen:Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda0;

.field public mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

.field public mDividerView:Lcom/android/wm/shell/common/split/DividerView;

.field public mDividerVisible:Z

.field public final mIsCellDivider:Z

.field public mIsFirstAutoOpenDividerPanel:Z

.field public mIsPendingFirstAutoOpenDividerPanel:Z

.field public mLastDividerHandleHidden:Z

.field public mLastDividerInteractive:Z

.field public mLeash:Landroid/view/SurfaceControl;

.field public final mParentContainerCallbacks:Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;

.field public mPref:Landroid/content/SharedPreferences;

.field public mShowingFirstAutoOpenDividerPanel:Z

.field public mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mViewHost:Landroid/view/SurfaceControlViewHost;

.field public final mWindowName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/wm/shell/common/split/SplitWindowManager;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/common/split/SplitWindowManager;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0, v0}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mIsFirstAutoOpenDividerPanel:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mIsPendingFirstAutoOpenDividerPanel:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mShowingFirstAutoOpenDividerPanel:Z

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mAddToAppPairDialogForRecent:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLastDividerInteractive:Z

    new-instance v0, Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/split/SplitWindowManager;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerPanelAutoOpen:Lcom/android/wm/shell/common/split/SplitWindowManager$$ExternalSyntheticLambda0;

    invoke-virtual {p2, p3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mParentContainerCallbacks:Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mWindowName:Ljava/lang/String;

    new-instance p1, Lcom/android/wm/shell/common/split/DividerPanel;

    invoke-direct {p1, p2}, Lcom/android/wm/shell/common/split/DividerPanel;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz p1, :cond_0

    iput-boolean p5, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mIsCellDivider:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final getParentSurface(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/SurfaceControl;
    .locals 2

    new-instance p1, Landroid/view/SurfaceControl$Builder;

    new-instance p2, Landroid/view/SurfaceSession;

    invoke-direct {p2}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {p1, p2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string p2, "SplitWindowManager"

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string p2, "SplitWindowManager#attachToParentSurface"

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mParentContainerCallbacks:Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;

    check-cast p2, Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator$1;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p2, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mRootTaskLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mParentContainerCallbacks:Lcom/android/wm/shell/common/split/SplitWindowManager$ParentContainerCallbacks;

    check-cast p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$1;

    iget-object p2, p1, Lcom/android/wm/shell/splitscreen/StageCoordinator$1;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-boolean v0, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDividerVisible:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda8;

    const/4 v1, 0x7

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p2, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public final getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;
    .locals 0

    invoke-super {p0, p1}, Landroid/view/WindowlessWindowManager;->getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public final init(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/InsetsState;Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-nez v0, :cond_11

    new-instance v0, Landroid/view/SurfaceControlViewHost;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    const-string v3, "SplitWindowManager"

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_DIVIDER:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/SplitLayout;->isVerticalDivision()Z

    move-result v0

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mIsCellDivider:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d024b

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/DividerView;

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d024a

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/DividerView;

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d024c

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/DividerView;

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d024d

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/DividerView;

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0455

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/split/DividerView;

    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-boolean v0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mIsFlexPanelMode:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    iput-boolean v1, v0, Lcom/android/wm/shell/common/split/DividerView;->mSetTouchRegion:Z

    :cond_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_CELL_DIVIDER:Z

    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mIsCellDivider:Z

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_1
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v8, -0x3

    const/16 v6, 0x7f2

    const v7, 0x20840028

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v9, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mWindowName:Ljava/lang/String;

    invoke-virtual {v9, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v3, 0x20000040

    or-int/2addr v2, v3

    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f130088

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iget-boolean v2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mIsCellDivider:Z

    if-eqz v2, :cond_6

    const/16 v2, 0xa36

    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_6
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    invoke-virtual {v2, v3, v9}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    iget-object v3, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iput-object p1, v2, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iput-object p0, v2, Lcom/android/wm/shell/common/split/DividerView;->mSplitWindowManager:Lcom/android/wm/shell/common/split/SplitWindowManager;

    iput-object v3, v2, Lcom/android/wm/shell/common/split/DividerView;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_7

    iget-boolean v3, v2, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz v3, :cond_7

    iget-object v3, v2, Lcom/android/wm/shell/common/split/DividerView;->mDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mCellDividerBounds:Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_7
    iget-object v3, v2, Lcom/android/wm/shell/common/split/DividerView;->mDividerBounds:Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Lcom/android/wm/shell/common/split/DividerView;->onInsetsChanged(Landroid/view/InsetsState;Z)V

    iget-object p2, v2, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-boolean p2, p2, Lcom/android/wm/shell/common/split/SplitLayout;->mIsLeftRightSplit:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v2, Lcom/android/wm/shell/common/split/DividerView;->mIsCellDivider:Z

    if-eqz v0, :cond_8

    xor-int/lit8 p2, p2, 0x1

    :cond_8
    iget-object v0, v2, Lcom/android/wm/shell/common/split/DividerView;->mHandle:Lcom/android/wm/shell/common/split/DividerHandleView;

    iput-boolean p2, v0, Lcom/android/wm/shell/common/split/DividerHandleView;->mIsLeftRightSplit:Z

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/wm/shell/common/split/DividerHandleView;->mIsLeftRightSplit:Z

    const v6, 0x7f071458

    const v7, 0x7f071454

    if-eqz v5, :cond_9

    move v5, v7

    goto :goto_3

    :cond_9
    move v5, v6

    :goto_3
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Lcom/android/wm/shell/common/split/DividerHandleView;->mWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/wm/shell/common/split/DividerHandleView;->mIsLeftRightSplit:Z

    if-eqz v5, :cond_a

    goto :goto_4

    :cond_a
    move v6, v7

    :goto_4
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHeight:I

    iget v5, v0, Lcom/android/wm/shell/common/split/DividerHandleView;->mWidth:I

    iput v5, v0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCurrentWidth:I

    iput v4, v0, Lcom/android/wm/shell/common/split/DividerHandleView;->mCurrentHeight:I

    const/high16 v6, 0x3fc00000    # 1.5f

    if-le v5, v4, :cond_b

    int-to-float v7, v5

    mul-float/2addr v7, v6

    float-to-int v7, v7

    goto :goto_5

    :cond_b
    move v7, v5

    :goto_5
    iput v7, v0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHoveringWidth:I

    if-le v4, v5, :cond_c

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    :cond_c
    iput v4, v0, Lcom/android/wm/shell/common/split/DividerHandleView;->mHoveringHeight:I

    iget-object v0, v2, Lcom/android/wm/shell/common/split/DividerView;->mCorners:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    iput-boolean p2, v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mIsLeftRightSplit:Z

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f071457

    const v5, 0x7f071456

    if-eqz p2, :cond_d

    move v6, v5

    goto :goto_6

    :cond_d
    move v6, v4

    :goto_6
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Lcom/android/wm/shell/common/split/DividerView;->mHandleRegionWidth:I

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_e

    goto :goto_7

    :cond_e
    move v4, v5

    :goto_7
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, v2, Lcom/android/wm/shell/common/split/DividerView;->mHandleRegionHeight:I

    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    if-eqz p2, :cond_f

    iput-object p1, p2, Lcom/android/wm/shell/common/split/DividerResizeController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    :cond_f
    new-instance p2, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/split/SplitLayout;)V

    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mAppPairShortcutController:Lcom/android/wm/shell/splitscreen/AppPairShortcutController;

    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    iput-object v0, p2, Lcom/android/wm/shell/common/split/DividerView;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/wm/shell/common/split/DividerView$6;

    invoke-direct {v5, p2}, Lcom/android/wm/shell/common/split/DividerView$6;-><init>(Lcom/android/wm/shell/common/split/DividerView;)V

    invoke-direct {v0, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p2, Lcom/android/wm/shell/common/split/DividerView;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v2, p2, Lcom/android/wm/shell/common/split/DividerView;->mDividerResizeController:Lcom/android/wm/shell/common/split/DividerResizeController;

    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mAppPairShortcutController:Lcom/android/wm/shell/splitscreen/AppPairShortcutController;

    iget-object v4, p2, Lcom/android/wm/shell/common/split/DividerPanel;->mWindowManager:Lcom/android/wm/shell/common/split/DividerPanelWindowManager;

    iput-object v0, v4, Lcom/android/wm/shell/common/split/DividerPanelWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    iput-object p1, p2, Lcom/android/wm/shell/common/split/DividerPanel;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    iput-object p0, p2, Lcom/android/wm/shell/common/split/DividerPanel;->mCallbacks:Lcom/android/wm/shell/common/split/DividerPanel$DividerPanelCallbacks;

    iput-object v2, p2, Lcom/android/wm/shell/common/split/DividerPanel;->mAppPairShortcutController:Lcom/android/wm/shell/splitscreen/AppPairShortcutController;

    iget-object p1, p2, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p2, Lcom/android/wm/shell/common/split/DividerPanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    const-string p2, "DividerPref"

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mPref:Landroid/content/SharedPreferences;

    const-string p2, "divider_panel_first_auto_open"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mIsFirstAutoOpenDividerPanel:Z

    if-eqz p3, :cond_10

    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    iget-boolean p2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLastDividerInteractive:Z

    iget-boolean p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLastDividerHandleHidden:Z

    const-string/jumbo p3, "restore_setup"

    invoke-virtual {p1, p3, p2, p0}, Lcom/android/wm/shell/common/split/DividerView;->setInteractive(Ljava/lang/String;ZZ)V

    :cond_10
    return-void

    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Try to inflate divider view again without release first"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final release(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/android/wm/shell/common/split/DividerView;->mInteractive:Z

    iput-boolean v2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLastDividerInteractive:Z

    iget-boolean v0, v0, Lcom/android/wm/shell/common/split/DividerView;->mHideHandle:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLastDividerHandleHidden:Z

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_LOG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "release:[MST] mLeash="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", t="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Callers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SplitWindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez p1, :cond_3

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_0
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mLeash:Landroid/view/SurfaceControl;

    :cond_4
    return-void
.end method

.method public final removeSurface(Landroid/view/SurfaceControl;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mSyncTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/WindowlessWindowManager;->removeSurface(Landroid/view/SurfaceControl;)V

    :goto_0
    return-void
.end method

.method public final sendSplitStateChangedInfo(Z)V
    .locals 4

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mAppPairShortcutController:Lcom/android/wm/shell/splitscreen/AppPairShortcutController;

    if-eqz p0, :cond_3

    const/4 v0, 0x3

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.multiwindow.SEND_SPLIT_STATE_CHANGED"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x11000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.smartsuggestions"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->sPairComponentNameList:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mH:Lcom/android/wm/shell/splitscreen/AppPairShortcutController$H;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken1:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken2:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->isMultiSplitActive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mWinToken3:Landroid/window/WindowContainerToken;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->createAppPairShortcut(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final setConfiguration(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/WindowlessWindowManager;->setConfiguration(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerView:Lcom/android/wm/shell/common/split/DividerView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x1060430

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerView;->mBackground:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Lcom/android/wm/shell/common/split/DividerView;->mCorners:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mDividerBarBackground:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, v0, Lcom/android/wm/shell/common/split/DividerView;->mCorners:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mDividerPanel:Lcom/android/wm/shell/common/split/DividerPanel;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x10302e3

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p1, Lcom/android/wm/shell/common/split/DividerPanel;->mContext:Landroid/content/Context;

    iget-object p0, p1, Lcom/android/wm/shell/common/split/DividerPanel;->mAddToAppPairDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    invoke-virtual {p1}, Lcom/android/wm/shell/common/split/DividerPanel;->removeDividerPanel()V

    return-void
.end method

.method public final setTouchRegion(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitWindowManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->getWindowToken()Landroid/view/IWindow;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, v1}, Landroid/view/WindowlessWindowManager;->setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    :cond_0
    return-void
.end method
