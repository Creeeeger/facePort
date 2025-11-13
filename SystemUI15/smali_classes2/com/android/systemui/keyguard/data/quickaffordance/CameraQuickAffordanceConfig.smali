.class public final Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final cameraGestureHelper:Ldagger/Lazy;

.field public final context:Landroid/content/Context;

.field public final devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ldagger/Lazy;Lcom/android/systemui/settings/UserTracker;Landroid/app/admin/DevicePolicyManager;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Landroid/app/admin/DevicePolicyManager;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig;->packageManager:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig;->cameraGestureHelper:Ldagger/Lazy;

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p5, p0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iput-object p6, p0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "camera"

    return-object p0
.end method

.method public final getLockScreenState()Lkotlinx/coroutines/flow/Flow;
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$lockScreenState$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$lockScreenState$1;-><init>(Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig;Lkotlin/coroutines/Continuation;)V

    new-instance p0, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    return-object p0
.end method

.method public final getPickerIconResourceId()I
    .locals 0

    const p0, 0x7f080852

    return p0
.end method

.method public final getPickerScreenState(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$getPickerScreenState$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$getPickerScreenState$1;

    iget v1, v0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$getPickerScreenState$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$getPickerScreenState$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$getPickerScreenState$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$getPickerScreenState$1;-><init>(Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$getPickerScreenState$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$getPickerScreenState$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$getPickerScreenState$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$getPickerScreenState$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$getPickerScreenState$1;->label:I

    iget-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig;->packageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.camera.any"

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$isLaunchable$2;

    invoke-direct {p1, p0, v3}, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$isLaunchable$2;-><init>(Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig;Lkotlin/coroutines/Continuation;)V

    iget-object v2, p0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v2, p1, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    iput-object v3, v0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$getPickerScreenState$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig$getPickerScreenState$1;->label:I

    invoke-super {p0, v0}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getPickerScreenState(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    return-object p1

    :cond_7
    sget-object p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$PickerScreenState$UnavailableOnDevice;->INSTANCE:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$PickerScreenState$UnavailableOnDevice;

    return-object p0
.end method

.method public final onTriggered(Lcom/android/systemui/animation/Expandable;)Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig;->cameraGestureHelper:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/camera/CameraGestureHelper;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/systemui/camera/CameraGestureHelper;->launchCamera(I)V

    sget-object p0, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult$Handled;->INSTANCE:Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$OnTriggeredResult$Handled;

    return-object p0
.end method

.method public final pickerName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/CameraQuickAffordanceConfig;->context:Landroid/content/Context;

    const v0, 0x7f130060

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
