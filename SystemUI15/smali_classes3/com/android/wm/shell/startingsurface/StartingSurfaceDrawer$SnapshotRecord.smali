.class public abstract Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;
.super Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mActivityType:I

.field public final mRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

.field public final mRemoveExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mScheduledRunnable:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord$$ExternalSyntheticLambda0;

.field public final mTaskId:I


# direct methods
.method public constructor <init>(ILcom/android/wm/shell/common/ShellExecutor;ILcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;-><init>()V

    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mScheduledRunnable:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord$$ExternalSyntheticLambda0;

    iput p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mActivityType:I

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mRemoveExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput p3, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mTaskId:I

    iput-object p4, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    return-void
.end method


# virtual methods
.method public abstract hasImeSurface()Z
.end method

.method public final removeIfPossible(Landroid/window/StartingWindowRemovalInfo;Z)Z
    .locals 9

    const/4 v0, 0x1

    if-nez p2, :cond_4

    iget p2, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mActivityType:I

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    iget p1, p1, Landroid/window/StartingWindowRemovalInfo;->deferRemoveMode:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mRemoveExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p2, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mScheduledRunnable:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord$$ExternalSyntheticLambda0;

    invoke-virtual {p2, p0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    const-wide/16 v1, 0x64

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0xbb8

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x258

    :goto_0
    invoke-virtual {p2, p0, v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_STARTING_WINDOW_enabled:[Z

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_3

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v7, 0x0

    const-wide v4, 0x6448f202da3d3f81L    # 1.2339489841427634E175

    const/4 v6, 0x1

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->removeImmediately()V

    return v0
.end method

.method public removeImmediately()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mRemoveExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mScheduledRunnable:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    iget-object v1, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mTaskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    if-ne v1, p0, :cond_0

    iget-object p0, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method
