.class final Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$isEligibleFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;


# direct methods
.method public constructor <init>(Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$isEligibleFlow$1;->this$0:Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$isEligibleFlow$1;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$isEligibleFlow$1;->this$0:Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$isEligibleFlow$1;-><init>(Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$isEligibleFlow$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$isEligibleFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$isEligibleFlow$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$isEligibleFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$isEligibleFlow$1;->label:I

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$isEligibleFlow$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$isEligibleFlow$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$isEligibleFlow$1;->this$0:Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;

    iget-object v6, p1, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;->app:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->isArchived:Z

    if-eqz v6, :cond_5

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput v5, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$isEligibleFlow$1;->label:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    return-object v2

    :cond_5
    iput-object v1, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$isEligibleFlow$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$isEligibleFlow$1;->label:I

    new-instance v4, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v6

    invoke-direct {v4, v6}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    iget-object v6, p1, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;->permissionControllerManager:Landroid/permission/PermissionControllerManager;

    iget-object v7, p1, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;->app:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;->executor:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$getEligibility$2$1;

    invoke-direct {v8, v4}, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$getEligibility$2$1;-><init>(Lkotlin/coroutines/SafeContinuation;)V

    invoke-virtual {v6, v7, p1, v8}, Landroid/permission/PermissionControllerManager;->getHibernationEligibility(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    invoke-virtual {v4}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eq p1, v5, :cond_7

    const/4 v4, -0x1

    if-eq p1, v4, :cond_7

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$isEligibleFlow$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$isEligibleFlow$1;->label:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_8

    return-object v0

    :cond_8
    :goto_3
    return-object v2
.end method
