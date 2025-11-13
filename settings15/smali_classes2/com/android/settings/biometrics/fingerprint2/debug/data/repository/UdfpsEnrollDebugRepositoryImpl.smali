.class public final Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/biometrics/fingerprint2/domain/interactor/FingerprintEnrollInteractor;
.implements Lcom/android/settings/biometrics/fingerprint2/data/repository/SimulatedTouchEventsRepository;


# static fields
.field public static final sensorProps:Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;

.field public static final sensorRect:Landroid/graphics/Rect;


# instance fields
.field public final fingerprintSensor:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

.field public final touchExplorationDebug:Lkotlinx/coroutines/flow/SafeFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lkotlin/Pair;

    const/16 v1, 0x21c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x6b1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/16 v9, 0x64

    sub-int/2addr v1, v9

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v3, v9

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/2addr v0, v9

    invoke-direct {v8, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v8, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;->sensorRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;

    sget-object v5, Lcom/android/systemui/biometrics/shared/model/SensorStrength;->STRONG:Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    sget-object v7, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;->UDFPS_OPTICAL:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    const/4 v4, 0x1

    const/4 v6, 0x5

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;-><init>(ILcom/android/systemui/biometrics/shared/model/SensorStrength;ILcom/android/systemui/biometrics/shared/model/FingerprintSensorType;Landroid/graphics/Rect;I)V

    sput-object v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;->sensorProps:Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl$touchExplorationDebug$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;->touchExplorationDebug:Lkotlinx/coroutines/flow/SafeFlow;

    new-instance p0, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    sget-object v0, Lcom/android/settings/biometrics/fingerprint2/debug/data/repository/UdfpsEnrollDebugRepositoryImpl;->sensorProps:Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    return-void
.end method
