.class final Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl$isDisabled$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $user:Landroid/os/UserHandle;

.field final synthetic $userRestriction:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl;Landroid/os/UserHandle;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl$isDisabled$2;->this$0:Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl$isDisabled$2;->$user:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl$isDisabled$2;->$userRestriction:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl$isDisabled$2;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl$isDisabled$2;->this$0:Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl$isDisabled$2;->$user:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl$isDisabled$2;->$userRestriction:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl$isDisabled$2;-><init>(Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl;Landroid/os/UserHandle;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl$isDisabled$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl$isDisabled$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl$isDisabled$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl$isDisabled$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl$isDisabled$2;->this$0:Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl;->restrictedLockProxy:Lcom/android/systemui/qs/tiles/base/interactor/RestrictedLockProxy;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl$isDisabled$2;->$user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl$isDisabled$2;->$userRestriction:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/base/interactor/RestrictedLockProxy;->context:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor$PolicyResult$TileEnabled;->INSTANCE:Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor$PolicyResult$TileEnabled;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl$isDisabled$2;->this$0:Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl;->restrictedLockProxy:Lcom/android/systemui/qs/tiles/base/interactor/RestrictedLockProxy;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl$isDisabled$2;->$user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractorImpl$isDisabled$2;->$userRestriction:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/base/interactor/RestrictedLockProxy;->context:Landroid/content/Context;

    invoke-static {v0, p0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor$PolicyResult$TileDisabled;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor$PolicyResult$TileDisabled;-><init>(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor$PolicyResult$TileEnabled;->INSTANCE:Lcom/android/systemui/qs/tiles/base/interactor/DisabledByPolicyInteractor$PolicyResult$TileEnabled;

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
