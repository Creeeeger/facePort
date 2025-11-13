.class public final Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepository;


# static fields
.field public static final DEFAULT_PROPS:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field public static final UNINITIALIZED_PROPS:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final propertiesInitialized:Lkotlinx/coroutines/flow/Flow;

.field public final props:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final sensorId:Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$1;

.field public final sensorLocations:Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$4;

.field public final sensorType:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final strength:Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$2;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    sget-object v11, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    sget-object v1, Landroid/hardware/biometrics/SensorLocationInternal;->DEFAULT:Landroid/hardware/biometrics/SensorLocationInternal;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v0

    move-object v6, v11

    invoke-direct/range {v2 .. v10}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(IIILjava/util/List;IZZLjava/util/List;)V

    sput-object v0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;->UNINITIALIZED_PROPS:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    new-instance v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, v0

    move-object v5, v11

    invoke-direct/range {v1 .. v9}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(IIILjava/util/List;IZZLjava/util/List;)V

    sput-object v0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;->DEFAULT_PROPS:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p3, p0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;->fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget-object p2, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance p3, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$props$1;-><init>(Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    sget-object v2, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;->UNINITIALIZED_PROPS:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-static {p2, p1, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;->props:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$1;

    invoke-direct {v1, p2}, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v2, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$2;

    invoke-direct {v2, p2}, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v2, p0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;->strength:Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$2;

    new-instance v3, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$3;

    invoke-direct {v3, p2}, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const/4 v4, 0x3

    invoke-static {p3, v4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p3

    iget-object v4, p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v4, v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    invoke-static {v4}, Lcom/android/systemui/biometrics/shared/model/FingerprintSensorTypeKt;->toSensorType(I)Lcom/android/systemui/biometrics/shared/model/FingerprintSensorType;

    move-result-object v4

    invoke-static {v3, p1, p3, v4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;->sensorType:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$4;

    invoke-direct {p3, p2}, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p3, p0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;->sensorLocations:Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$4;

    new-instance v3, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$5;

    invoke-direct {v3, p2}, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$propertiesInitialized$2;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$propertiesInitialized$2;-><init>(Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v4, p2, v3}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$6;

    invoke-direct {p2, v1}, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$6;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v1, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$propertiesInitialized$4;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$propertiesInitialized$4;-><init>(Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v5, v1, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$7;

    invoke-direct {p2, p3}, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$7;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p3, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$propertiesInitialized$6;

    invoke-direct {p3, p0, v0}, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$propertiesInitialized$6;-><init>(Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v6, p3, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$8;

    invoke-direct {p2, p1}, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$8;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$propertiesInitialized$8;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$propertiesInitialized$8;-><init>(Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v7, p1, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$9;

    invoke-direct {p1, v2}, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$special$$inlined$map$9;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$propertiesInitialized$10;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$propertiesInitialized$10;-><init>(Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v8, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v8, p2, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance v9, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$propertiesInitialized$11;

    invoke-direct {v9, v0}, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl$propertiesInitialized$11;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/FingerprintPropertyRepositoryImpl;->propertiesInitialized:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
