.class final Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl$restrictedMode$1;
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictedMode;"
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

.field final synthetic this$0:Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl$restrictedMode$1;->this$0:Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl$restrictedMode$1;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl$restrictedMode$1;->this$0:Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl$restrictedMode$1;-><init>(Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl$restrictedMode$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl$restrictedMode$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl$restrictedMode$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl$restrictedMode$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl$restrictedMode$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl$restrictedMode$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl$restrictedMode$1;->this$0:Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl;

    iget-object v3, v1, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl;->restrictions:Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;

    iget-object v4, v3, Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;->keys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    iget v6, v3, Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;->userId:I

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, v1, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl;->userManager$delegate:Lkotlin/Lazy;

    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v1, Lcom/android/settingslib/spaprivileged/model/enterprise/BaseUserRestricted;->INSTANCE:Lcom/android/settingslib/spaprivileged/model/enterprise/BaseUserRestricted;

    goto :goto_0

    :cond_3
    iget-object v4, v3, Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;->keys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, v1, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl;->context:Landroid/content/Context;

    invoke-static {v7, v6, v5}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v3, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;

    iget-object v1, v1, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl;->context:Landroid/content/Context;

    invoke-direct {v3, v1, v5}, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByAdminImpl;-><init>(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    move-object v1, v3

    goto :goto_0

    :cond_5
    iget-object v3, v3, Lcom/android/settingslib/spaprivileged/model/enterprise/Restrictions;->enhancedConfirmation:Lcom/android/settingslib/spaprivileged/model/enterprise/EnhancedConfirmation;

    if-eqz v3, :cond_6

    iget-object v4, v1, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl;->context:Landroid/content/Context;

    iget-object v5, v3, Lcom/android/settingslib/spaprivileged/model/enterprise/EnhancedConfirmation;->key:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/settingslib/spaprivileged/model/enterprise/EnhancedConfirmation;->packageName:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRequiresEnhancedConfirmation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_6

    new-instance v4, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByEcmImpl;

    iget-object v1, v1, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl;->context:Landroid/content/Context;

    invoke-direct {v4, v1, v3}, Lcom/android/settingslib/spaprivileged/model/enterprise/BlockedByEcmImpl;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    move-object v1, v4

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/android/settingslib/spaprivileged/model/enterprise/NoRestricted;->INSTANCE:Lcom/android/settingslib/spaprivileged/model/enterprise/NoRestricted;

    :goto_0
    iput v2, p0, Lcom/android/settingslib/spaprivileged/model/enterprise/RestrictionsProviderImpl$restrictedMode$1;->label:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    return-object v0

    :cond_7
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
