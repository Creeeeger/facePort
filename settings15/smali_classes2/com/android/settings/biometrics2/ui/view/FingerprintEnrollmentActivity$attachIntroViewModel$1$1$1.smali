.class public final synthetic Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$attachIntroViewModel$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# instance fields
.field public final synthetic $tmp0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$attachIntroViewModel$1$1$1;->$tmp0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroAction;

    sget p2, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$attachIntroViewModel$1$1$1;->$tmp0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onIntroAction("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FingerprintEnrollmentActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/activity/result/ActivityResult;

    invoke-direct {p1, v0, p2}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->onSetActivityResult(Landroidx/activity/result/ActivityResult;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->startFindSensorFragment()V

    goto :goto_0

    :cond_2
    new-instance p1, Landroidx/activity/result/ActivityResult;

    invoke-direct {p1, v0, p2}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;->onSetActivityResult(Landroidx/activity/result/ActivityResult;)V

    :goto_0
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlinx/coroutines/flow/FlowCollector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$attachIntroViewModel$1$1$1;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p0

    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final getFunctionDelegate()Lkotlin/Function;
    .locals 8

    new-instance v7, Lkotlin/jvm/internal/AdaptedFunctionReference;

    const-string v5, "onIntroAction(Lcom/android/settings/biometrics2/ui/viewmodel/FingerprintEnrollIntroAction;)V"

    const/4 v6, 0x4

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$attachIntroViewModel$1$1$1;->$tmp0:Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;

    const-class v3, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity;

    const-string v4, "onIntroAction"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/biometrics2/ui/view/FingerprintEnrollmentActivity$attachIntroViewModel$1$1$1;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
