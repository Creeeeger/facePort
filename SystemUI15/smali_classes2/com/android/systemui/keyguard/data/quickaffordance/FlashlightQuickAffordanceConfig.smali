.class public final Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;


# instance fields
.field public final context:Landroid/content/Context;

.field public final flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field public final lockScreenState:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    sget-object p1, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance p2, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig$lockScreenState$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig$lockScreenState$1;-><init>(Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;->lockScreenState:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;->getPickerIconResourceId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "Flashlight"

    return-object p0
.end method

.method public final getLockScreenState()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;->lockScreenState:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final getPanelIconTransitionDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;->context:Landroid/content/Context;

    if-eqz p1, :cond_0

    const p1, 0x7f0807a2

    goto :goto_0

    :cond_0
    const p1, 0x7f0807a3

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public final getPickerIconResourceId()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0807a3

    goto :goto_0

    :cond_0
    const p0, 0x7f0807a2

    :goto_0
    return p0
.end method

.method public final getPickerScreenState(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$PickerScreenState$Default;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$PickerScreenState$Default;-><init>(Landroid/content/Intent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$PickerScreenState$UnavailableOnDevice;->INSTANCE:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$PickerScreenState$UnavailableOnDevice;

    :goto_0
    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mHasFlashlight:Z

    return p0
.end method

.method public final isTaskEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public final onTriggered(Lcom/android/systemui/animation/Expandable;)Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult;
    .locals 4

    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getKeyguardBatteryStatus()Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    move-result-object p1

    iget v0, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;->flashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->isPluggedIn()Z

    move-result p1

    if-nez p1, :cond_0

    move-object p1, v3

    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;->context:Landroid/content/Context;

    const p1, 0x7f1306d3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    check-cast v3, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlight(Z)V

    :goto_0
    sget-object p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult$Handled;->INSTANCE:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult$Handled;

    return-object p0
.end method

.method public final pickerName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/FlashlightQuickAffordanceConfig;->context:Landroid/content/Context;

    const v0, 0x7f130efd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
