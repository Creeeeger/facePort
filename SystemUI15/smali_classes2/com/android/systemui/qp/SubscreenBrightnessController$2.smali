.class public final Lcom/android/systemui/qp/SubscreenBrightnessController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$2;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$2;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    move-result-object v0

    const-string v1, "SubscreenBrightnessController"

    if-nez v0, :cond_0

    const-string p0, "info.brightness: null "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$2;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget v3, v0, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    iput v3, v2, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessMax:F

    iget v3, v0, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    iput v3, v2, Lcom/android/systemui/qp/SubscreenBrightnessController;->mBrightnessMin:F

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "info.brightness:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/hardware/display/BrightnessInfo;->brightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " info.brightnessMaximum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " info.brightnessMinimum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    invoke-static {v2, v3, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    iget v0, v0, Landroid/hardware/display/BrightnessInfo;->brightness:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$2;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mHandler:Lcom/android/systemui/qp/SubscreenBrightnessController$3;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
