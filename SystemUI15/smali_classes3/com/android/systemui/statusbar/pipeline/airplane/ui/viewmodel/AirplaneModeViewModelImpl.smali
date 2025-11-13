.class public final Lcom/android/systemui/statusbar/pipeline/airplane/ui/viewmodel/AirplaneModeViewModelImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/airplane/ui/viewmodel/AirplaneModeViewModel;


# instance fields
.field public final isAirplaneModeIconVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;Lcom/android/systemui/log/table/TableLogBuffer;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p1, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;->isForceHidden:Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor$special$$inlined$map$1;

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/airplane/ui/viewmodel/AirplaneModeViewModelImpl$isAirplaneModeIconVisible$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pipeline/airplane/ui/viewmodel/AirplaneModeViewModelImpl$isAirplaneModeIconVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object p1, p1, Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;->isAirplaneMode:Lkotlinx/coroutines/flow/StateFlow;

    invoke-direct {v1, p1, p0, v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, ""

    const-string v1, "isAirplaneModeIconVisible"

    invoke-static {p0, p2, v0, v1, p1}, Lcom/android/systemui/log/table/DiffableKt;->logDiffsForTable(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/log/table/TableLogBuffer;Ljava/lang/String;Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p3, p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
