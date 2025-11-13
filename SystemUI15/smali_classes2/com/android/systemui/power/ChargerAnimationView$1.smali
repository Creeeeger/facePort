.class public final Lcom/android/systemui/power/ChargerAnimationView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/ChargerAnimationView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/ChargerAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "PowerUI.ChargerAnimationView"

    const-string v0, "Animation Cancel"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDozeChargingHelper:Lcom/android/systemui/power/DozeChargingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/power/DozeChargingHelper;->restoreDisplayStateWhenDozeCharging()V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string p1, "PowerUI.ChargerAnimationView"

    const-string v0, "Animation Ended"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    iget-object p1, p1, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationListener:Lcom/android/systemui/power/ChargerAnimationListener;

    check-cast p1, Lcom/android/systemui/power/SecPowerUI;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "PowerUI"

    const-string v1, "onChargerAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/systemui/power/SecPowerUI;->removeChargerView()V

    iget-object v0, p1, Lcom/android/systemui/power/SecPowerUI;->mHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/systemui/power/SecPowerUI;->mRestoreDisplayStateTask:Lcom/android/systemui/power/SecPowerUI$5;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView$1;->this$0:Lcom/android/systemui/power/ChargerAnimationView;

    iget-object p0, p0, Lcom/android/systemui/power/ChargerAnimationView;->mDozeChargingHelper:Lcom/android/systemui/power/DozeChargingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/power/DozeChargingHelper;->restoreDisplayStateWhenDozeCharging()V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
