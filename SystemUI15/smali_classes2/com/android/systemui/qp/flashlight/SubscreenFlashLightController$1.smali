.class public final Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$1;->this$0:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFolderStateChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$1;->this$0:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;

    if-nez p1, :cond_1

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->startFlashActivity()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mWakefulnessObserver:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mFlashLightPresentationView:Lcom/android/systemui/qp/SubscreenQSControllerContract$FlashLightView;

    if-eqz p1, :cond_2

    check-cast p1, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;

    invoke-virtual {p1}, Lcom/android/systemui/qp/flashlight/SubroomFlashLightSettingsActivity;->finishFlashLightActivity()V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mWakefulnessLifeCycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController;->mWakefulnessObserver:Lcom/android/systemui/qp/flashlight/SubscreenFlashLightController$2;

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method
