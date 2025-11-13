.class public final Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;
.super Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAnimatedSplashScreenSurfaceHosts:Landroid/util/SparseArray;

.field public mChoreographer:Landroid/view/Choreographer;

.field public final mWindowManagerGlobal:Landroid/view/WindowManagerGlobal;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Landroid/hardware/display/DisplayManager;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Landroid/hardware/display/DisplayManager;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;)V

    new-instance p1, Landroid/util/SparseArray;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mAnimatedSplashScreenSurfaceHosts:Landroid/util/SparseArray;

    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p2, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda0;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mWindowManagerGlobal:Landroid/view/WindowManagerGlobal;

    return-void
.end method


# virtual methods
.method public final addWindow(ILandroid/os/IBinder;Landroid/view/View;Landroid/view/Display;Landroid/view/WindowManager$LayoutParams;I)Z
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v10, p3

    const-string/jumbo v11, "view not successfully added to wm, removing view"

    const-string v12, "ShellStartingWindow"

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const-wide/16 v8, 0x20

    :try_start_0
    const-string v4, "addRootView"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v4, v1, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mWindowManagerGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v15, 0x0

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move-wide/from16 v16, v8

    move-object v8, v15

    move v9, v0

    :try_start_1
    invoke-virtual/range {v4 .. v9}, Landroid/view/WindowManagerGlobal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;I)V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    invoke-static {v12, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mWindowManagerGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v0, v10, v13}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    goto :goto_2

    :cond_0
    move v14, v13

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-wide/from16 v16, v8

    goto :goto_3

    :catch_1
    move-exception v0

    move-wide/from16 v16, v8

    :goto_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " already running, starting window not displayed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_2
    if-eqz v14, :cond_2

    iget-object v0, v1, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    iget-object v4, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mTmpRemovalInfo:Landroid/window/StartingWindowRemovalInfo;

    iput v2, v4, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    invoke-virtual {v0, v4, v13}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->removeWindow(Landroid/window/StartingWindowRemovalInfo;Z)V

    new-instance v4, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;

    move/from16 v5, p6

    invoke-direct {v4, v1, v3, v10, v5}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Landroid/os/IBinder;Landroid/view/View;I)V

    invoke-virtual {v0, v2, v4}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->addRecord(ILcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)V

    :cond_2
    return v14

    :goto_3
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {v12, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mWindowManagerGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v1, v10, v13}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    :cond_3
    throw v0
.end method

.method public final onAppSplashScreenViewRemoved(IZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mAnimatedSplashScreenSurfaceHosts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControlViewHost;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mAnimatedSplashScreenSurfaceHosts:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_STARTING_WINDOW_enabled:[Z

    const/4 v1, 0x1

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_2

    if-eqz p2, :cond_1

    const-string p0, "Server cleaned up"

    goto :goto_0

    :cond_1
    const-string p0, "App removed"

    :goto_0
    int-to-long p1, p1

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-wide v2, -0xbaa1ae4279dcd25L

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-static {v0}, Landroid/window/SplashScreenView;->releaseIconHost(Landroid/view/SurfaceControlViewHost;)V

    return-void
.end method

.method public final removeWindowInner(Landroid/view/View;ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSysuiProxy:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda34;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda34;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;Z)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mWindowManagerGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {p0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    return-void
.end method
