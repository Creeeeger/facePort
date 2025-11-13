.class public final Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2;->this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;

    iget v1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget p0, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;->I$0:I

    iget-object p1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    iget-object v2, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;->L$1:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/UserInfo;

    iget-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v7, v5

    move-object v5, p2

    move-object p2, v7

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    check-cast v2, Landroid/content/pm/UserInfo;

    iget p1, v2, Landroid/content/pm/UserInfo;->id:I

    iget-object p2, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;->L$1:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2;->this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    iput-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;->L$2:Ljava/lang/Object;

    iput p1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;->I$0:I

    iput v5, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;->label:I

    sget v5, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->$r8$clinit:I

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v0, v5}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->canSwitchUsers(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_5

    return-object v1

    :cond_5
    move v7, p1

    move-object p1, p0

    move p0, v7

    :goto_1
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-object p2, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;->label:I

    sget v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->$r8$clinit:I

    invoke-virtual {p1, v2, p0, v5, v0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->toUserModel(Landroid/content/pm/UserInfo;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    move-object v7, p2

    move-object p2, p0

    move-object p0, v7

    :goto_2
    iput-object v6, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3$2$1;->label:I

    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
