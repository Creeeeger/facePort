.class public final Lcom/android/wm/shell/splitscreen/SideStage;
.super Lcom/android/wm/shell/splitscreen/StageTaskListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;Ljava/util/Optional;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "I",
            "Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Landroid/view/SurfaceSession;",
            "Lcom/android/launcher3/icons/IconProvider;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/splitscreen/StageTaskListener;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;Ljava/util/Optional;I)V

    return-void
.end method


# virtual methods
.method public final removeAllTasks(Landroid/window/WindowContainerTransaction;ZZ)Z
    .locals 10

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v2, v0

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v9

    const/16 v7, 0xd

    const-string/jumbo v8, "remove all side stage tasks: childCount=%d toTop=%b"

    const-wide v5, 0x5682e0cf88d63c75L    # 5.542022304927444E108

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    return v1

    :cond_2
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_LAUNCH_POLICY:Z

    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->adjustChildTaskWindowingModeIfNeeded(Landroid/window/WindowContainerTransaction;)V

    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZ)Landroid/window/WindowContainerTransaction;

    const/4 p0, 0x1

    return p0
.end method
