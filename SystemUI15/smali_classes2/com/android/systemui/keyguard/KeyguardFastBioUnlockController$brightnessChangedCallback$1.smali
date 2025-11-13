.class public final Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$brightnessChangedCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/DisplayTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$brightnessChangedCallback$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayChanged(I)V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$brightnessChangedCallback$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->Companion:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->defaultDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->defaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v2, v0, Landroid/hardware/display/BrightnessInfo;->brightness:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-ltz v4, :cond_2

    iget v4, v0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->updateBrightnessRunnable:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$updateBrightnessRunnable$1;

    iput p1, v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$updateBrightnessRunnable$1;->displayState:I

    const/high16 p1, -0x40800000    # -1.0f

    if-eqz v0, :cond_3

    iget v3, v0, Landroid/hardware/display/BrightnessInfo;->brightness:F

    goto :goto_1

    :cond_3
    move v3, p1

    :goto_1
    iput v3, v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$updateBrightnessRunnable$1;->brightness:F

    if-eqz v0, :cond_4

    iget p1, v0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    :cond_4
    iput p1, v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$updateBrightnessRunnable$1;->adjustedBrightness:F

    iput-boolean v1, v2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$updateBrightnessRunnable$1;->isAodBrightThanNormal:Z

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void
.end method
