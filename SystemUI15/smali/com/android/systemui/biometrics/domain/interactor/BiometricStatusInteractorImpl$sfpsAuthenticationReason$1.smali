.class final Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl$sfpsAuthenticationReason$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl$sfpsAuthenticationReason$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/biometrics/shared/model/AuthenticationReason;

    check-cast p2, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl$sfpsAuthenticationReason$1;

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl$sfpsAuthenticationReason$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl$sfpsAuthenticationReason$1;-><init>(Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl$sfpsAuthenticationReason$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl$sfpsAuthenticationReason$1;->L$1:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl$sfpsAuthenticationReason$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl$sfpsAuthenticationReason$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl$sfpsAuthenticationReason$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/biometrics/shared/model/AuthenticationReason;

    iget-object v0, p0, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl$sfpsAuthenticationReason$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;->POWER_BUTTON:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl$sfpsAuthenticationReason$1;->this$0:Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl;

    iget-object p0, p0, Lcom/android/systemui/biometrics/domain/interactor/BiometricStatusInteractorImpl;->activityTaskManager:Landroid/app/ActivityTaskManager;

    sget-object v0, Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$DeviceEntryAuthentication;->INSTANCE:Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$DeviceEntryAuthentication;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$SettingsAuthentication;

    sget-object v1, Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$SettingsOperations;->OTHER:Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$SettingsOperations;

    invoke-direct {v0, v1}, Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$SettingsAuthentication;-><init>(Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$SettingsOperations;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    const-string p0, ""

    :cond_2
    const-string v0, "com.android.settings.biometrics.fingerprint.FingerprintSettings"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    :goto_1
    sget-object p1, Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$NotRunning;->INSTANCE:Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$NotRunning;

    :cond_4
    return-object p1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
