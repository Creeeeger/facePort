.class public final Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final screenRecordRepository:Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepository;

.field public final screenRecordState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepository;Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionRepository;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor;->screenRecordRepository:Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepository;

    check-cast p2, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl;

    check-cast p3, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;

    iget-object p3, p3, Lcom/android/systemui/mediaprojection/data/repository/MediaProjectionManagerRepository;->mediaProjectionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor$screenRecordState$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor$screenRecordState$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p2, p2, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl;->screenRecordState:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v1, p2, p3, v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p3, 0x3

    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p2

    sget-object p3, Lcom/android/systemui/statusbar/chips/screenrecord/domain/model/ScreenRecordChipModel$DoingNothing;->INSTANCE:Lcom/android/systemui/statusbar/chips/screenrecord/domain/model/ScreenRecordChipModel$DoingNothing;

    invoke-static {v1, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor;->screenRecordState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final stopRecording()V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor$stopRecording$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor$stopRecording$1;-><init>(Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/systemui/statusbar/chips/screenrecord/domain/interactor/ScreenRecordChipInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
