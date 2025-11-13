.class public final Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;->this$0:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPowerKeyPressed()V
    .locals 2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    const/4 v1, 0x0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;->this$0:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->finishFlashLightActivity()V

    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;->this$0:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    iget-object v0, v0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    const-string v1, "onStartedGoingToSleep "

    const-string v2, "SubscreenFlashLightController"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;->onPowerKeyPressed()V

    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;->this$0:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    iget-object v0, v0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    const-string v1, "onStartedWakingUp "

    const-string v2, "SubscreenFlashLightController"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;->onPowerKeyPressed()V

    return-void
.end method
