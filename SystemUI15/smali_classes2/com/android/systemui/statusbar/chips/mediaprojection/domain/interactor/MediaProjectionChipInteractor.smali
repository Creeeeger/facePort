.class public final Lcom/android/systemui/statusbar/chips/mediaprojection/domain/interactor/MediaProjectionChipInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mediaProjectionRepository:Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionRepository;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final projection:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionRepository;Landroid/content/pm/PackageManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/chips/mediaprojection/domain/interactor/MediaProjectionChipInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/statusbar/chips/mediaprojection/domain/interactor/MediaProjectionChipInteractor;->mediaProjectionRepository:Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionRepository;

    iput-object p3, p0, Lcom/android/systemui/statusbar/chips/mediaprojection/domain/interactor/MediaProjectionChipInteractor;->packageManager:Landroid/content/pm/PackageManager;

    check-cast p2, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;

    iget-object p2, p2, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;->mediaProjectionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/statusbar/chips/mediaprojection/domain/interactor/MediaProjectionChipInteractor$special$$inlined$map$1;

    invoke-direct {p3, p2, p0}, Lcom/android/systemui/statusbar/chips/mediaprojection/domain/interactor/MediaProjectionChipInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/chips/mediaprojection/domain/interactor/MediaProjectionChipInteractor;)V

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 v0, 0x3

    invoke-static {p2, v0}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p2

    sget-object v0, Lcom/android/systemui/statusbar/chips/mediaprojection/domain/model/ProjectionChipModel$NotProjecting;->INSTANCE:Lcom/android/systemui/statusbar/chips/mediaprojection/domain/model/ProjectionChipModel$NotProjecting;

    invoke-static {p3, p1, p2, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/chips/mediaprojection/domain/interactor/MediaProjectionChipInteractor;->projection:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final stopProjecting()V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/chips/mediaprojection/domain/interactor/MediaProjectionChipInteractor$stopProjecting$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/chips/mediaprojection/domain/interactor/MediaProjectionChipInteractor$stopProjecting$1;-><init>(Lcom/android/systemui/statusbar/chips/mediaprojection/domain/interactor/MediaProjectionChipInteractor;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/systemui/statusbar/chips/mediaprojection/domain/interactor/MediaProjectionChipInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
