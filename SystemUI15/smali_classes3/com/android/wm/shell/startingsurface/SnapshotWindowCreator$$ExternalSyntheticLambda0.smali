.class public final synthetic Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;

    iput p2, p0, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;

    iget p0, p0, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    iget-object v1, v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mTmpRemovalInfo:Landroid/window/StartingWindowRemovalInfo;

    iput p0, v1, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->removeWindow(Landroid/window/StartingWindowRemovalInfo;Z)V

    return-void
.end method
