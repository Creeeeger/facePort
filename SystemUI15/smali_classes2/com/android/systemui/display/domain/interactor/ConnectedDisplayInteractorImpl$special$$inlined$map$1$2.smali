.class public final Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/Set;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$1$2;->this$0:Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl;

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/view/Display;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Landroid/view/Display;->getType()I

    move-result v6

    if-ne v6, v5, :cond_3

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroid/view/Display;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Landroid/view/Display;->getFlags()I

    move-result v8

    and-int/2addr v8, v5

    if-eqz v8, :cond_5

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/view/Display;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/companion/virtual/flags/Flags;->interactiveScreenMirror()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v6, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl;->virtualDeviceManager:Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/companion/virtual/VirtualDeviceManager;->isVirtualDeviceOwnedMirrorDisplay(I)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractor$State;->DISCONNECTED:Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractor$State;

    goto :goto_4

    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractor$State;->CONNECTED_SECURE:Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractor$State;

    goto :goto_4

    :cond_a
    sget-object p1, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractor$State;->CONNECTED:Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractor$State;

    :goto_4
    iput v3, v0, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_b

    return-object v1

    :cond_b
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
