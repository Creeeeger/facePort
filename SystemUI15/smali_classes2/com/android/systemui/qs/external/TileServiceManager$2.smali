.class public final Lcom/android/systemui/qs/external/TileServiceManager$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/external/TileServiceManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/TileServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager$2;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager$2;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBindRequested:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    const-string p0, "TileServiceManager"

    const-string v0, "Service not bound"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mBound:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mJustBound:Z

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceManager;->mStateManager:Lcom/android/systemui/qs/external/TileLifecycleManager;

    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v2, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/qs/external/TileLifecycleManager;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
