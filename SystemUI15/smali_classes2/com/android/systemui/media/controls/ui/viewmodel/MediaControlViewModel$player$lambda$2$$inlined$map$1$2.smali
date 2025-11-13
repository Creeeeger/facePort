.class public final Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$player$lambda$2$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$player$lambda$2$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$player$lambda$2$$inlined$map$1$2;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$player$lambda$2$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$player$lambda$2$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$player$lambda$2$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$player$lambda$2$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$player$lambda$2$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$player$lambda$2$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$player$lambda$2$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$player$lambda$2$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$player$lambda$2$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$player$lambda$2$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

    iget-object p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$player$lambda$2$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    if-eqz p1, :cond_5

    iput-object p2, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$player$lambda$2$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$player$lambda$2$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$player$lambda$2$$inlined$map$1$2;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    invoke-static {p0, p1, v0}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->access$toViewModel(Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;Lcom/android/systemui/media/controls/shared/model/MediaControlModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    move-object v6, p2

    move-object p2, p0

    move-object p0, v6

    :goto_1
    check-cast p2, Lcom/android/systemui/media/controls/ui/viewmodel/MediaPlayerViewModel;

    move-object v6, p2

    move-object p2, p0

    move-object p0, v6

    goto :goto_2

    :cond_5
    move-object p0, v3

    :goto_2
    iput-object v3, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$player$lambda$2$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$player$lambda$2$$inlined$map$1$2$1;->label:I

    invoke-interface {p2, p0, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
