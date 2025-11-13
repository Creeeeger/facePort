.class public final synthetic Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 43

    move-object/from16 v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v4, 0x1

    iget v5, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v5, :pswitch_data_0

    iget-object v1, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;->this$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    iget-object v2, v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenWindowCreator:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    iput-object v0, v2, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSysuiProxy:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessSplashWindowCreator:Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;

    iput-object v0, v1, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSysuiProxy:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

    return-void

    :pswitch_0
    iget-object v5, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast v5, Lcom/android/wm/shell/startingsurface/StartingWindowController;

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/window/StartingWindowInfo;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "addStartingWindow"

    const-wide/16 v13, 0x20

    invoke-static {v13, v14, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v6, v5, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingWindowTypeAlgorithm:Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;

    check-cast v6, Lcom/android/wm/shell/startingsurface/phone/PhoneStartingWindowTypeAlgorithm;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v0, Landroid/window/StartingWindowInfo;->startingWindowTypeParameter:I

    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    and-int/lit8 v8, v6, 0x2

    if-eqz v8, :cond_1

    move v8, v4

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    and-int/lit8 v9, v6, 0x4

    if-eqz v9, :cond_2

    move v9, v4

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    and-int/lit8 v10, v6, 0x8

    if-eqz v10, :cond_3

    move v10, v4

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    and-int/lit8 v11, v6, 0x10

    if-eqz v11, :cond_4

    move v11, v4

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    :goto_4
    and-int/lit8 v12, v6, 0x20

    if-eqz v12, :cond_5

    move v12, v4

    goto :goto_5

    :cond_5
    const/4 v12, 0x0

    :goto_5
    const/high16 v15, -0x80000000

    and-int/2addr v15, v6

    if-eqz v15, :cond_6

    move v15, v4

    goto :goto_6

    :cond_6
    const/4 v15, 0x0

    :goto_6
    and-int/lit8 v16, v6, 0x40

    if-eqz v16, :cond_7

    move/from16 v16, v4

    goto :goto_7

    :cond_7
    const/16 v16, 0x0

    :goto_7
    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_8

    move v6, v4

    goto :goto_8

    :cond_8
    const/4 v6, 0x0

    :goto_8
    iget-object v13, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v13, v13, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-ne v13, v2, :cond_9

    move v13, v4

    goto :goto_9

    :cond_9
    const/4 v13, 0x0

    :goto_9
    sget-object v14, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_STARTING_WINDOW_enabled:[Z

    aget-boolean v14, v14, v4

    if-eqz v14, :cond_a

    sget-object v17, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    filled-new-array/range {v18 .. v27}, [Ljava/lang/Object;

    move-result-object v22

    const v20, 0xfffff

    const/16 v21, 0x0

    const-wide v18, -0x2c5e5f53b932c65cL    # -7.353981727579795E94

    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    const/4 v2, 0x5

    if-eqz v6, :cond_b

    move v15, v2

    goto :goto_d

    :cond_b
    if-nez v13, :cond_f

    if-eqz v9, :cond_c

    if-nez v7, :cond_c

    if-eqz v8, :cond_f

    if-nez v11, :cond_f

    :cond_c
    if-eqz v12, :cond_d

    :goto_a
    const/4 v6, 0x3

    goto :goto_c

    :cond_d
    if-eqz v15, :cond_e

    :goto_b
    move v6, v1

    goto :goto_c

    :cond_e
    move v6, v4

    :goto_c
    move v15, v6

    goto :goto_d

    :cond_f
    if-eqz v8, :cond_13

    if-eqz v10, :cond_11

    iget-object v6, v0, Landroid/window/StartingWindowInfo;->taskSnapshot:Landroid/window/TaskSnapshot;

    if-eqz v6, :cond_10

    const/4 v15, 0x2

    goto :goto_d

    :cond_10
    if-nez v13, :cond_11

    const/4 v15, 0x3

    goto :goto_d

    :cond_11
    if-nez v16, :cond_13

    if-nez v13, :cond_13

    if-eqz v12, :cond_12

    goto :goto_a

    :cond_12
    if-eqz v15, :cond_e

    goto :goto_b

    :cond_13
    const/4 v15, 0x0

    :goto_d
    iget-object v13, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v12, 0x0

    const/4 v11, -0x1

    if-ne v15, v2, :cond_1d

    iget-object v10, v5, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Landroid/window/StartingWindowInfo;->taskSnapshot:Landroid/window/TaskSnapshot;

    if-eqz v9, :cond_15

    iget-object v6, v0, Landroid/window/StartingWindowInfo;->rootSurface:Landroid/view/SurfaceControl;

    iget-object v11, v10, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessSnapshotWindowCreator:Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v7, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const-string v2, "Windowless Snapshot "

    invoke-static {v7, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v1

    const/16 v14, 0x7f6

    invoke-static {v0, v2, v14, v1, v12}, Landroid/window/SnapshotDrawerUtils;->createLayoutParameters(Landroid/window/StartingWindowInfo;Ljava/lang/CharSequence;IILandroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_14

    goto/16 :goto_11

    :cond_14
    iget-object v2, v11, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget v12, v8, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v2, v12}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    new-instance v14, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;

    iget-object v12, v8, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-direct {v14, v12, v6}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;)V

    new-instance v12, Landroid/view/SurfaceControlViewHost;

    iget-object v6, v11, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mContext:Landroid/content/Context;

    const-string v3, "WindowlessSnapshotWindowCreator"

    invoke-direct {v12, v6, v2, v14, v3}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    iget-object v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, v0, Landroid/window/StartingWindowInfo;->topOpaqueWindowInsetsState:Landroid/view/InsetsState;

    new-instance v6, Landroid/widget/FrameLayout;

    iget-object v4, v11, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    move/from16 v17, v7

    iget-object v7, v11, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v18, v8

    new-instance v8, Landroid/view/ContextThemeWrapper;

    iget-object v4, v4, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-direct {v8, v7, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    invoke-direct {v6, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v6, v1}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v8, v14, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;->mChildSurface:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    move-object v6, v0

    move/from16 v28, v17

    move-object v7, v1

    move-object/from16 v1, v18

    move-object/from16 v17, v9

    move-object/from16 v29, v10

    move-object v10, v2

    move-object v2, v11

    move-object v11, v3

    move-object v3, v12

    move v12, v4

    invoke-static/range {v6 .. v12}, Landroid/window/SnapshotDrawerUtils;->drawSnapshotOnSurface(Landroid/window/StartingWindowInfo;Landroid/view/WindowManager$LayoutParams;Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Landroid/graphics/Rect;Landroid/view/InsetsState;Z)V

    invoke-static {v1}, Landroid/window/SnapshotDrawerUtils;->getOrCreateTaskDescription(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v4

    new-instance v6, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;

    iget-object v7, v14, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;->mChildSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Landroid/window/TaskSnapshot;->hasImeSurface()Z

    move-result v22

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    iget-object v4, v2, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    move-object/from16 v8, v29

    iget-object v8, v8, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v17, v6

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v7

    move/from16 v23, v1

    move-object/from16 v24, v8

    move/from16 v25, v28

    move-object/from16 v26, v4

    invoke-direct/range {v17 .. v26}, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;-><init>(Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;Landroid/view/SurfaceControlViewHost;Landroid/view/SurfaceControl;IZILcom/android/wm/shell/common/ShellExecutor;ILcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;)V

    iget-object v1, v2, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    move/from16 v2, v28

    invoke-virtual {v1, v2, v6}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->addRecord(ILcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)V

    iget-object v1, v14, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;->mChildSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/window/StartingWindowInfo;->notifyAddComplete(Landroid/view/SurfaceControl;)V

    goto/16 :goto_11

    :cond_15
    move-object v8, v10

    iget-object v1, v0, Landroid/window/StartingWindowInfo;->rootSurface:Landroid/view/SurfaceControl;

    iget-object v2, v8, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessSplashWindowCreator:Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v0, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_16

    goto :goto_e

    :cond_16
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    :goto_e
    if-eqz v4, :cond_1c

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez v4, :cond_17

    goto/16 :goto_11

    :cond_17
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v6, v2, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v6, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    if-nez v4, :cond_18

    goto/16 :goto_11

    :cond_18
    iget-object v6, v2, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mContext:Landroid/content/Context;

    iget-object v7, v2, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v6, v0, v9, v8, v7}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createContext(Landroid/content/Context;Landroid/window/StartingWindowInfo;IILandroid/hardware/display/DisplayManager;)Landroid/content/Context;

    move-result-object v14

    if-nez v14, :cond_19

    goto/16 :goto_11

    :cond_19
    new-instance v10, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;

    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-direct {v10, v6, v1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;)V

    new-instance v1, Landroid/view/SurfaceControlViewHost;

    const-string v6, "WindowlessSplashWindowCreator"

    invoke-direct {v1, v14, v4, v10, v6}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Windowless Splash "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    const/4 v8, 0x1

    const/16 v17, -0x3

    move-object v6, v14

    move-object v7, v0

    move-object/from16 v30, v10

    move/from16 v10, v17

    move v12, v11

    move-object v11, v4

    invoke-static/range {v6 .. v11}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createLayoutParameters(Landroid/content/Context;Landroid/window/StartingWindowInfo;ILjava/lang/CharSequence;ILandroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v6, :cond_1a

    goto :goto_f

    :cond_1a
    new-instance v6, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v6}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    invoke-virtual {v6, v12}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    :goto_f
    new-instance v7, Landroid/widget/FrameLayout;

    iget-object v8, v2, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mContext:Landroid/content/Context;

    iget-object v9, v2, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Landroid/view/ContextThemeWrapper;

    iget-object v11, v9, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    invoke-direct {v10, v8, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    invoke-direct {v7, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7, v4}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v4

    invoke-virtual {v9}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->updateDensity()V

    iget-object v6, v9, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mTmpAttrs:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    const/4 v8, 0x0

    iput v8, v6, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgResId:I

    iput v8, v6, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgColor:I

    const/4 v11, 0x0

    iput-object v11, v6, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mSplashScreenIcon:Landroid/graphics/drawable/Drawable;

    iput-object v11, v6, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mBrandingImage:Landroid/graphics/drawable/Drawable;

    iput v8, v6, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mIconBgColor:I

    iget-object v6, v0, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_1b

    goto :goto_10

    :cond_1b
    iget-object v6, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    :goto_10
    new-instance v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;

    invoke-direct {v8, v9, v14, v6}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    iput v4, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mThemeColor:I

    const/4 v6, 0x3

    iput v6, v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->mSuggestType:I

    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashViewBuilder;->build(Z)Landroid/window/SplashScreenView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/window/SplashScreenView;->setNotCopyable()V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v6, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;

    move-object/from16 v7, v30

    iget-object v9, v7, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;->mChildSurface:Landroid/view/SurfaceControl;

    move-object/from16 v17, v6

    move-object/from16 v18, v2

    move-object/from16 v19, v1

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move/from16 v22, v4

    invoke-direct/range {v17 .. v22}, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator$SplashWindowRecord;-><init>(Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;Landroid/view/SurfaceControlViewHost;Landroid/window/SplashScreenView;Landroid/view/SurfaceControl;I)V

    iget-object v1, v2, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    iget v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2, v6}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->addRecord(ILcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)V

    iget-object v1, v7, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;->mChildSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/window/StartingWindowInfo;->notifyAddComplete(Landroid/view/SurfaceControl;)V

    :cond_1c
    :goto_11
    move-object/from16 v26, v5

    move-object v2, v13

    move v14, v15

    :goto_12
    const/16 v20, 0x0

    goto/16 :goto_24

    :cond_1d
    move v1, v4

    move-object/from16 v42, v12

    move v12, v11

    move-object/from16 v11, v42

    if-eq v15, v1, :cond_1e

    const/4 v1, 0x3

    if-eq v15, v1, :cond_1e

    const/4 v1, 0x4

    if-ne v15, v1, :cond_1f

    :cond_1e
    move-object v2, v11

    move-object/from16 v24, v13

    move/from16 v25, v15

    goto/16 :goto_1c

    :cond_1f
    const/4 v1, 0x2

    if-ne v15, v1, :cond_1c

    iget-object v9, v0, Landroid/window/StartingWindowInfo;->taskSnapshot:Landroid/window/TaskSnapshot;

    iget-object v1, v5, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSnapshotWindowCreator:Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v3, v1, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    iget-object v4, v3, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mTmpRemovalInfo:Landroid/window/StartingWindowRemovalInfo;

    iput v2, v4, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->removeWindow(Landroid/window/StartingWindowRemovalInfo;Z)V

    iget-object v4, v0, Landroid/window/StartingWindowInfo;->appToken:Landroid/os/IBinder;

    new-instance v6, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1, v2}, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;I)V

    const-string v7, "Relayout returned: frame="

    const-string v8, "Failed to add snapshot starting window res="

    iget-object v10, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v12, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v10}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v14

    const/4 v11, 0x2

    if-ne v14, v11, :cond_21

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_STARTING_WINDOW_enabled:[Z

    const/4 v6, 0x1

    aget-boolean v4, v4, v6

    if-eqz v4, :cond_20

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide v8, 0x48431b88c1cd3417L    # 1.3003928421039464E40

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    move-object/from16 v18, v1

    move/from16 v17, v2

    move-object/from16 v41, v3

    move-object/from16 v26, v5

    move-object/from16 v24, v13

    :goto_13
    move/from16 v25, v15

    :goto_14
    const/16 v19, 0x0

    goto/16 :goto_1a

    :cond_21
    sget-object v11, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_STARTING_WINDOW_enabled:[Z

    const/4 v14, 0x1

    aget-boolean v11, v11, v14

    move-object/from16 v24, v13

    if-eqz v11, :cond_22

    int-to-long v13, v12

    sget-object v17, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v22

    const-wide v18, 0x42f26afba0d1354aL    # 3.240111592620366E14

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    iget-object v11, v0, Landroid/window/StartingWindowInfo;->topOpaqueWindowInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v9}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v13

    const-string v14, "ShellStartingWindow"

    if-nez v13, :cond_23

    const-string v4, "TaskSnapshotWindow no snapshot"

    invoke-static {v14, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v18, v1

    move/from16 v17, v2

    move-object/from16 v41, v3

    move-object/from16 v26, v5

    goto :goto_13

    :cond_23
    const-string v13, "SnapshotStartingWindow for taskId="

    invoke-static {v12, v13}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v13

    invoke-virtual {v13}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v13

    move/from16 v25, v15

    const/4 v15, 0x3

    invoke-static {v0, v12, v15, v13, v4}, Landroid/window/SnapshotDrawerUtils;->createLayoutParameters(Landroid/window/StartingWindowInfo;Ljava/lang/CharSequence;IILandroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_24

    const-string v4, "TaskSnapshotWindow no layoutParams"

    invoke-static {v14, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v18, v1

    move/from16 v17, v2

    move-object/from16 v41, v3

    move-object/from16 v26, v5

    goto :goto_14

    :cond_24
    invoke-virtual {v9}, Landroid/window/TaskSnapshot;->getOrientation()I

    move-result v20

    iget v12, v10, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v13

    new-instance v15, Landroid/view/SurfaceControl;

    invoke-direct {v15}, Landroid/view/SurfaceControl;-><init>()V

    move-object/from16 v26, v5

    new-instance v5, Landroid/window/ClientWindowFrames;

    invoke-direct {v5}, Landroid/window/ClientWindowFrames;-><init>()V

    new-instance v39, Landroid/view/InsetsSourceControl$Array;

    invoke-direct/range {v39 .. v39}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    new-instance v40, Landroid/util/MergedConfiguration;

    invoke-direct/range {v40 .. v40}, Landroid/util/MergedConfiguration;-><init>()V

    invoke-static {v10}, Landroid/window/SnapshotDrawerUtils;->getOrCreateTaskDescription(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v19

    new-instance v10, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    move-object/from16 v41, v3

    iget-object v3, v1, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v17, v10

    move-object/from16 v18, v9

    move-object/from16 v21, v6

    move-object/from16 v22, v3

    invoke-direct/range {v17 .. v22}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;-><init>(Landroid/window/TaskSnapshot;Landroid/app/ActivityManager$TaskDescription;ILjava/lang/Runnable;Lcom/android/wm/shell/common/ShellExecutor;)V

    iget-object v3, v10, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;

    new-instance v6, Landroid/view/InsetsState;

    invoke-direct {v6}, Landroid/view/InsetsState;-><init>()V

    new-instance v34, Landroid/view/InputChannel;

    invoke-direct/range {v34 .. v34}, Landroid/view/InputChannel;-><init>()V

    move-object/from16 v18, v1

    move/from16 v17, v2

    const/4 v2, 0x1

    new-array v1, v2, [F

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    aput v2, v1, v19

    move-object v2, v9

    move-object/from16 v19, v10

    :try_start_0
    const-string v9, "TaskSnapshot#addToDisplay"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v22, v11

    const-wide/16 v10, 0x20

    :try_start_1
    invoke-static {v10, v11, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget v9, v0, Landroid/window/StartingWindowInfo;->requestedVisibleTypes:I

    new-instance v37, Landroid/graphics/Rect;

    invoke-direct/range {v37 .. v37}, Landroid/graphics/Rect;-><init>()V

    const/16 v31, 0x8

    move-object/from16 v28, v13

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    move/from16 v32, v12

    move/from16 v33, v9

    move-object/from16 v35, v6

    move-object/from16 v36, v39

    move-object/from16 v38, v1

    invoke-interface/range {v28 .. v38}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I

    move-result v1

    const-wide/16 v9, 0x20

    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    if-gez v1, :cond_25

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_14

    :catch_0
    :goto_15
    move-object/from16 v1, v19

    goto :goto_16

    :cond_25
    move-object/from16 v1, v19

    const-wide/16 v10, 0x0

    goto :goto_17

    :catch_1
    move-object/from16 v22, v11

    goto :goto_15

    :goto_16
    iget-object v8, v1, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mClearWindowHandler:Ljava/lang/Runnable;

    iget-object v9, v1, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v9, Lcom/android/wm/shell/common/HandlerExecutor;

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :goto_17
    :try_start_2
    const-string v8, "TaskSnapshot#relayout"
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    const-wide/16 v10, 0x20

    :try_start_3
    invoke-static {v10, v11, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/window/flags/Flags;->windowSessionRelayoutInfo()Z

    new-instance v37, Landroid/view/WindowRelayoutResult;

    move-object/from16 v28, v37

    move-object/from16 v29, v5

    move-object/from16 v30, v40

    move-object/from16 v31, v15

    move-object/from16 v32, v6

    move-object/from16 v33, v39

    invoke-direct/range {v28 .. v33}, Landroid/view/WindowRelayoutResult;-><init>(Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v31, -0x1

    const/16 v32, -0x1

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v28, v13

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    invoke-interface/range {v28 .. v37}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/view/WindowRelayoutResult;)I

    const-wide/16 v8, 0x20

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " topInset="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v22

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", attrs="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    iget-object v10, v0, Landroid/window/StartingWindowInfo;->taskBounds:Landroid/graphics/Rect;

    const/4 v12, 0x1

    move-object v6, v0

    move-object v7, v4

    move-object v8, v15

    const-wide/16 v3, 0x0

    move-object v9, v2

    const/4 v2, 0x0

    move-object v11, v5

    invoke-static/range {v6 .. v12}, Landroid/window/SnapshotDrawerUtils;->drawSnapshotOnSurface(Landroid/window/StartingWindowInfo;Landroid/view/WindowManager$LayoutParams;Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Landroid/graphics/Rect;Landroid/view/InsetsState;Z)V

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mHasDrawn:Z

    :try_start_4
    iget-object v5, v1, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSession:Landroid/view/IWindowSession;

    iget-object v6, v1, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;

    const v7, 0x7fffffff

    invoke-interface {v5, v6, v2, v7}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_18

    :catch_2
    iget-object v2, v1, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mClearWindowHandler:Ljava/lang/Runnable;

    iget-object v5, v1, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v5, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v5, v2, v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :goto_18
    move-object/from16 v19, v1

    goto :goto_1a

    :catch_3
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    goto :goto_19

    :catch_4
    move-wide v3, v10

    const/4 v2, 0x0

    :goto_19
    iget-object v5, v1, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mClearWindowHandler:Ljava/lang/Runnable;

    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v1, v5, v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    const-string v1, "Failed to relayout snapshot starting window"

    invoke-static {v14, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, v2

    :goto_1a
    if-eqz v19, :cond_26

    new-instance v1, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$SnapshotWindowRecord;

    iget-object v0, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    move-object/from16 v2, v18

    iget-object v3, v2, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v2, v2, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    move-object/from16 v18, v1

    move/from16 v20, v0

    move-object/from16 v21, v3

    move/from16 v22, v17

    move-object/from16 v23, v2

    invoke-direct/range {v18 .. v23}, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$SnapshotWindowRecord;-><init>(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;ILcom/android/wm/shell/common/ShellExecutor;ILcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;)V

    move/from16 v0, v17

    move-object/from16 v2, v41

    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->addRecord(ILcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)V

    :cond_26
    :goto_1b
    move-object/from16 v2, v24

    move/from16 v14, v25

    goto/16 :goto_12

    :goto_1c
    iget-object v1, v5, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenWindowCreator:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v0, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_27

    goto :goto_1d

    :cond_27
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    :goto_1d
    if-eqz v4, :cond_28

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez v6, :cond_29

    :cond_28
    move-object/from16 v26, v5

    goto :goto_1b

    :cond_29
    iget v6, v0, Landroid/window/StartingWindowInfo;->splashScreenThemeResId:I

    if-eqz v6, :cond_2a

    goto :goto_1e

    :cond_2a
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v6

    if-eqz v6, :cond_2b

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v6

    goto :goto_1e

    :cond_2b
    const v6, 0x10302e3

    :goto_1e
    iget-object v13, v1, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v7, v13, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mPreloadIcon:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;

    iget-object v8, v7, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mContext:Landroid/content/Context;

    if-nez v8, :cond_2c

    goto :goto_1f

    :cond_2c
    iget v9, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eqz v9, :cond_2d

    goto :goto_1f

    :cond_2d
    iget v9, v0, Landroid/window/StartingWindowInfo;->splashScreenThemeResId:I

    iget-boolean v10, v7, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mIsPreloaded:Z

    if-eqz v10, :cond_2f

    if-eqz v9, :cond_2f

    invoke-virtual {v8}, Landroid/content/Context;->getThemeResId()I

    move-result v8

    if-ne v9, v8, :cond_2f

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v8

    iget-object v7, v7, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v7

    if-eq v8, v7, :cond_2e

    goto :goto_1f

    :cond_2e
    iget-object v6, v13, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mPreloadIcon:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;

    iget-object v6, v6, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$PreloadIconData;->mContext:Landroid/content/Context;

    move-object v15, v6

    move/from16 v14, v25

    goto :goto_20

    :cond_2f
    :goto_1f
    iget-object v7, v1, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move/from16 v14, v25

    invoke-static {v7, v0, v6, v14, v8}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createContext(Landroid/content/Context;Landroid/window/StartingWindowInfo;IILandroid/hardware/display/DisplayManager;)Landroid/content/Context;

    move-result-object v6

    move-object v15, v6

    :goto_20
    if-nez v15, :cond_30

    move-object/from16 v26, v5

    move-object/from16 v2, v24

    goto/16 :goto_12

    :cond_30
    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x4

    if-ne v14, v4, :cond_31

    move v10, v12

    goto :goto_21

    :cond_31
    const/4 v4, -0x3

    move v10, v4

    :goto_21
    iget-object v11, v0, Landroid/window/StartingWindowInfo;->appToken:Landroid/os/IBinder;

    move-object v6, v15

    move-object v7, v0

    move v8, v14

    invoke-static/range {v6 .. v11}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createLayoutParameters(Landroid/content/Context;Landroid/window/StartingWindowInfo;ILjava/lang/CharSequence;ILandroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v7, v1, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v18

    new-instance v12, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;

    const/4 v6, 0x0

    invoke-direct {v12, v6}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;-><init>(I)V

    new-instance v11, Landroid/widget/FrameLayout;

    new-instance v7, Landroid/view/ContextThemeWrapper;

    iget-object v8, v13, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-direct {v7, v15, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    invoke-direct {v11, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v6, v6, v6, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {v11, v6}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    new-instance v10, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda1;

    move-object v6, v10

    move-object v7, v1

    move-object v8, v12

    move v9, v3

    move-object/from16 v26, v5

    move-object v5, v10

    move-object v10, v0

    move-object/from16 v19, v11

    invoke-direct/range {v6 .. v11}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;ILandroid/window/StartingWindowInfo;Landroid/widget/FrameLayout;)V

    iget-object v6, v1, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mSysuiProxy:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;

    if-eqz v6, :cond_32

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v6, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda34;

    const/4 v8, 0x1

    invoke-direct {v7, v6, v8}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda34;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;Z)V

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_22

    :cond_32
    const/4 v8, 0x1

    :goto_22
    new-instance v11, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda2;

    const/4 v10, 0x0

    invoke-direct {v11, v12, v10}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;I)V

    new-instance v9, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda2;

    invoke-direct {v9, v12, v8}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;I)V

    new-instance v8, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda3;

    move-object v6, v8

    move-object v7, v13

    move-object v2, v8

    move-object v8, v15

    move-object v15, v9

    move-object v9, v0

    move/from16 v20, v10

    move v10, v14

    move-object/from16 v21, v11

    move-object v11, v15

    move-object v15, v12

    move-object/from16 v12, v21

    invoke-direct/range {v6 .. v12}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Landroid/window/StartingWindowInfo;ILcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda2;Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda2;)V

    iget-object v6, v13, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->mSplashscreenWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_5
    iget-object v9, v0, Landroid/window/StartingWindowInfo;->appToken:Landroid/os/IBinder;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    move-object v7, v1

    move v8, v3

    move-object/from16 v10, v19

    move-object/from16 v11, v18

    move-object v12, v4

    move-object/from16 v2, v24

    move v13, v14

    :try_start_6
    invoke-virtual/range {v7 .. v13}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->addWindow(ILandroid/os/IBinder;Landroid/view/View;Landroid/view/Display;Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, v1, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mChoreographer:Landroid/view/Choreographer;

    const/4 v4, 0x0

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5, v4}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    check-cast v0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;

    if-eqz v0, :cond_34

    invoke-virtual {v15}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;->get()Landroid/window/SplashScreenView;

    move-result-object v0

    const/4 v4, 0x4

    if-eq v14, v4, :cond_34

    new-instance v4, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$1;

    invoke-direct {v4, v1, v0}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$1;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;Landroid/window/SplashScreenView;)V

    invoke-virtual {v0, v4}, Landroid/window/SplashScreenView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_24

    :catch_5
    move-exception v0

    goto :goto_23

    :cond_33
    invoke-virtual {v15}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashScreenViewSupplier;->get()Landroid/window/SplashScreenView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/SplashScreenView;->getSurfaceHost()Landroid/view/SurfaceControlViewHost;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-virtual {v0}, Landroid/window/SplashScreenView;->getSurfaceHost()Landroid/view/SurfaceControlViewHost;

    move-result-object v0

    invoke-static {v0}, Landroid/window/SplashScreenView;->releaseIconHost(Landroid/view/SurfaceControlViewHost;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_24

    :catch_6
    move-exception v0

    move-object/from16 v2, v24

    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "failed creating starting window at taskId: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ShellStartingWindow"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_34
    :goto_24
    if-eqz v14, :cond_37

    const/4 v1, 0x5

    if-eq v14, v1, :cond_37

    iget v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    move-object/from16 v5, v26

    iget-object v1, v5, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowRecords:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    if-nez v1, :cond_35

    move/from16 v3, v20

    goto :goto_25

    :cond_35
    iget v3, v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mBGColor:I

    :goto_25
    if-eqz v3, :cond_36

    iget-object v1, v5, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskBackgroundColors:Landroid/util/SparseIntArray;

    monitor-enter v1

    :try_start_7
    iget-object v2, v5, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskBackgroundColors:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->append(II)V

    monitor-exit v1

    goto :goto_26

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :cond_36
    :goto_26
    iget-object v1, v5, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mTaskLaunchingCallback:Lcom/android/internal/util/function/TriConsumer;

    if-eqz v1, :cond_37

    const/4 v2, 0x1

    if-eq v14, v2, :cond_38

    const/4 v2, 0x3

    if-eq v14, v2, :cond_38

    const/4 v2, 0x4

    if-ne v14, v2, :cond_37

    goto :goto_28

    :cond_37
    :goto_27
    const-wide/16 v1, 0x20

    goto :goto_29

    :cond_38
    :goto_28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_27

    :goto_29
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
