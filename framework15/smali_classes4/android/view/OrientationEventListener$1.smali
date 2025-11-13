.class Landroid/view/OrientationEventListener$1;
.super Ljava/lang/Object;
.source "OrientationEventListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/OrientationEventListener;


# direct methods
.method constructor blacklist <init>(Landroid/view/OrientationEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/OrientationEventListener$1;->this$0:Landroid/view/OrientationEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public whitelist onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v0, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/OrientationEventListener$1;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v0}, Landroid/view/OrientationEventListener;->-$$Nest$fgetmNotSupportReversePortrait(Landroid/view/OrientationEventListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/OrientationEventListener$1;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v0}, Landroid/view/OrientationEventListener;->-$$Nest$fgetmTableMode(Landroid/view/OrientationEventListener;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OrientationEventListener"

    const-string/jumbo v3, "onOrientationChanged 0"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/view/OrientationEventListener$1;->this$0:Landroid/view/OrientationEventListener;

    invoke-virtual {v0, v1}, Landroid/view/OrientationEventListener;->onOrientationChanged(I)V

    iget-object v0, p0, Landroid/view/OrientationEventListener$1;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v0, v2}, Landroid/view/OrientationEventListener;->-$$Nest$fputmTableMode(Landroid/view/OrientationEventListener;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/OrientationEventListener$1;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v0, v1}, Landroid/view/OrientationEventListener;->-$$Nest$fputmTableMode(Landroid/view/OrientationEventListener;Z)V

    :cond_1
    :goto_0
    return-void
.end method
