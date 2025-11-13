.class final Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function5;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field synthetic L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    check-cast p2, Landroid/content/pm/UserInfo;

    check-cast p3, Ljava/util/List;

    check-cast p4, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    check-cast p5, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    invoke-direct {v0, p0, p5}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$2:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$3:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->label:I

    const/16 v2, 0xa

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$6:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    iget-object v2, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    iget-object v5, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$4:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    iget-object v8, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    iget-object v9, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$0:Ljava/lang/Object;

    check-cast v9, Landroid/content/pm/UserInfo;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$6:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    iget-object v5, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$5:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$4:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    iget-object v8, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    iget-object v9, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$1:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$0:Ljava/lang/Object;

    check-cast v10, Landroid/content/pm/UserInfo;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v5, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    check-cast p1, Ljava/lang/Iterable;

    iget-object v7, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v10, v1

    move-object v9, v5

    move-object v1, v8

    move-object v5, p1

    move-object v8, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/UserInfo;

    iget v6, v10, Landroid/content/pm/UserInfo;->id:I

    iput-object v10, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$0:Ljava/lang/Object;

    iput-object v9, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$1:Ljava/lang/Object;

    iput-object v8, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$2:Ljava/lang/Object;

    iput-object v7, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$3:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$4:Ljava/lang/Object;

    iput-object v5, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$5:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$6:Ljava/lang/Object;

    iput v4, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->label:I

    invoke-static {v7, p1, v6, p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->access$toRecord(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Landroid/content/pm/UserInfo;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v6, v1

    :goto_1
    check-cast p1, Lcom/android/systemui/user/data/source/UserRecord;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v1, v6

    goto :goto_0

    :cond_4
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    check-cast v9, Ljava/lang/Iterable;

    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v9, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v7, p1

    move-object v9, v10

    move-object v11, v2

    move-object v2, v1

    move-object v1, v5

    move-object v5, v11

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/user/shared/model/UserActionModel;

    iget v6, v9, Landroid/content/pm/UserInfo;->id:I

    sget-object v10, Lcom/android/systemui/user/shared/model/UserActionModel;->ENTER_GUEST_MODE:Lcom/android/systemui/user/shared/model/UserActionModel;

    if-eq p1, v10, :cond_5

    sget-object v10, Lcom/android/systemui/user/shared/model/UserActionModel;->NAVIGATE_TO_USER_MANAGEMENT:Lcom/android/systemui/user/shared/model/UserActionModel;

    if-eq p1, v10, :cond_5

    iget-boolean v10, v8, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isAddUsersFromLockscreen:Z

    if-nez v10, :cond_5

    move v10, v4

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    :goto_3
    iput-object v9, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$0:Ljava/lang/Object;

    iput-object v8, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$1:Ljava/lang/Object;

    iput-object v7, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$2:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$3:Ljava/lang/Object;

    iput-object v5, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$4:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$5:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->L$6:Ljava/lang/Object;

    iput v3, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;->label:I

    invoke-static {v7, p1, v6, v10, p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->access$toRecord(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lcom/android/systemui/user/shared/model/UserActionModel;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v6, v1

    :goto_4
    check-cast p1, Lcom/android/systemui/user/data/source/UserRecord;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v1, v6

    goto :goto_2

    :cond_7
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method
