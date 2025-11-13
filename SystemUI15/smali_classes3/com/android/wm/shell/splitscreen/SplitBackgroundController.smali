.class public final Lcom/android/wm/shell/splitscreen/SplitBackgroundController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$RootTaskDisplayAreaListener;
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
.implements Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAnimation:Landroid/animation/ValueAnimator;

.field public mBackgroundColor:[F

.field public mBackgroundColorLayer:Landroid/view/SurfaceControl;

.field public final mContext:Landroid/content/Context;

.field public mHiddenWhileRecentsTransition:Z

.field public mIsAttached:Z

.field public mIsDividerVisible:Z

.field public final mLock:Ljava/lang/Object;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mNightMode:Z

.field public mOneshotStartAlpha:F

.field public final mRemoteAppTransitionListener:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;

.field public mReparentedToTransitionRoot:Z

.field public final mShowAnimDelay:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;

.field public final mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

.field public final mSurfaceSession:Landroid/view/SurfaceSession;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field public mVisible:Z

.field public mWallpaperVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    sput-boolean v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/DisplayController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mLock:Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mOneshotStartAlpha:F

    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;I)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mShowAnimDelay:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;-><init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceSession:Landroid/view/SurfaceSession;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mVisible:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mNightMode:Z

    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$1;-><init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundColor()V

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V

    new-instance p1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;I)V

    check-cast p4, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p4, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p5, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    return-void
.end method


# virtual methods
.method public final canShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mIsDividerVisible:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mWallpaperVisible:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BACKGROUND:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final detach()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mIsAttached:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    iput-object v0, v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mIsAttached:Z

    return-void
.end method

.method public final getDisplayBounds()Landroid/graphics/Rect;
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "SplitBackgroundController"

    const-string v0, "getDisplayBounds: cannot find display"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object v0
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundLayerColor(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->setCrop(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->apply()V

    :cond_0
    return-void
.end method

.method public final reparentToLeash(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 6

    const-string v0, ", callers="

    const/4 v1, 0x5

    const-string v2, "SplitBackgroundController"

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v3, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mIsAttached:Z

    if-nez v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "reparentToLeash: failed, non-attached state, callers="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->canShow()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mReparentedToTransitionRoot:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "reparentToLeash: leash="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", isTransitionRoot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", vis="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x3

    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p3, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p3, p2, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    :cond_4
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {p3}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p3, v0}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    :goto_2
    invoke-virtual {p0, v1, v3}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    return-void

    :cond_5
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "reparentToLeash: failed, invalid leash="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setSplitsVisible(ZZ)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mIsDividerVisible:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->canShow()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundVisibility(ZZ)V

    :goto_0
    return-void
.end method

.method public final updateBackgroundColor()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getRoundedCornerColor(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v4, 0x0

    aput v1, v2, v4

    const/4 v1, 0x1

    aput v3, v2, v1

    const/4 v1, 0x2

    aput v0, v2, v1

    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColor:[F

    return-void
.end method

.method public final updateBackgroundLayer(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mWallpaperVisible:Z

    if-eqz v2, :cond_2

    const v2, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundColor()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColor:[F

    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mColors:[F

    if-eq v2, p0, :cond_3

    iput-object p0, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mColors:[F

    iput-boolean v1, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mChanged:Z

    :cond_3
    iget-boolean p0, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mVisible:Z

    if-eq p0, p1, :cond_4

    iput-boolean p1, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mVisible:Z

    iput-boolean v1, v0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mChanged:Z

    :cond_4
    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->apply()V

    return-void
.end method

.method public final updateBackgroundLayerColor(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mNightMode:Z

    if-ne v1, v0, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mNightMode:Z

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColorLayer:Landroid/view/SurfaceControl;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->updateBackgroundColor()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mBackgroundColor:[F

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mSurfaceDelegate:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mColors:[F

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mColors:[F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->mChanged:Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$SurfaceDelegate;->apply()V

    :cond_3
    return-void
.end method

.method public final updateBackgroundVisibility(ZZ)V
    .locals 5

    const-string/jumbo v0, "updateBackgroundVisibility: visible="

    const-string/jumbo v1, "updateBackgroundVisibility: not attached but called. callers="

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mShowAnimDelay:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;

    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object v3, v3, Lcom/android/wm/shell/common/HandlerExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mShowAnimDelay:Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;

    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mIsAttached:Z

    if-nez v3, :cond_1

    const-string v3, "SplitBackgroundController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mVisible:Z

    if-eq v1, p1, :cond_4

    sget-boolean v1, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "SplitBackgroundController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " animate="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " Callers="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mVisible:Z

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p2, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitBackgroundController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p2, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/android/wm/shell/splitscreen/SplitBackgroundController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/SplitBackgroundController;I)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
