.class public final Lcom/android/wm/shell/common/LaunchAdjacentController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public container:Landroid/window/WindowContainerToken;

.field public launchAdjacentEnabled:Z

.field public final syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/LaunchAdjacentController;->syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/common/LaunchAdjacentController;->launchAdjacentEnabled:Z

    return-void
.end method
