.class Landroid/widget/Chronometer$1;
.super Ljava/lang/Object;
.source "Chronometer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Chronometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/Chronometer;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Chronometer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    iget-object v0, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    invoke-static {v0}, Landroid/widget/Chronometer;->-$$Nest$fgetmRequestedTickTime(Landroid/widget/Chronometer;)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    invoke-static {v0}, Landroid/widget/Chronometer;->-$$Nest$fgetmRequestedTickTime(Landroid/widget/Chronometer;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    invoke-static {v0}, Landroid/widget/Chronometer;->-$$Nest$fgetmPlaySpeed(Landroid/widget/Chronometer;)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    invoke-static {v0}, Landroid/widget/Chronometer;->-$$Nest$fgetmPlaySpeed(Landroid/widget/Chronometer;)F

    move-result v0

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e8

    :goto_0
    iget-object v2, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    invoke-static {v2}, Landroid/widget/Chronometer;->-$$Nest$fgetmRunning(Landroid/widget/Chronometer;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/widget/Chronometer;->-$$Nest$mupdateText(Landroid/widget/Chronometer;J)V

    iget-object v2, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    invoke-virtual {v2}, Landroid/widget/Chronometer;->dispatchChronometerTick()V

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    iget-object v2, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    invoke-static {v2}, Landroid/widget/Chronometer;->-$$Nest$fgetmTickRunnable(Landroid/widget/Chronometer;)Ljava/lang/Runnable;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Chronometer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/widget/Chronometer$1;->this$0:Landroid/widget/Chronometer;

    invoke-static {v1}, Landroid/widget/Chronometer;->-$$Nest$mpostTickOnNextSecond(Landroid/widget/Chronometer;)V

    :cond_3
    :goto_1
    return-void
.end method
