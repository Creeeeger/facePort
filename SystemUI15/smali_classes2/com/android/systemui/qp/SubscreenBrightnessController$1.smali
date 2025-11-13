.class public final Lcom/android/systemui/qp/SubscreenBrightnessController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$1;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$1;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iput p1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplayId:I

    iget-object p1, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplay:Landroid/view/Display;

    const-string v0, "SubscreenBrightnessController"

    if-nez p1, :cond_0

    const-string p0, "mDisplay is null "

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "info is null "

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "info.brightness:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/hardware/display/BrightnessInfo;->brightness:F

    invoke-static {v1, v2, v0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    sget-boolean v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mTracking:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$1;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget v2, v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightness:F

    iget p1, p1, Landroid/hardware/display/BrightnessInfo;->brightness:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_2

    iput p1, v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightness:F

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onDisplayChanged mBrightness:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$1;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget v1, v1, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightness:F

    invoke-static {p1, v1, v0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$1;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mUpdateSliderRunnable:Lcom/android/systemui/qp/SubscreenBrightnessController$2;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
