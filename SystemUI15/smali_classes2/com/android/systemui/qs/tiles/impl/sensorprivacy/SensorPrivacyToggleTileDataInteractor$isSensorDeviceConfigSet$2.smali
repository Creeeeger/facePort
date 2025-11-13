.class final Lcom/android/systemui/qs/tiles/impl/sensorprivacy/SensorPrivacyToggleTileDataInteractor$isSensorDeviceConfigSet$2;
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
.field label:I

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/sensorprivacy/SensorPrivacyToggleTileDataInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/sensorprivacy/SensorPrivacyToggleTileDataInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/tiles/impl/sensorprivacy/SensorPrivacyToggleTileDataInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/SensorPrivacyToggleTileDataInteractor$isSensorDeviceConfigSet$2;->this$0:Lcom/android/systemui/qs/tiles/impl/sensorprivacy/SensorPrivacyToggleTileDataInteractor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/SensorPrivacyToggleTileDataInteractor$isSensorDeviceConfigSet$2;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/SensorPrivacyToggleTileDataInteractor$isSensorDeviceConfigSet$2;->this$0:Lcom/android/systemui/qs/tiles/impl/sensorprivacy/SensorPrivacyToggleTileDataInteractor;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/SensorPrivacyToggleTileDataInteractor$isSensorDeviceConfigSet$2;-><init>(Lcom/android/systemui/qs/tiles/impl/sensorprivacy/SensorPrivacyToggleTileDataInteractor;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/SensorPrivacyToggleTileDataInteractor$isSensorDeviceConfigSet$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/SensorPrivacyToggleTileDataInteractor$isSensorDeviceConfigSet$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/SensorPrivacyToggleTileDataInteractor$isSensorDeviceConfigSet$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/SensorPrivacyToggleTileDataInteractor$isSensorDeviceConfigSet$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/SensorPrivacyToggleTileDataInteractor$isSensorDeviceConfigSet$2;->this$0:Lcom/android/systemui/qs/tiles/impl/sensorprivacy/SensorPrivacyToggleTileDataInteractor;

    iget v0, p1, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/SensorPrivacyToggleTileDataInteractor;->sensorId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    if-eq v0, p1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "camera_toggle_enabled"

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDeviceConfigName: unexpected sensorId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "mic_toggle_enabled"

    :goto_0
    const-string v1, "privacy"

    invoke-static {v1, v0, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/SensorPrivacyToggleTileDataInteractor$isSensorDeviceConfigSet$2;->this$0:Lcom/android/systemui/qs/tiles/impl/sensorprivacy/SensorPrivacyToggleTileDataInteractor;

    iget p0, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/SensorPrivacyToggleTileDataInteractor;->sensorId:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isDeviceConfigSet for sensorId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": Defaulting to true due to exception. "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SensorPrivacyToggleTileException"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
