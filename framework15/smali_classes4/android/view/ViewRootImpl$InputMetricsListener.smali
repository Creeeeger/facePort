.class final Landroid/view/ViewRootImpl$InputMetricsListener;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InputMetricsListener"
.end annotation


# instance fields
.field public blacklist data:[J

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/ViewRootImpl$InputMetricsListener;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x17

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/view/ViewRootImpl$InputMetricsListener;->data:[J

    return-void
.end method


# virtual methods
.method public blacklist onFrameMetricsAvailable(I)V
    .locals 12

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMetricsListener;->data:[J

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    long-to-int v0, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$InputMetricsListener;->data:[J

    const/16 v2, 0x15

    aget-wide v8, v1, v2

    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-gtz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl$InputMetricsListener;->data:[J

    const/16 v2, 0x13

    aget-wide v10, v1, v2

    iget-object v1, p0, Landroid/view/ViewRootImpl$InputMetricsListener;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInputEventReceiver(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    cmp-long v1, v10, v8

    if-ltz v1, :cond_3

    sub-long v1, v10, v8

    long-to-double v1, v1

    const-wide v3, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v1, v3

    iget-object v3, p0, Landroid/view/ViewRootImpl$InputMetricsListener;->data:[J

    const/4 v4, 0x1

    aget-wide v3, v3, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not reporting timeline because gpuCompletedTime is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms ahead of presentTime. FRAME_TIMELINE_VSYNC_ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", INPUT_EVENT_ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ViewRootImpl"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v1, p0, Landroid/view/ViewRootImpl$InputMetricsListener;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInputEventReceiver(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    move-result-object v2

    move v3, v0

    move-wide v4, v10

    move-wide v6, v8

    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->reportTimeline(IJJ)V

    return-void
.end method
