.class final Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$actions$1;
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

.field synthetic Z$0:Z

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

    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$actions$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/pm/UserInfo;

    check-cast p2, Ljava/util/List;

    check-cast p3, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p5, Lkotlin/coroutines/Continuation;

    new-instance p4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$actions$1;

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$actions$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    invoke-direct {p4, p0, p5}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$actions$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V

    iput-object p2, p4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$actions$1;->L$0:Ljava/lang/Object;

    iput-object p3, p4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$actions$1;->L$1:Ljava/lang/Object;

    iput-boolean p1, p4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$actions$1;->Z$0:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p4, p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$actions$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$actions$1;->label:I

    if-nez v0, :cond_11

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$actions$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$actions$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;

    iget-boolean v1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$actions$1;->Z$0:Z

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$actions$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    new-instance v2, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {v2}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isAddUsersFromLockscreen:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_e

    iget-object v5, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object v6, Lcom/android/systemui/flags/Flags;->FULL_SCREEN_USER_SWITCHER:Lcom/android/systemui/flags/ResourceBooleanFlag;

    check-cast v5, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v5, v6}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    sget-object v6, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_SUPERVISED_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    sget-object v7, Lcom/android/systemui/user/shared/model/UserActionModel;->ENTER_GUEST_MODE:Lcom/android/systemui/user/shared/model/UserActionModel;

    filled-new-array {v5, v6, v7}, [Lcom/android/systemui/user/shared/model/UserActionModel;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_2

    :cond_2
    sget-object v5, Lcom/android/systemui/user/shared/model/UserActionModel;->ENTER_GUEST_MODE:Lcom/android/systemui/user/shared/model/UserActionModel;

    sget-object v6, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    sget-object v7, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_SUPERVISED_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    filled-new-array {v5, v6, v7}, [Lcom/android/systemui/user/shared/model/UserActionModel;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    :goto_2
    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/user/shared/model/UserActionModel;

    sget-object v8, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$actions$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v8, v7

    iget-object v8, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    if-eq v7, v3, :cond_7

    const/4 v9, 0x2

    const-string v10, "android.os.usertype.full.SECONDARY"

    if-eq v7, v9, :cond_6

    const/4 v9, 0x3

    if-eq v7, v9, :cond_3

    goto/16 :goto_9

    :cond_3
    sget-object v7, Lcom/android/systemui/user/domain/interactor/UserActionsUtil;->INSTANCE:Lcom/android/systemui/user/domain/interactor/UserActionsUtil;

    iget-object v9, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->manager:Landroid/os/UserManager;

    iget-boolean v11, v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isUserSwitcherEnabled:Z

    iget-object v12, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->applicationContext:Landroid/content/Context;

    const v13, 0x10403c1

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v9, v8, v11, v1, v10}, Lcom/android/systemui/user/domain/interactor/UserActionsUtil;->canAddMoreUsers(Landroid/os/UserManager;Lcom/android/systemui/user/data/repository/UserRepository;ZZLjava/lang/String;)Z

    move-result v7

    goto :goto_5

    :cond_5
    :goto_4
    move v7, v4

    :goto_5
    if-eqz v7, :cond_d

    sget-object v7, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_SUPERVISED_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    invoke-virtual {v2, v7}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_6
    sget-object v7, Lcom/android/systemui/user/domain/interactor/UserActionsUtil;->INSTANCE:Lcom/android/systemui/user/domain/interactor/UserActionsUtil;

    iget-object v9, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->manager:Landroid/os/UserManager;

    iget-boolean v11, v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isUserSwitcherEnabled:Z

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v8, v11, v1, v10}, Lcom/android/systemui/user/domain/interactor/UserActionsUtil;->canAddMoreUsers(Landroid/os/UserManager;Lcom/android/systemui/user/data/repository/UserRepository;ZZLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    sget-object v7, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    invoke-virtual {v2, v7}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_7
    move-object v7, p1

    check-cast v7, Ljava/lang/Iterable;

    instance-of v9, v7, Ljava/util/Collection;

    if-eqz v9, :cond_9

    move-object v9, v7

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_8
    move v7, v4

    goto :goto_6

    :cond_9
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    invoke-virtual {v9}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v9

    if-eqz v9, :cond_a

    move v7, v3

    :goto_6
    if-nez v7, :cond_d

    iget-object v7, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    iget-boolean v7, v7, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->isGuestUserAutoCreated:Z

    if-nez v7, :cond_c

    sget-object v7, Lcom/android/systemui/user/domain/interactor/UserActionsUtil;->INSTANCE:Lcom/android/systemui/user/domain/interactor/UserActionsUtil;

    iget-object v9, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->manager:Landroid/os/UserManager;

    iget-boolean v10, v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isUserSwitcherEnabled:Z

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "android.os.usertype.full.GUEST"

    invoke-static {v9, v8, v10, v1, v7}, Lcom/android/systemui/user/domain/interactor/UserActionsUtil;->canAddMoreUsers(Landroid/os/UserManager;Lcom/android/systemui/user/data/repository/UserRepository;ZZLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-boolean v7, Lcom/android/systemui/QpRune;->QUICK_MUM_TWO_PHONE:Z

    if-eqz v7, :cond_c

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_7

    :cond_b
    move v7, v4

    goto :goto_8

    :cond_c
    :goto_7
    move v7, v3

    :goto_8
    if-eqz v7, :cond_d

    sget-object v7, Lcom/android/systemui/user/shared/model/UserActionModel;->ENTER_GUEST_MODE:Lcom/android/systemui/user/shared/model/UserActionModel;

    invoke-virtual {v2, v7}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_9
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_e
    sget-object p1, Lcom/android/systemui/user/domain/interactor/UserActionsUtil;->INSTANCE:Lcom/android/systemui/user/domain/interactor/UserActionsUtil;

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    iget-boolean v0, v0, Lcom/android/systemui/user/data/model/UserSwitcherSettingsModel;->isUserSwitcherEnabled:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-virtual {p0}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_a

    :cond_f
    move v3, v4

    :goto_a
    if-eqz v3, :cond_10

    sget-object p0, Lcom/android/systemui/user/shared/model/UserActionModel;->NAVIGATE_TO_USER_MANAGEMENT:Lcom/android/systemui/user/shared/model/UserActionModel;

    invoke-virtual {v2, p0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-virtual {v2}, Lkotlin/collections/builders/ListBuilder;->build()Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    return-object p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
