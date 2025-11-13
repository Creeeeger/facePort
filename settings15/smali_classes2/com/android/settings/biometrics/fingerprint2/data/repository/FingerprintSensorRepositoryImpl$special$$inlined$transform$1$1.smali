.class public final Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl$special$$inlined$transform$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $$this$flow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl$special$$inlined$transform$1$1;->$$this$flow:Lkotlinx/coroutines/flow/FlowCollector;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p2, Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl$special$$inlined$transform$1$1$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl$special$$inlined$transform$1$1$1;

    iget v1, v0, Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl$special$$inlined$transform$1$1$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl$special$$inlined$transform$1$1$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl$special$$inlined$transform$1$1$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl$special$$inlined$transform$1$1$1;-><init>(Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl$special$$inlined$transform$1$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl$special$$inlined$transform$1$1$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl$special$$inlined$transform$1$1$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    const-string p2, "<this>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    const/4 v2, 0x2

    if-eqz p2, :cond_5

    if-eq p2, v3, :cond_4

    if-ne p2, v2, :cond_3

    sget-object p2, Lcom/android/systemui/biometrics/shared/model/SensorStrength;->STRONG:Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    :goto_1
    move-object v6, p2

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid SensorStrength value: "

    invoke-static {p2, p1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    sget-object p2, Lcom/android/systemui/biometrics/shared/model/SensorStrength;->WEAK:Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    goto :goto_1

    :cond_5
    sget-object p2, Lcom/android/systemui/biometrics/shared/model/SensorStrength;->CONVENIENCE:Lcom/android/systemui/biometrics/shared/model/SensorStrength;

    goto :goto_1

    :goto_2
    iget p2, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    if-eqz p2, :cond_b

    if-eq p2, v3, :cond_a

    if-eq p2, v2, :cond_9

    const/4 v2, 0x3

    if-eq p2, v2, :cond_8

    const/4 v2, 0x4

    if-eq p2, v2, :cond_7

    const/4 v2, 0x5

    if-ne p2, v2, :cond_6

    sget-object p2, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;->HOME_BUTTON:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    :goto_3
    move-object v8, p2

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid SensorType value: "

    invoke-static {p2, p1}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    sget-object p2, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;->POWER_BUTTON:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    goto :goto_3

    :cond_8
    sget-object p2, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;->UDFPS_OPTICAL:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    goto :goto_3

    :cond_9
    sget-object p2, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;->UDFPS_ULTRASONIC:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    goto :goto_3

    :cond_a
    sget-object p2, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;->REAR:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    goto :goto_3

    :cond_b
    sget-object p2, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;->UNKNOWN:Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    goto :goto_3

    :goto_4
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation()Landroid/hardware/biometrics/SensorLocationInternal;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/biometrics/SensorLocationInternal;->getRect()Landroid/graphics/Rect;

    move-result-object v9

    const-string p2, "getRect(...)"

    invoke-static {v9, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation()Landroid/hardware/biometrics/SensorLocationInternal;

    move-result-object p2

    iget v10, p2, Landroid/hardware/biometrics/SensorLocationInternal;->sensorRadius:I

    new-instance p2, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;

    iget v5, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget v7, p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    move-object v4, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/biometrics/shared/model/FingerprintSensor;-><init>(ILcom/android/systemui/biometrics/shared/model/SensorStrength;ILcom/android/systemui/biometrics/shared/model/FingerprintSensorType;Landroid/graphics/Rect;I)V

    iput v3, v0, Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl$special$$inlined$transform$1$1$1;->label:I

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/data/repository/FingerprintSensorRepositoryImpl$special$$inlined$transform$1$1;->$$this$flow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_c

    return-object v1

    :cond_c
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
