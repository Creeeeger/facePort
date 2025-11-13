.class Landroid/view/ViewRootImpl$10;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/graphics/HardwareRenderer$FrameDrawingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->registerCallbackForPendingTransactions()V
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

    .line 5256
    iput-object p1, p0, Landroid/view/ViewRootImpl$10;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onFrameDraw$0$android-view-ViewRootImpl$10(JZ)V
    .locals 1
    .param p1, "frame"    # J
    .param p3, "didProduceBuffer"    # Z

    .line 5266
    if-nez p3, :cond_0

    .line 5267
    iget-object v0, p0, Landroid/view/ViewRootImpl$10;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/BLASTBufferQueue;->applyPendingTransactions(J)V

    .line 5269
    :cond_0
    return-void
.end method

.method public blacklist onFrameDraw(IJ)Landroid/graphics/HardwareRenderer$FrameCommitCallback;
    .locals 1
    .param p1, "syncResult"    # I
    .param p2, "frame"    # J

    .line 5259
    and-int/lit8 v0, p1, 0x6

    if-eqz v0, :cond_0

    .line 5261
    iget-object v0, p0, Landroid/view/ViewRootImpl$10;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmBlastBufferQueue(Landroid/view/ViewRootImpl;)Landroid/graphics/BLASTBufferQueue;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/graphics/BLASTBufferQueue;->applyPendingTransactions(J)V

    .line 5262
    const/4 v0, 0x0

    return-object v0

    .line 5265
    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$10$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3}, Landroid/view/ViewRootImpl$10$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewRootImpl$10;J)V

    return-object v0
.end method

.method public blacklist onFrameDraw(J)V
    .locals 0
    .param p1, "frame"    # J

    .line 5274
    return-void
.end method
