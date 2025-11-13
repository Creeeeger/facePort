.class Landroid/view/ViewRootImpl$13;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/window/SurfaceSyncer$SyncTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 13421
    iput-object p1, p0, Landroid/view/ViewRootImpl$13;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onSyncComplete$0$android-view-ViewRootImpl$13()V
    .locals 3

    .line 13433
    iget-object v0, p0, Landroid/view/ViewRootImpl$13;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmNumSyncsInProgress(Landroid/view/ViewRootImpl;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-$$Nest$fputmNumSyncsInProgress(Landroid/view/ViewRootImpl;I)V

    if-nez v1, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$13;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 13434
    invoke-static {v2}, Landroid/graphics/HardwareRenderer;->setRtAnimationsEnabled(Z)V

    .line 13436
    :cond_0
    return-void
.end method

.method public blacklist onReadyToSync(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .locals 1
    .param p1, "syncBufferCallback"    # Landroid/window/SurfaceSyncer$SyncBufferCallback;

    .line 13424
    iget-object v0, p0, Landroid/view/ViewRootImpl$13;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mreadyToSync(Landroid/view/ViewRootImpl;Landroid/window/SurfaceSyncer$SyncBufferCallback;)V

    .line 13425
    return-void
.end method

.method public blacklist onSyncComplete()V
    .locals 2

    .line 13429
    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetDEBUG_BLAST()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13430
    iget-object v0, p0, Landroid/view/ViewRootImpl$13;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSyncComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13432
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$13;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$13$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$13$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewRootImpl$13;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 13437
    return-void
.end method
