.class final Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$users$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$users$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    check-cast p2, Landroid/content/pm/UserInfo;

    check-cast p3, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$users$1;

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$users$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    invoke-direct {v0, p0, p4}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$users$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$users$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$users$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$users$1;->L$2:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$users$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$users$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$users$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$users$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v3, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$users$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    iget-object v4, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$users$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iget-boolean v3, v3, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isUserSwitcherEnabled:Z

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$users$1;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$users$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$users$1;->label:I

    invoke-static {v4, p1, v1, v3, p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->access$toUserModels(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Ljava/util/List;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
