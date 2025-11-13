.class public final Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;
.super Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mChildSurface:Landroid/view/SurfaceControl;

.field public final mCreateTime:J

.field public final mSplashView:Landroid/window/SplashScreenView;

.field public mViewHost:Landroid/view/SurfaceControlViewHost;

.field public final synthetic this$0:Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;Landroid/view/SurfaceControlViewHost;Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;->this$0:Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;->mSplashView:Landroid/window/SplashScreenView;

    iput-object p4, p0, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;->mChildSurface:Landroid/view/SurfaceControl;

    iput p5, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mBGColor:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;->mCreateTime:J

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;->mChildSurface:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;->this$0:Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;

    iget-object v2, v0, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;->mChildSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    iput-object v1, p0, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;->mChildSurface:Landroid/view/SurfaceControl;

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    iput-object v1, p0, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;->mViewHost:Landroid/view/SurfaceControlViewHost;

    :cond_1
    return-void
.end method

.method public final removeIfPossible(Landroid/window/StartingWindowRemovalInfo;Z)Z
    .locals 8

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;->this$0:Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;

    iget-object v0, p2, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;->mSplashView:Landroid/window/SplashScreenView;

    iget-object v2, p1, Landroid/window/StartingWindowRemovalInfo;->windowAnimationLeash:Landroid/view/SurfaceControl;

    iget-object v3, p1, Landroid/window/StartingWindowRemovalInfo;->mainFrame:Landroid/graphics/Rect;

    new-instance v4, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;)V

    iget-wide v5, p0, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;->mCreateTime:J

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->applyExitAnimation(Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;JF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;->release()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
