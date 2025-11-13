.class Landroid/view/ViewRootImpl$12;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->registerCallbacksForSync(ZLandroid/window/SurfaceSyncer$SyncBufferCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;

.field final synthetic blacklist val$syncBuffer:Z

.field final synthetic blacklist val$syncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/window/SurfaceSyncer$SyncBufferCallback;Z)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 13351
    iput-object p1, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$12;->val$syncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    iput-boolean p3, p0, Landroid/view/ViewRootImpl$12;->val$syncBuffer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onFrameDraw$0$android-view-ViewRootImpl$12(JLandroid/window/SurfaceSyncer$SyncBufferCallback;ZZ)V
    .locals 3
    .param p1, "frame"    # J
    .param p3, "syncBufferCallback"    # Landroid/window/SurfaceSyncer$SyncBufferCallback;
    .param p4, "syncBuffer"    # Z
    .param p5, "didProduceBuffer"    # Z

    .line 13389
    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetDEBUG_BLAST()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13390
    iget-object v0, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received frameCommittedCallback lastAttemptedDrawFrameNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " didProduceBuffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13398
    :cond_0
    const/4 v0, 0x0

    if-nez p5, :cond_1

    .line 13399
    iget-object v1, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(Ljava/util/function/Consumer;)V

    .line 13405
    iget-object v0, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v0

    .line 13406
    invoke-virtual {v0, p1, p2}, Landroid/graphics/BLASTBufferQueue;->gatherPendingTransactions(J)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 13405
    invoke-interface {p3, v0}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    .line 13407
    return-void

    .line 13413
    :cond_1
    if-nez p4, :cond_2

    .line 13414
    invoke-interface {p3, v0}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    .line 13416
    :cond_2
    return-void
.end method

.method public blacklist onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    .locals 9
    .param p1, "syncResult"    # I
    .param p2, "frame"    # J

    .line 13360
    iget-object v0, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    iput-wide p2, v0, Landroid/view/ViewRootImpl;->mFrameNumber:J

    .line 13363
    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetDEBUG_BLAST()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13364
    iget-object v0, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received frameDrawingCallback syncResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " frameNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13373
    :cond_0
    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_1

    .line 13375
    iget-object v0, p0, Landroid/view/ViewRootImpl$12;->val$syncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    iget-object v1, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v1

    .line 13376
    invoke-virtual {v1, p2, p3}, Landroid/graphics/BLASTBufferQueue;->gatherPendingTransactions(J)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 13375
    invoke-interface {v0, v1}, Landroid/window/SurfaceSyncer$SyncBufferCallback;->onBufferReady(Landroid/view/SurfaceControl$Transaction;)V

    .line 13377
    const/4 v0, 0x0

    return-object v0

    .line 13380
    :cond_1
    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetDEBUG_BLAST()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13381
    iget-object v0, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setting up sync and frameCommitCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13384
    :cond_2
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$12;->val$syncBuffer:Z

    if-eqz v0, :cond_3

    .line 13385
    iget-object v0, p0, Landroid/view/ViewRootImpl$12;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl$12;->val$syncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/ViewRootImpl$12$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/view/ViewRootImpl$12$$ExternalSyntheticLambda0;-><init>(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V

    invoke-virtual {v0, v2}, Landroid/graphics/BLASTBufferQueue;->syncNextTransaction(Ljava/util/function/Consumer;)V

    .line 13388
    :cond_3
    iget-object v7, p0, Landroid/view/ViewRootImpl$12;->val$syncBufferCallback:Landroid/window/SurfaceSyncer$SyncBufferCallback;

    iget-boolean v8, p0, Landroid/view/ViewRootImpl$12;->val$syncBuffer:Z

    new-instance v0, Landroid/view/ViewRootImpl$12$$ExternalSyntheticLambda1;

    move-object v3, v0

    move-object v4, p0

    move-wide v5, p2

    invoke-direct/range {v3 .. v8}, Landroid/view/ViewRootImpl$12$$ExternalSyntheticLambda1;-><init>(Landroid/view/ViewRootImpl$12;JLandroid/window/SurfaceSyncer$SyncBufferCallback;Z)V

    return-object v0
.end method

.method public blacklist onFrameDraw(J)V
    .locals 0
    .param p1, "frame"    # J

    .line 13354
    return-void
.end method
