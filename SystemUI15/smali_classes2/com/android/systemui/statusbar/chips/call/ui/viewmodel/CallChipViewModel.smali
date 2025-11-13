.class public final Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipViewModel;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final chip:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/chips/call/domain/interactor/CallChipInteractor;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p2, p2, Lcom/android/systemui/statusbar/chips/call/domain/interactor/CallChipInteractor;->ongoingCallState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p4, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$special$$inlined$map$1;

    invoke-direct {p4, p2, p3, p0}, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel;)V

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p3, 0x3

    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p2

    sget-object p3, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Hidden;

    invoke-static {p4, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel;->chip:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
