.class final Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$areBiometricsEnabledForDeviceEntryFromUserSetting$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $biometricManager:Landroid/hardware/biometrics/BiometricManager;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/BiometricManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricManager;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$areBiometricsEnabledForDeviceEntryFromUserSetting$1;->$biometricManager:Landroid/hardware/biometrics/BiometricManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$areBiometricsEnabledForDeviceEntryFromUserSetting$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$areBiometricsEnabledForDeviceEntryFromUserSetting$1;->$biometricManager:Landroid/hardware/biometrics/BiometricManager;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$areBiometricsEnabledForDeviceEntryFromUserSetting$1;-><init>(Landroid/hardware/biometrics/BiometricManager;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$areBiometricsEnabledForDeviceEntryFromUserSetting$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$areBiometricsEnabledForDeviceEntryFromUserSetting$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$areBiometricsEnabledForDeviceEntryFromUserSetting$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$areBiometricsEnabledForDeviceEntryFromUserSetting$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$areBiometricsEnabledForDeviceEntryFromUserSetting$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$areBiometricsEnabledForDeviceEntryFromUserSetting$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$areBiometricsEnabledForDeviceEntryFromUserSetting$1$callback$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$areBiometricsEnabledForDeviceEntryFromUserSetting$1$callback$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    iget-object v3, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$areBiometricsEnabledForDeviceEntryFromUserSetting$1;->$biometricManager:Landroid/hardware/biometrics/BiometricManager;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Landroid/hardware/biometrics/BiometricManager;->registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V

    :cond_2
    sget-object v1, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$areBiometricsEnabledForDeviceEntryFromUserSetting$1$1;->INSTANCE:Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$areBiometricsEnabledForDeviceEntryFromUserSetting$1$1;

    iput v2, p0, Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepositoryImpl$areBiometricsEnabledForDeviceEntryFromUserSetting$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
