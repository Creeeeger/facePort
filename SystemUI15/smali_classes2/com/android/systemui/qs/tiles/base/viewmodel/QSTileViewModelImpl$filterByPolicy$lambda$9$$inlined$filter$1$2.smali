.class public final Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $policy$inlined:Lcom/android/systemui/qs/tiles/viewmodel/QSTilePolicy;

.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic $user$inlined:Landroid/os/UserHandle;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/qs/tiles/viewmodel/QSTilePolicy;Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2;->$policy$inlined:Lcom/android/systemui/qs/tiles/viewmodel/QSTilePolicy;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2;->this$0:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2;->$user$inlined:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p2, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;

    iget v1, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;-><init>(Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->L$5:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object p1, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->L$4:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;

    iget-object v5, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v6, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->L$1:Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v6

    move-object v6, p0

    move-object p0, v7

    move-object v7, v5

    move-object v5, v2

    move-object v2, v0

    move-object v0, v11

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2;->$policy$inlined:Lcom/android/systemui/qs/tiles/viewmodel/QSTilePolicy;

    check-cast v2, Lcom/android/systemui/qs/tiles/viewmodel/QSTilePolicy$Restricted;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/viewmodel/QSTilePolicy$Restricted;->userRestrictions:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    instance-of v5, v2, Ljava/util/Collection;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    if-eqz v5, :cond_4

    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v5, v6

    move-object v11, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v11

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2;->this$0:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;

    iget-object v7, v7, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->disabledByPolicyInteractor:Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2;->$user$inlined:Landroid/os/UserHandle;

    iput-object p0, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->L$4:Ljava/lang/Object;

    iput-object v6, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->L$5:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->label:I

    check-cast v7, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl;

    invoke-virtual {v7, v8, v6, v0}, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl;->isDisabled(Landroid/os/UserHandle;Ljava/lang/String;Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_5

    return-object v1

    :cond_5
    move-object v11, v0

    move-object v0, p2

    move-object p2, v7

    move-object v7, v5

    move-object v5, v2

    move-object v2, v11

    :goto_2
    check-cast p2, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor$PolicyResult;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2;->this$0:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;

    iget-object v8, v8, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->disabledByPolicyInteractor:Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor;

    check-cast v8, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v9, p2, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor$PolicyResult$TileEnabled;

    const/4 v10, 0x0

    if-eqz v9, :cond_6

    move p2, v10

    goto :goto_3

    :cond_6
    instance-of v9, p2, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor$PolicyResult$TileDisabled;

    if-eqz v9, :cond_9

    check-cast p2, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor$PolicyResult$TileDisabled;

    iget-object p2, p2, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor$PolicyResult$TileDisabled;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p2}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object p2

    iget-object v8, v8, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v8, p2, v10}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    move p2, v4

    :goto_3
    if-eqz p2, :cond_7

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2;->this$0:Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;

    iget-object v9, v8, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->qsTileLogger:Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;

    iget-object v8, v8, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl;->config:Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;

    iget-object v8, v8, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;->tileSpec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    invoke-virtual {v9, v5, v8, v6}, Lcom/android/systemui/qs/tiles/base/logging/QSTileLogger;->logUserActionRejectedByPolicy(Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;Lcom/android/systemui/qs/pipeline/shared/TileSpec;Ljava/lang/String;)V

    :cond_7
    if-eqz p2, :cond_8

    move-object p1, v0

    move-object v0, v2

    move-object v6, v7

    move v4, v10

    goto :goto_4

    :cond_8
    move-object p2, v0

    move-object v0, v2

    move-object v2, v5

    move-object v5, v7

    goto :goto_1

    :cond_9
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_a
    move-object p1, p2

    move-object v6, v5

    :goto_4
    if-eqz v4, :cond_b

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->L$4:Ljava/lang/Object;

    iput-object p0, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->L$5:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/qs/tiles/base/viewmodel/QSTileViewModelImpl$filterByPolicy$lambda$9$$inlined$filter$1$2$1;->label:I

    invoke-interface {v6, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_b

    return-object v1

    :cond_b
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
