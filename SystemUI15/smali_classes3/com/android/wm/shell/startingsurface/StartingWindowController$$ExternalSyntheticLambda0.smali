.class public final synthetic Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;II)V
    .locals 0

    iput p3, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    iput p2, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    iget p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenWindowCreator:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->onAppSplashScreenViewRemoved(IZ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    iget p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    iget-object v1, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowRecords:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    iget-object v2, v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    instance-of v3, v2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->hasImeSurface()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mTmpRemovalInfo:Landroid/window/StartingWindowRemovalInfo;

    iput p0, v2, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->removeWindow(Landroid/window/StartingWindowRemovalInfo;Z)V

    :cond_1
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessRecords:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    iget-object v1, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    instance-of v2, v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;

    if-eqz v2, :cond_2

    move-object v4, v1

    check-cast v4, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->hasImeSurface()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mTmpRemovalInfo:Landroid/window/StartingWindowRemovalInfo;

    iput p0, v1, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    invoke-virtual {v0, v1, v3}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->removeWindow(Landroid/window/StartingWindowRemovalInfo;Z)V

    :cond_3
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    iget p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mStartingSurfaceDrawer:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenWindowCreator:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    iget-object v1, v0, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    instance-of v2, v1, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    check-cast v1, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;

    goto :goto_1

    :cond_4
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$SplashWindowRecord;->mSplashView:Landroid/window/SplashScreenView;

    goto :goto_2

    :cond_5
    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/window/SplashScreenView;->isCopyable()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v3, Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    invoke-direct {v3, v1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;-><init>(Landroid/window/SplashScreenView;)V

    new-instance v2, Landroid/os/RemoteCallback;

    new-instance v4, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0, p0}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;I)V

    invoke-direct {v2, v4}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {v3, v2}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->setClientCallback(Landroid/os/RemoteCallback;)V

    invoke-virtual {v1}, Landroid/window/SplashScreenView;->onCopied()V

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->mAnimatedSplashScreenSurfaceHosts:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/window/SplashScreenView;->getSurfaceHost()Landroid/view/SurfaceControlViewHost;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_6
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_STARTING_WINDOW_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_8

    int-to-long v4, p0

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const/4 v10, 0x0

    const-wide v7, 0x4a5a160f23cb3dc7L    # 1.524999119873161E50

    const/16 v9, 0xd

    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Landroid/app/ActivityTaskManager;->onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
