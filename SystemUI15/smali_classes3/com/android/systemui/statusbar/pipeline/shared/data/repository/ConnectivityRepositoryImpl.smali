.class public final Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepository;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$Companion;

.field public static final DEFAULT_HIDDEN_ICONS_RESOURCE:I


# instance fields
.field public final connectivityManager:Landroid/net/ConnectivityManager;

.field public final connectivitySlots:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlots;

.field public final defaultConnections:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final defaultHiddenIcons:Ljava/util/Set;

.field public final defaultNetworkCapabilities:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final forceHiddenSlots:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final vcnSubId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->Companion:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$Companion;

    const v0, 0x7f03004e

    sput v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->DEFAULT_HIDDEN_ICONS_RESOURCE:I

    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlots;Landroid/content/Context;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/tuner/TunerService;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p1

    iput-object v4, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->connectivitySlots:Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlots;

    const-string v4, "ConnectivityRepository"

    move-object/from16 v5, p4

    invoke-virtual {v5, v4, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->DEFAULT_HIDDEN_ICONS_RESOURCE:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->Companion:Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$Companion;

    invoke-static {v5, v4, v1}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$Companion;->access$toSlotSet(Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$Companion;Ljava/util/List;Lcom/android/systemui/statusbar/pipeline/shared/data/model/ConnectivitySlots;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->defaultHiddenIcons:Ljava/util/Set;

    sget-object v4, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance v5, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$forceHiddenSlots$1;

    const/4 v6, 0x0

    move-object/from16 v7, p7

    invoke-direct {v5, v7, v2, p0, v6}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$forceHiddenSlots$1;-><init>(Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger;Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v7, 0x3

    invoke-static {v5, v7}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v8

    invoke-static {v4, v3, v8, v1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->forceHiddenSlots:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$defaultNetworkCapabilities$1;

    invoke-direct {v1, p0, v2, v6}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$defaultNetworkCapabilities$1;-><init>(Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    invoke-static {v5, v7}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lkotlinx/coroutines/flow/FlowKt;->shareIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;I)Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$1;

    invoke-direct {v4, v1}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$vcnSubId$2;

    invoke-direct {v5, v2, v6}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$vcnSubId$2;-><init>(Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger;Lkotlin/coroutines/Continuation;)V

    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v7, v4, v5}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    invoke-static {v7, v3, v4, v6}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->vcnSubId:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v5, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$2;

    invoke-direct {v5, v1, p0}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;)V

    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v5, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$defaultConnections$2;

    invoke-direct {v5, v2, v6}, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl$defaultConnections$2;-><init>(Lcom/android/systemui/statusbar/pipeline/shared/ConnectivityInputLogger;Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v2, v1, v5}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    new-instance v1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v13, 0x3f

    const/4 v14, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel;-><init>(Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Wifi;Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Mobile;Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$CarrierMerged;Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$Ethernet;Lcom/android/systemui/statusbar/pipeline/shared/data/model/DefaultConnectionModel$BTTether;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v3, v4, v1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->defaultConnections:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/repository/ConnectivityRepositoryImpl;->defaultHiddenIcons:Ljava/util/Set;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "defaultHiddenIcons="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
