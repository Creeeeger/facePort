.class public final Lcom/android/systemui/keyguard/ui/binder/InWindowLauncherAnimationViewBinder$bind$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $inWindowLauncherUnlockAnimationManager:Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/InWindowLauncherAnimationViewBinder$bind$1$1;->$inWindowLauncherUnlockAnimationManager:Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/InWindowLauncherAnimationViewBinder$bind$1$1;->$inWindowLauncherUnlockAnimationManager:Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->launcherAnimationController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;

    if-eqz p1, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->preparedForUnlock:Z

    if-nez v2, :cond_5

    iput-boolean p2, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->preparedForUnlock:Z

    iput-object v1, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->manualUnlockAmount:Ljava/lang/Float;

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0, v0, p0}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;->prepareForUnlock(IZLandroid/graphics/Rect;)V

    goto :goto_3

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->preparedForUnlock:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->interactor:Lcom/android/systemui/keyguard/domain/interactor/InWindowLauncherUnlockAnimationInteractor;

    iget-object p1, p1, Lcom/android/systemui/keyguard/domain/interactor/InWindowLauncherUnlockAnimationInteractor;->startedUnlockAnimation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->manualUnlockAmount:Ljava/lang/Float;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, p2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManagerKt;->TAG:Ljava/lang/String;

    const-string v2, "Called prepareForUnlock(), but not playUnlockAnimation(). Failing-safe by calling setUnlockAmount(1f)"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->preparedForUnlock:Z

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->launcherAnimationController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;

    if-eqz p1, :cond_4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->manualUnlockAmount:Ljava/lang/Float;

    invoke-virtual {p1, v3, p2}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;->setUnlockAmount(FZ)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    sget-object p1, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManagerKt;->TAG:Ljava/lang/String;

    const-string v2, "Unlock has ended, but manual unlock amount != 1f. Failing-safe by calling setUnlockAmount(1f)"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->preparedForUnlock:Z

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->launcherAnimationController:Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;

    if-eqz p1, :cond_4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->manualUnlockAmount:Ljava/lang/Float;

    invoke-virtual {p1, v3, p2}, Lcom/android/systemui/shared/system/smartspace/ILauncherUnlockAnimationController$Stub$Proxy;->setUnlockAmount(FZ)V

    :cond_4
    :goto_2
    iput-object v1, p0, Lcom/android/systemui/keyguard/ui/view/InWindowLauncherUnlockAnimationManager;->manualUnlockAmount:Ljava/lang/Float;

    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
