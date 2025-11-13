.class public final Lcom/android/systemui/settings/brightness/BrightnessController$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/brightness/BrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/brightness/BrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/BrightnessController$5;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$5;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-boolean v0, v0, Lcom/android/systemui/settings/brightness/BrightnessController;->mIsVrModeEnabled:Z

    iget-object v1, p0, Lcom/android/systemui/settings/brightness/BrightnessController$5;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object v1, v1, Lcom/android/systemui/settings/brightness/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/settings/brightness/BrightnessController$5;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget v3, v1, Landroid/hardware/display/BrightnessInfo;->brightnessMaximum:F

    iput v3, v2, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMax:F

    iget v3, v1, Landroid/hardware/display/BrightnessInfo;->brightnessMinimum:F

    iput v3, v2, Lcom/android/systemui/settings/brightness/BrightnessController;->mBrightnessMin:F

    iget v1, v1, Landroid/hardware/display/BrightnessInfo;->brightness:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController$5;->this$0:Lcom/android/systemui/settings/brightness/BrightnessController;

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/BrightnessController;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
