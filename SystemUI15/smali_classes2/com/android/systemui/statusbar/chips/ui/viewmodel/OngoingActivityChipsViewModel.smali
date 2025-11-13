.class public final Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipsViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final chip:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/chips/screenrecord/ui/viewmodel/ScreenRecordChipViewModel;Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel;Lcom/android/systemui/statusbar/chips/casttootherdevice/ui/viewmodel/CastToOtherDeviceChipViewModel;Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p2, Lcom/android/systemui/statusbar/chips/screenrecord/ui/viewmodel/ScreenRecordChipViewModel;->chip:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p3, p3, Lcom/android/systemui/statusbar/chips/sharetoapp/ui/viewmodel/ShareToAppChipViewModel;->chip:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p4, p4, Lcom/android/systemui/statusbar/chips/casttootherdevice/ui/viewmodel/CastToOtherDeviceChipViewModel;->chip:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p5, p5, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel;->chip:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v0, Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipsViewModel$chip$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipsViewModel$chip$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, p3, p4, p5, v0}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object p2

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p4, 0x3

    invoke-static {p3, p4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p3

    sget-object p4, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Hidden;

    invoke-static {p2, p1, p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/chips/ui/viewmodel/OngoingActivityChipsViewModel;->chip:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method
