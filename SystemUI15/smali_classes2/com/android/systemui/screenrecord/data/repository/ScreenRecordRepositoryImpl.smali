.class public final Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepository;


# instance fields
.field public final bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final recordingController:Lcom/android/systemui/screenrecord/RecordingController;

.field public final screenRecordState:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lcom/android/systemui/screenrecord/RecordingController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl;->bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl;->recordingController:Lcom/android/systemui/screenrecord/RecordingController;

    new-instance p2, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl$screenRecordState$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl$screenRecordState$1;-><init>(Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance v1, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl$screenRecordState$2;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl$screenRecordState$2;-><init>(Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl;->screenRecordState:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final stopRecording(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl$stopRecording$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl$stopRecording$2;-><init>(Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl;->bgCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
