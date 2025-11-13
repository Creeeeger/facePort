.class public final Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;
.super Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAppToken:Landroid/os/IBinder;

.field public final mCreateTime:J

.field public final mRootView:Landroid/view/View;

.field public mSetSplashScreen:Z

.field public mSplashView:Landroid/window/SplashScreenView;

.field public final mSuggestType:I

.field public final synthetic this$0:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Landroid/os/IBinder;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mAppToken:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mRootView:Landroid/view/View;

    iput p4, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSuggestType:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mCreateTime:J

    return-void
.end method


# virtual methods
.method public final removeIfPossible(Landroid/window/StartingWindowRemovalInfo;Z)Z
    .locals 10

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mRootView:Landroid/view/View;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSplashView:Landroid/window/SplashScreenView;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    const-string v0, "ShellStartingWindow"

    if-nez p2, :cond_2

    iget-object p2, v4, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mWindowManagerGlobal:Landroid/view/WindowManagerGlobal;

    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mAppToken:Landroid/os/IBinder;

    invoke-virtual {p2, v3}, Landroid/view/WindowManagerGlobal;->getRootViews(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mRootView:Landroid/view/View;

    if-ne v3, v5, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "Need to force-remove empty splash screen added to WM, info="

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", caller="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x7

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mRootView:Landroid/view/View;

    invoke-virtual {v4, p0, v2, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->removeWindowInner(Landroid/view/View;ZZ)V

    return v1

    :cond_2
    const-string p1, "Found empty splash screen, remove!"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mRootView:Landroid/view/View;

    invoke-virtual {v4, p0, v2, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->removeWindowInner(Landroid/view/View;ZZ)V

    return v1

    :cond_3
    if-nez p2, :cond_6

    iget p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSuggestType:I

    const/4 v5, 0x4

    if-ne p2, v5, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean p2, p1, Landroid/window/StartingWindowRemovalInfo;->playRevealAnimation:Z

    if-eqz p2, :cond_5

    iget-object v2, v4, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v4, p1, Landroid/window/StartingWindowRemovalInfo;->windowAnimationLeash:Landroid/view/SurfaceControl;

    iget-object v5, p1, Landroid/window/StartingWindowRemovalInfo;->mainFrame:Landroid/graphics/Rect;

    new-instance v6, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {v6, p0, p2}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iget-wide v7, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mCreateTime:J

    iget v9, p1, Landroid/window/StartingWindowRemovalInfo;->roundedCornerRadius:F

    invoke-virtual/range {v2 .. v9}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->applyExitAnimation(Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/lang/Runnable;JF)V

    goto :goto_1

    :cond_5
    invoke-virtual {v4, v0, v1, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->removeWindowInner(Landroid/view/View;ZZ)V

    goto :goto_1

    :cond_6
    :goto_0
    invoke-virtual {v4, v0, v2, v2}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->removeWindowInner(Landroid/view/View;ZZ)V

    :goto_1
    return v1
.end method
