.class public final Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $systemClock$inlined:Lcom/android/systemui/util/time/SystemClock;

.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$special$$inlined$map$1$2;->$systemClock$inlined:Lcom/android/systemui/util/time/SystemClock;

    iput-object p3, p0, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$special$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$special$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$special$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$special$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$special$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$special$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$special$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel;

    instance-of p2, p1, Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel$NoCall;

    if-eqz p2, :cond_3

    sget-object p1, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Hidden;->INSTANCE:Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Hidden;

    goto :goto_1

    :cond_3
    instance-of p2, p1, Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel$InCall;

    if-eqz p2, :cond_5

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel$InCall;

    iget-wide v4, p2, Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel$InCall;->startTimeMs:J

    iget-object p2, p0, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$special$$inlined$map$1$2;->$systemClock$inlined:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p2}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-interface {p2}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v6, v4

    new-instance p2, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;

    new-instance v2, Lcom/android/systemui/common/shared/model/Icon$Resource;

    const v4, 0x108059c

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    new-instance v4, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$chip$1$1;

    iget-object v5, p0, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel;

    invoke-direct {v4, p1, v5}, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$chip$1$1;-><init>(Lcom/android/systemui/statusbar/phone/ongoingcall/shared/model/OngoingCallModel;Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel;)V

    invoke-direct {p2, v2, v6, v7, v4}, Lcom/android/systemui/statusbar/chips/ui/model/OngoingActivityChipModel$Shown;-><init>(Lcom/android/systemui/common/shared/model/Icon;JLandroid/view/View$OnClickListener;)V

    move-object p1, p2

    :goto_1
    iput v3, v0, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$special$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/chips/call/ui/viewmodel/CallChipViewModel$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
