.class public final Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DEFAULT_PROPS:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;


# instance fields
.field public final fingerprintPropsInternal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final fingerprintSensor:Lkotlinx/coroutines/flow/SafeFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v9, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    sget-object v0, Landroid/hardware/biometrics/SensorLocationInternal;->DEFAULT:Landroid/hardware/biometrics/SensorLocationInternal;

    const-string v1, "DEFAULT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(IIILjava/util/List;IZZLjava/util/List;)V

    sput-object v9, Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl;->DEFAULT_PROPS:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 2

    const-string v0, "backgroundDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl$fingerprintPropsInternal$1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl$fingerprintPropsInternal$1;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Landroid/hardware/fingerprint/FingerprintManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p1

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    sget-object v0, Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl;->DEFAULT_PROPS:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-static {p1, p3, p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    new-instance p2, Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl$special$$inlined$transform$1;

    invoke-direct {p2, p1, v1}, Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl$special$$inlined$transform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)V

    new-instance p1, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p1, p2}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl;->fingerprintSensor:Lkotlinx/coroutines/flow/SafeFlow;

    return-void
.end method
