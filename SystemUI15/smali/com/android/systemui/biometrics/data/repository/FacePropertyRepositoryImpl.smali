.class public final Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final cameraInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final cameraInfoList:Ljava/util/List;

.field public final cameraManager:Landroid/hardware/camera2/CameraManager;

.field public currentPhysicalCameraId:Ljava/lang/String;

.field public final defaultSensorLocation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final faceManager:Landroid/hardware/face/FaceManager;

.field public final sensorInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final sensorLocation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/hardware/face/FaceManager;Landroid/hardware/camera2/CameraManager;Lcom/android/systemui/biometrics/data/repository/DisplayStateRepository;Lcom/android/systemui/common/ui/data/repository/ConfigurationRepository;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->applicationContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p5, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->faceManager:Landroid/hardware/face/FaceManager;

    iput-object p6, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->cameraManager:Landroid/hardware/camera2/CameraManager;

    sget-object p4, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance p5, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$sensorInfo$1;

    const/4 p6, 0x0

    invoke-direct {p5, p0, p6}, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$sensorInfo$1;-><init>(Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p5}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    new-instance p5, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$sensorInfo$2;

    invoke-direct {p5, p6}, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$sensorInfo$2;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v0, p4, p5}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    sget-object p4, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p5, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    invoke-static {v0, p3, p5, p6}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p5

    iput-object p5, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->sensorInfo:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f1303f6

    const v2, 0x7f1303fa

    const v3, 0x7f030039

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->loadCameraInfo(III)Lcom/android/systemui/biometrics/data/repository/CameraInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const v1, 0x7f1303f7

    const v2, 0x7f1303f8

    const v3, 0x7f030040

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->loadCameraInfo(III)Lcom/android/systemui/biometrics/data/repository/CameraInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->cameraInfoList:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$cameraInfo$1;

    invoke-direct {v1, p0, p2, p6}, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$cameraInfo$1;-><init>(Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    const/4 v1, 0x3

    invoke-static {p4, v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/data/repository/CameraInfo;

    goto :goto_0

    :cond_2
    move-object v0, p6

    :goto_0
    invoke-static {p2, p3, v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0024

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/android/systemui/keyguard/shared/model/DevicePosture;->Companion:Lcom/android/systemui/keyguard/shared/model/DevicePosture$Companion;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/android/systemui/keyguard/shared/model/DevicePosture;->Companion:Lcom/android/systemui/keyguard/shared/model/DevicePosture$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/keyguard/shared/model/DevicePosture$Companion;->toPosture(I)Lcom/android/systemui/keyguard/shared/model/DevicePosture;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    :goto_1
    new-instance p1, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$special$$inlined$map$1;

    invoke-direct {p1, p2}, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p4, v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p2

    invoke-static {p1, p3, p2, p6}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->defaultSensorLocation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$special$$inlined$flatMapLatest$1;

    invoke-direct {p1, p6, p0, p7, p8}, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;Lcom/android/systemui/biometrics/data/repository/DisplayStateRepository;Lcom/android/systemui/common/ui/data/repository/ConfigurationRepository;)V

    invoke-static {p5, p1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    invoke-static {p4, v1}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p2

    invoke-static {p1, p3, p2, p6}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->sensorLocation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final loadCameraInfo(III)Lcom/android/systemui/biometrics/data/repository/CameraInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    array-length p3, p0

    const/4 v0, 0x2

    if-ge p3, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/graphics/Point;

    const/4 p3, 0x0

    aget p3, p0, p3

    const/4 v0, 0x1

    aget p0, p0, v0

    invoke-direct {v1, p3, p0}, Landroid/graphics/Point;-><init>(II)V

    :goto_0
    new-instance p0, Lcom/android/systemui/biometrics/data/repository/CameraInfo;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/biometrics/data/repository/CameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Point;)V

    return-object p0
.end method
