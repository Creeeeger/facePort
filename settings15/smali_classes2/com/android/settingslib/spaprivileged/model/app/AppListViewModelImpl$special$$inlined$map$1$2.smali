.class public final Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1$2;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1$2$1;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1$2$1;->label:I

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

    check-cast p1, Lcom/android/settingslib/spaprivileged/template/app/AppListConfig;

    iget-object p2, p1, Lcom/android/settingslib/spaprivileged/template/app/AppListConfig;->userIds:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p2, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    new-instance v5, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph;

    iget-object v6, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1$2;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;

    iget-boolean v7, p1, Lcom/android/settingslib/spaprivileged/template/app/AppListConfig;->showInstantApps:Z

    iget-boolean v8, p1, Lcom/android/settingslib/spaprivileged/template/app/AppListConfig;->matchAnyUserForAdmin:Z

    invoke-direct {v5, v6, v4, v7, v8}, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$UserSubGraph;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl;IZZ)V

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iput v3, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListViewModelImpl$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
