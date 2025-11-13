.class public final Lcom/android/wm/shell/draganddrop/DropTargetLayout;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/IDragLayout;


# instance fields
.field public final mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

.field public mCurrentDensityDpi:I

.field public mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

.field public mDensityChanged:Z

.field public mDismissView:Lcom/android/wm/shell/common/DismissView;

.field public mDragSurface:Landroid/view/SurfaceControl;

.field public final mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

.field public final mHandler:Landroid/os/Handler;

.field public mHasDrawable:Z

.field public mHasDropped:Z

.field public mIsHideDragSourceTask:Z

.field public mIsIntentSenderDropTarget:Z

.field public mIsShowing:Z

.field public final mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

.field public final mStatusBarManager:Landroid/app/StatusBarManager;

.field public final mTmpOptions:Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

    invoke-direct {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mTmpOptions:Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDensityChanged:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsHideDragSourceTask:Z

    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    invoke-direct {v0, p1, p2, p4}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/transition/Transitions;)V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    const p2, 0x7f0d00f5

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f0a03ce

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/draganddrop/DropTargetView;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->createDismissView()V

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const p2, 0x7f0a03bb

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/draganddrop/DragAppIcon;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

    const-string/jumbo p2, "statusbar"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatusBarManager;

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentDensityDpi:I

    return-void
.end method


# virtual methods
.method public final createDismissView()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsIntentSenderDropTarget:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00e6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/common/DismissView;

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissView:Lcom/android/wm/shell/common/DismissView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DismissView;->setDismissType(I)V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissView:Lcom/android/wm/shell/common/DismissView;

    iput-boolean v1, v0, Lcom/android/wm/shell/common/DismissView;->mFocusChangeHapticDisabled:Z

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final hide(Ljava/lang/Runnable;Z)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsShowing:Z

    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsIntentSenderDropTarget:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissView:Lcom/android/wm/shell/common/DismissView;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DismissView;->hide(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->updateNavigationBarVisibility(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DropTargetView;->hide()V

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDragSurface:Landroid/view/SurfaceControl;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDragSurface:Landroid/view/SurfaceControl;

    :cond_2
    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {p2, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    return-void
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->recomputeDropTargets()Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentDensityDpi:I

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDensityChanged:Z

    return-void
.end method

.method public final prepare(Lcom/android/wm/shell/draganddrop/DragSession;Lcom/android/internal/logging/InstanceId;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    iput-object p2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    iput-object p1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/wm/shell/draganddrop/DragSession;->appData:Landroid/content/Intent;

    if-eqz v1, :cond_0

    const-string v2, "DISALLOW_HIT_REGION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mDisallowHitRegion:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->setEmpty()V

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mDisallowHitRegion:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_1
    iput-boolean p5, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mIsIntentSenderDropTarget:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDropped:Z

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDrawable:Z

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDragSurface:Landroid/view/SurfaceControl;

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_DND_SA_LOGGING:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    iget-object p3, p1, Lcom/android/wm/shell/draganddrop/DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    iget-object p3, p3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    iget p1, p1, Lcom/android/wm/shell/draganddrop/DragSession;->hideDragSourceTaskId:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsHideDragSourceTask:Z

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    if-eqz p1, :cond_4

    iput-boolean p5, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsIntentSenderDropTarget:Z

    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissView:Lcom/android/wm/shell/common/DismissView;

    if-eqz p4, :cond_5

    iget-object p1, p1, Lcom/android/wm/shell/common/DismissView;->mHiddenDropTargetArea:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissView:Lcom/android/wm/shell/common/DismissView;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DismissView;->updateMarginBottom()V

    return-void
.end method

.method public final recomputeDropTargets()Z
    .locals 15

    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsShowing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    goto/16 :goto_10

    :cond_1
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget v3, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v1, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-object v6, v4, Lcom/android/wm/shell/draganddrop/DragSession;->mVisibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    const/4 v10, 0x0

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    iget-object v7, v4, Lcom/android/wm/shell/draganddrop/DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    if-eqz v7, :cond_8

    iget-boolean v4, v4, Lcom/android/wm/shell/draganddrop/DragSession;->isHideDragSourceTask:Z

    iget-object v7, v7, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    if-eqz v7, :cond_8

    invoke-interface {v7, v6, v4}, Lcom/android/wm/shell/draganddrop/AppResult;->isAlreadyRunningSingleInstanceTask(Lcom/android/wm/shell/draganddrop/VisibleTasks;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/wm/shell/draganddrop/AppResult;->getDragAppActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v10

    :goto_0
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    :cond_4
    if-eqz v0, :cond_6

    if-nez v10, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f130554

    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f130555

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mToast:Landroid/widget/Toast;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    :cond_7
    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    goto/16 :goto_10

    :cond_8
    :goto_3
    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-boolean v6, v4, Lcom/android/wm/shell/draganddrop/DragSession;->dragItemSupportsSplitscreen:Z

    if-nez v6, :cond_9

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    invoke-direct {v5, v1, v3, v0, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    goto/16 :goto_10

    :cond_9
    iget-object v6, v4, Lcom/android/wm/shell/draganddrop/DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    if-eqz v6, :cond_a

    iget-boolean v7, v4, Lcom/android/wm/shell/draganddrop/DragSession;->isHideDragSourceTask:Z

    iget-object v6, v6, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    if-eqz v6, :cond_a

    iget-object v4, v4, Lcom/android/wm/shell/draganddrop/DragSession;->mVisibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    invoke-interface {v6, v4, v7}, Lcom/android/wm/shell/draganddrop/AppResult;->hasResolveInfoInFullscreenOnly(Lcom/android/wm/shell/draganddrop/VisibleTasks;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_4

    :cond_a
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NOT_SUPPORT_FOR_COVER_DISPLAY:Z

    const/4 v11, 0x5

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-ne v4, v11, :cond_b

    :goto_4
    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    invoke-direct {v5, v1, v3, v0, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    goto/16 :goto_10

    :cond_b
    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    invoke-virtual {v4, v2}, Lcom/android/wm/shell/draganddrop/DragSession;->getNonFloatingTopTask(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    move-object v4, v10

    goto :goto_5

    :cond_c
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    :goto_5
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    if-ne v4, v2, :cond_d

    move v4, v2

    goto :goto_6

    :cond_d
    move v4, v1

    :goto_6
    iput-boolean v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mIsTopTaskFullscreen:Z

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-object v4, v4, Lcom/android/wm/shell/draganddrop/DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v4}, Lcom/android/wm/shell/common/DisplayLayout;->isLandscape()Z

    move-result v6

    iget-object v12, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-boolean v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mIsTopTaskFullscreen:Z

    if-nez v4, :cond_e

    move v13, v2

    goto :goto_7

    :cond_e
    move v13, v1

    :goto_7
    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f071450

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v8, v4

    const/4 v14, 0x2

    if-eqz v12, :cond_f

    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_8

    :cond_f
    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-boolean v7, v4, Lcom/android/wm/shell/draganddrop/DragSession;->isHideDragSourceTask:Z

    if-eqz v7, :cond_10

    goto :goto_8

    :cond_10
    iget-boolean v7, v4, Lcom/android/wm/shell/draganddrop/DragSession;->runningTaskSupportsSplitScreen:Z

    if-nez v7, :cond_11

    goto/16 :goto_e

    :cond_11
    iget-boolean v7, v4, Lcom/android/wm/shell/draganddrop/DragSession;->isDragFromRecent:Z

    if-eqz v7, :cond_12

    goto :goto_8

    :cond_12
    iget v4, v4, Lcom/android/wm/shell/draganddrop/DragSession;->runningTaskActType:I

    if-ne v4, v14, :cond_13

    goto :goto_8

    :cond_13
    if-ne v4, v2, :cond_1f

    :goto_8
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_DND_MULTI_SPLIT_DROP_TARGET:Z

    if-eqz v3, :cond_14

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->supportMultiSplitDropTarget()Z

    move-result v3

    if-eqz v3, :cond_14

    move v3, v14

    goto :goto_9

    :cond_14
    move v3, v2

    :goto_9
    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mDropTargetProviders:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;

    iget-object v9, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    move v7, v13

    invoke-virtual/range {v4 .. v9}, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;->addSplitTargets(Landroid/graphics/Rect;ZZFLjava/util/ArrayList;)V

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-object v3, v3, Lcom/android/wm/shell/draganddrop/DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    if-eqz v3, :cond_16

    iget-object v3, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    if-eqz v3, :cond_15

    invoke-interface {v3}, Lcom/android/wm/shell/draganddrop/AppResult;->getDragAppActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    goto :goto_a

    :cond_15
    move-object v3, v10

    :goto_a
    if-eqz v3, :cond_16

    iget-object v10, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_16
    if-eqz v10, :cond_1e

    if-eqz v12, :cond_1e

    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v3

    if-eqz v3, :cond_1e

    if-eqz v13, :cond_1e

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz v5, :cond_18

    invoke-virtual {v12}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isMultiSplitScreenVisible()Z

    move-result v5

    if-nez v5, :cond_18

    invoke-virtual {v4}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->isMultiSplit()Z

    move-result v5

    if-eqz v5, :cond_18

    goto :goto_b

    :cond_18
    invoke-virtual {v4}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->isMultiSplit()Z

    move-result v5

    iget v6, v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    if-eqz v5, :cond_19

    packed-switch v6, :pswitch_data_0

    :goto_c
    move v5, v1

    goto :goto_d

    :pswitch_0
    const/16 v5, 0x60

    goto :goto_d

    :pswitch_1
    const/16 v5, 0x30

    goto :goto_d

    :pswitch_2
    const/16 v5, 0x48

    goto :goto_d

    :pswitch_3
    const/16 v5, 0x18

    goto :goto_d

    :cond_19
    if-eq v6, v2, :cond_1d

    if-eq v6, v14, :cond_1c

    const/4 v5, 0x3

    if-eq v6, v5, :cond_1b

    const/4 v5, 0x4

    if-eq v6, v5, :cond_1a

    goto :goto_c

    :cond_1a
    const/16 v5, 0x40

    goto :goto_d

    :cond_1b
    const/16 v5, 0x20

    goto :goto_d

    :cond_1c
    const/16 v5, 0x10

    goto :goto_d

    :cond_1d
    const/16 v5, 0x8

    :goto_d
    invoke-virtual {v12, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTopRunningTaskInfoByPosition(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_17

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_17

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    iput-boolean v2, v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->alreadyRun:Z

    goto :goto_b

    :cond_1e
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    if-eqz v3, :cond_20

    iget-boolean v3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mIsIntentSenderDropTarget:Z

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    sget-object v5, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->sFullscreenHitRegion:Landroid/graphics/Rect;

    invoke-direct {v4, v1, v5, v0, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1f
    :goto_e
    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    invoke-direct {v5, v1, v3, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    :goto_f
    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->getCenterFreeformBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->getCenterFreeformBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070349

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Rect;->inset(II)V

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    invoke-direct {v5, v11, v3, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    :goto_10
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    :goto_11
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "Add target: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_21
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final show()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsShowing:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->recomputeDropTargets()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->updateNavigationBarVisibility(Z)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsIntentSenderDropTarget:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDensityChanged:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDensityChanged:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentDensityDpi:I

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissView:Lcom/android/wm/shell/common/DismissView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissView:Lcom/android/wm/shell/common/DismissView;

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->createDismissView()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final update(Landroid/view/DragEvent;)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v2, 0x1

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsIntentSenderDropTarget:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissView:Lcom/android/wm/shell/common/DismissView;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v4, v5, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6, v7}, Lcom/android/wm/shell/common/DismissView;->updateView(Landroid/graphics/Rect;)V

    :goto_0
    iget-boolean v4, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsIntentSenderDropTarget:Z

    const/4 v5, 0x4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissView:Lcom/android/wm/shell/common/DismissView;

    iget-boolean v4, v4, Lcom/android/wm/shell/common/DismissView;->mIsEnterDismissButton:Z

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_1
    iget-object v4, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    iget-object v10, v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mDisallowHitRegion:Landroid/graphics/RectF;

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    const/4 v13, 0x0

    goto/16 :goto_8

    :cond_3
    iget-object v10, v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v2

    :goto_1
    if-ltz v10, :cond_2

    iget-object v13, v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    iget-object v14, v13, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->hitRegion:Landroid/graphics/Rect;

    if-eqz v14, :cond_4

    invoke-virtual {v14, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    goto/16 :goto_4

    :cond_4
    sget-boolean v14, Lcom/samsung/android/rune/CoreRune;->MW_DND_MULTI_SPLIT_DROP_TARGET:Z

    if-eqz v14, :cond_a

    iget-object v14, v13, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->polygon:Ljava/util/List;

    if-eqz v14, :cond_a

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lt v14, v5, :cond_a

    iget-object v14, v13, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->polygon:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v15, v14, -0x1

    move v5, v15

    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_2
    if-ge v3, v14, :cond_9

    iget-object v6, v13, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->polygon:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    iget-object v1, v13, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->polygon:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v5, v6, Landroid/graphics/PointF;->y:F

    cmpg-float v16, v5, v12

    if-gez v16, :cond_5

    iget v7, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v7, v7, v12

    if-gez v7, :cond_6

    :cond_5
    iget v7, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v7, v7, v12

    if-gez v7, :cond_8

    cmpl-float v7, v5, v12

    if-ltz v7, :cond_8

    :cond_6
    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float v7, v12, v5

    iget v2, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v5

    div-float/2addr v7, v2

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v6, v7, v6}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v1

    cmpg-float v1, v1, v11

    if-gtz v1, :cond_7

    const/4 v1, 0x1

    xor-int/2addr v15, v1

    goto :goto_3

    :cond_7
    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    move v1, v2

    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v5, v3

    move v3, v2

    move v2, v1

    goto :goto_2

    :cond_9
    move v14, v15

    goto :goto_4

    :cond_a
    const/4 v14, 0x0

    :goto_4
    if-eqz v14, :cond_f

    iget-object v1, v4, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-object v2, v1, Lcom/android/wm/shell/draganddrop/DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    if-eqz v2, :cond_e

    iget-boolean v3, v1, Lcom/android/wm/shell/draganddrop/DragSession;->isHideDragSourceTask:Z

    iget-object v5, v2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    if-nez v5, :cond_b

    const/4 v1, 0x0

    goto :goto_5

    :cond_b
    iget-object v5, v2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableAppMap:Ljava/util/Map;

    iget v6, v13, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v1, v2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableAppMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/draganddrop/AppInfo;

    goto :goto_5

    :cond_c
    iget-object v5, v2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    iget-object v7, v2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DragSession;->mVisibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    invoke-interface {v5, v7, v6, v1, v3}, Lcom/android/wm/shell/draganddrop/AppResult;->makeExecutableApp(Landroid/content/Context;ILcom/android/wm/shell/draganddrop/VisibleTasks;Z)Lcom/android/wm/shell/draganddrop/AppInfo;

    move-result-object v1

    iget-object v2, v2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableAppMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    if-eqz v1, :cond_d

    goto :goto_6

    :cond_d
    const/4 v1, 0x0

    goto :goto_7

    :cond_e
    :goto_6
    const/4 v1, 0x1

    :goto_7
    if-eqz v1, :cond_f

    goto :goto_8

    :cond_f
    const/4 v1, -0x1

    add-int/2addr v10, v1

    const/4 v2, 0x1

    const/4 v5, 0x4

    goto/16 :goto_1

    :goto_8
    move-object v2, v13

    :goto_9
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    const/4 v4, 0x0

    if-nez v1, :cond_10

    if-nez v2, :cond_11

    :cond_10
    if-eqz v1, :cond_26

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    :cond_11
    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v5, "Current target: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_14

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    if-eqz v1, :cond_12

    iget-boolean v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsIntentSenderDropTarget:Z

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    goto :goto_a

    :cond_12
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissView:Lcom/android/wm/shell/common/DismissView;

    iget-boolean v1, v1, Lcom/android/wm/shell/common/DismissView;->mIsEnterDismissButton:Z

    :goto_a
    if-eqz v1, :cond_13

    goto :goto_b

    :cond_13
    const/4 v1, 0x0

    goto :goto_c

    :cond_14
    :goto_b
    const/4 v1, 0x1

    :goto_c
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    if-eqz v5, :cond_15

    iget-boolean v5, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsIntentSenderDropTarget:Z

    if-eqz v5, :cond_15

    goto :goto_d

    :cond_15
    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissView:Lcom/android/wm/shell/common/DismissView;

    iget-boolean v5, v1, Lcom/android/wm/shell/common/DismissView;->mVisible:Z

    if-eqz v5, :cond_16

    goto :goto_d

    :cond_16
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/wm/shell/common/DismissView;->mVisible:Z

    iget-object v5, v1, Lcom/android/wm/shell/common/DismissView;->mEnterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_d

    :cond_17
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissView:Lcom/android/wm/shell/common/DismissView;

    iget-boolean v5, v1, Lcom/android/wm/shell/common/DismissView;->mVisible:Z

    if-nez v5, :cond_18

    goto :goto_d

    :cond_18
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/wm/shell/common/DismissView;->mVisible:Z

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_d
    if-nez v2, :cond_19

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/DropTargetView;->hide()V

    const/4 v7, 0x1

    goto/16 :goto_13

    :cond_19
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    if-nez v1, :cond_1a

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1a
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mTmpOptions:Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1b

    const/4 v7, 0x1

    goto :goto_e

    :cond_1b
    const/4 v7, 0x0

    :goto_e
    iput-boolean v7, v1, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsFreeform:Z

    if-nez v5, :cond_1c

    const/4 v5, 0x1

    goto :goto_f

    :cond_1c
    const/4 v5, 0x0

    :goto_f
    iput-boolean v5, v1, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsFullscreen:Z

    iget-boolean v5, v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->isResizable:Z

    iput-boolean v5, v1, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsResizable:Z

    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mBounds:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->drawRegion:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    iget-object v5, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mTmpOptions:Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

    iput-object v5, v1, Lcom/android/wm/shell/draganddrop/DropTargetView;->mDropOptions:Lcom/android/wm/shell/draganddrop/DragAndDropOptions;

    iget-boolean v5, v5, Lcom/android/wm/shell/draganddrop/DragAndDropOptions;->mIsFreeform:Z

    iput-boolean v5, v1, Lcom/android/wm/shell/draganddrop/DropTargetView;->mIsFreeform:Z

    iget-object v5, v1, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCapture:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/wm/shell/draganddrop/DropTargetView;->mCapture:Landroid/graphics/Bitmap;

    :cond_1d
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    iget-object v5, v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->drawRegion:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/wm/shell/draganddrop/DropTargetView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, v1, Lcom/android/wm/shell/draganddrop/DropTargetView;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v5, :cond_1f

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, v1, Lcom/android/wm/shell/draganddrop/DropTargetView;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x2

    new-array v7, v5, [F

    fill-array-data v7, :array_0

    const-string v8, "alpha"

    invoke-static {v1, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v9, 0xc8

    invoke-virtual {v7, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v11, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v12, v1, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    new-array v13, v5, [F

    fill-array-data v13, :array_1

    invoke-static {v12, v8, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_SUPPORT_DRAG_AND_DROP_REAL_TIME_BLUR:Z

    if-eqz v8, :cond_1e

    const/16 v8, 0x7d

    :goto_10
    const/4 v12, 0x0

    goto :goto_11

    :cond_1e
    const/16 v8, 0x50

    goto :goto_10

    :goto_11
    filled-new-array {v12, v8}, [I

    move-result-object v8

    invoke-static {v8}, Landroid/animation/ObjectAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v8, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v9, v1, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    const/4 v10, 0x2

    new-array v11, v10, [F

    fill-array-data v11, :array_2

    const-string/jumbo v12, "scaleX"

    invoke-static {v9, v12, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v11, 0x190

    invoke-virtual {v9, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v13, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v14, v1, Lcom/android/wm/shell/draganddrop/DropTargetView;->mText:Landroid/widget/TextView;

    const-string/jumbo v15, "scaleY"

    new-array v3, v10, [F

    fill-array-data v3, :array_3

    invoke-static {v14, v15, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v10, Lcom/android/wm/shell/draganddrop/DropTargetView$1;

    invoke-direct {v10, v1}, Lcom/android/wm/shell/draganddrop/DropTargetView$1;-><init>(Lcom/android/wm/shell/draganddrop/DropTargetView;)V

    invoke-virtual {v7, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v10, Lcom/android/wm/shell/draganddrop/DropTargetView$2;

    invoke-direct {v10, v1}, Lcom/android/wm/shell/draganddrop/DropTargetView$2;-><init>(Lcom/android/wm/shell/draganddrop/DropTargetView;)V

    invoke-virtual {v8, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v10, v1, Lcom/android/wm/shell/draganddrop/DropTargetView;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v7, v6, v11

    const/4 v7, 0x1

    aput-object v9, v6, v7

    const/4 v9, 0x2

    aput-object v3, v6, v9

    const/4 v3, 0x3

    aput-object v5, v6, v3

    const/4 v3, 0x4

    aput-object v8, v6, v3

    invoke-virtual {v10, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_12

    :cond_1f
    const/4 v7, 0x1

    :goto_12
    iget-object v3, v1, Lcom/android/wm/shell/draganddrop/DropTargetView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v3, v1, Lcom/android/wm/shell/draganddrop/DropTargetView;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_20
    iget-object v3, v1, Lcom/android/wm/shell/draganddrop/DropTargetView;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, v1, Lcom/android/wm/shell/draganddrop/DropTargetView;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_21
    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DropTargetView;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    if-nez v1, :cond_23

    if-nez v2, :cond_23

    :cond_22
    const/4 v1, 0x0

    goto :goto_14

    :cond_23
    if-eqz v1, :cond_24

    if-eqz v2, :cond_24

    iget v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    iget v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    if-eq v1, v3, :cond_22

    :cond_24
    move v1, v7

    :goto_14
    if-eqz v1, :cond_25

    const/16 v1, 0x29

    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    :cond_25
    iput-object v2, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    goto :goto_15

    :cond_26
    const/4 v7, 0x1

    :goto_15
    iget-boolean v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsIntentSenderDropTarget:Z

    if-nez v1, :cond_2f

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    iget v5, v1, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mCenterX:F

    sub-float/2addr v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setX(F)V

    iget v2, v1, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mCenterY:F

    sub-float/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setY(F)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v3, v1, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mCenterX:F

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    iget v3, v1, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mCenterY:F

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setPivotY(F)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v3, v1, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mScaleUpAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mScaleUpAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    goto :goto_16

    :cond_27
    const/4 v2, 0x0

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mAppIcon:Lcom/android/wm/shell/draganddrop/DragAppIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v4

    iget v5, v1, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mCenterX:F

    sub-float/2addr v3, v5

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setX(F)V

    iget v3, v1, Lcom/android/wm/shell/draganddrop/DragAppIcon;->mCenterY:F

    sub-float/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setY(F)V

    :goto_16
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    if-eqz v0, :cond_28

    iget v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    goto :goto_17

    :cond_28
    const/4 v0, -0x1

    :goto_17
    iget-object v3, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-object v3, v3, Lcom/android/wm/shell/draganddrop/DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    if-eqz v3, :cond_2f

    iget-boolean v4, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mIsMimeType:Z

    if-eqz v4, :cond_29

    const/4 v4, 0x0

    goto :goto_19

    :cond_29
    const/4 v4, -0x1

    if-ne v0, v4, :cond_2a

    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_18

    :cond_2a
    iget-object v4, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableAppMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v5

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/draganddrop/AppInfo;

    :goto_18
    iget-object v5, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    if-eq v5, v0, :cond_2b

    iput-object v0, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    iget-object v5, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallbacks:Ljava/util/List;

    monitor-enter v5

    :try_start_0
    iget-object v0, v3, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v6, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda0;

    invoke-direct {v6, v3}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;)V

    invoke-interface {v0, v6}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit v5

    goto :goto_19

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2b
    :goto_19
    iget-object v0, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragSession;->mExecutableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    if-eqz v1, :cond_2f

    iget-object v3, v1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    if-eqz v3, :cond_2c

    move v3, v7

    goto :goto_1a

    :cond_2c
    move v3, v2

    :goto_1a
    if-eqz v3, :cond_2f

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    iget-object v6, v1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    if-eqz v6, :cond_2d

    iget-object v4, v6, Lcom/android/wm/shell/draganddrop/AppInfo;->mIntent:Landroid/content/Intent;

    :cond_2d
    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "android.app.extra.OPTIONS"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.ACTIVITY_OPTIONS"

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v0, Lcom/android/wm/shell/draganddrop/DragSession;->appData:Landroid/content/Intent;

    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    if-eqz v1, :cond_2e

    iget-boolean v1, v1, Lcom/android/wm/shell/draganddrop/AppInfo;->mIsDropResolver:Z

    if-eqz v1, :cond_2e

    move v2, v7

    :cond_2e
    iput-boolean v2, v0, Lcom/android/wm/shell/draganddrop/DragSession;->isDragDataDropResolver:Z

    :cond_2f
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final updateNavigationBarVisibility(Z)V
    .locals 3

    const-string/jumbo v0, "updateNavigationBarVisibility : "

    const-string v1, ", caller="

    invoke-static {v0, v1, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DropTargetLayout"

    invoke-static {v1, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/StatusBarManager;->disable(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    invoke-virtual {p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->isInSubDisplay()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "task_bar"

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_1

    const-string p0, "Failed to disable navibar, Taskbar is shown"

    invoke-static {v1, p0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 p1, 0x1600000

    invoke-virtual {p0, p1}, Landroid/app/StatusBarManager;->disable(I)V

    return-void
.end method
