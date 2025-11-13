.class public final Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4$2;->this$0:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4$2$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4$2$1;

    iget v3, v2, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4$2$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4$2$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4$2$1;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4$2$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4$2$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/user/shared/model/UserActionModel;

    iget-object v7, v0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4$2;->this$0:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Lcom/android/systemui/user/ui/viewmodel/UserActionViewModel;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    int-to-long v9, v8

    sget-object v8, Lcom/android/systemui/user/legacyhelper/ui/LegacyUserUiHelper;->INSTANCE:Lcom/android/systemui/user/legacyhelper/ui/LegacyUserUiHelper;

    sget-object v8, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_SUPERVISED_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    if-ne v6, v8, :cond_3

    move v12, v5

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    sget-object v13, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    if-ne v6, v13, :cond_4

    move v15, v5

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    :goto_3
    sget-object v11, Lcom/android/systemui/user/shared/model/UserActionModel;->ENTER_GUEST_MODE:Lcom/android/systemui/user/shared/model/UserActionModel;

    move-object/from16 p2, v1

    if-ne v6, v11, :cond_5

    move v1, v5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    sget-object v5, Lcom/android/systemui/user/shared/model/UserActionModel;->NAVIGATE_TO_USER_MANAGEMENT:Lcom/android/systemui/user/shared/model/UserActionModel;

    move-object/from16 v16, v3

    const/4 v0, 0x1

    if-ne v6, v5, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    invoke-static {v15, v1, v12, v0, v3}, Lcom/android/systemui/user/legacyhelper/ui/LegacyUserUiHelper;->getUserSwitcherActionIconResourceId(ZZZZZ)I

    move-result v1

    if-ne v6, v11, :cond_7

    const/16 v17, 0x1

    goto :goto_6

    :cond_7
    const/16 v17, 0x0

    :goto_6
    iget-object v0, v7, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    iget-boolean v3, v0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->isGuestUserAutoCreated:Z

    if-ne v6, v8, :cond_8

    const/16 v21, 0x1

    goto :goto_7

    :cond_8
    const/16 v21, 0x0

    :goto_7
    if-ne v6, v13, :cond_9

    const/16 v20, 0x1

    goto :goto_8

    :cond_9
    const/16 v20, 0x0

    :goto_8
    if-ne v6, v5, :cond_a

    const/16 v23, 0x1

    goto :goto_9

    :cond_a
    const/16 v23, 0x0

    :goto_9
    const/16 v22, 0x1

    iget-boolean v0, v0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->isGuestUserResetting:Z

    move/from16 v18, v3

    move/from16 v19, v0

    invoke-static/range {v17 .. v23}, Lcom/android/systemui/user/legacyhelper/ui/LegacyUserUiHelper;->getUserSwitcherActionTextResourceId(ZZZZZZZ)I

    move-result v12

    new-instance v13, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$toViewModel$1;

    invoke-direct {v13, v7, v6}, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$toViewModel$1;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Lcom/android/systemui/user/shared/model/UserActionModel;)V

    move-object v8, v14

    move v11, v1

    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/user/ui/viewmodel/UserActionViewModel;-><init>(JIILkotlin/jvm/functions/Function0;)V

    invoke-interface {v4, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, v16

    const/4 v5, 0x1

    goto :goto_1

    :cond_b
    move-object/from16 v16, v3

    move v0, v5

    iput v0, v2, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4$2$1;->label:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v4, v2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_c

    return-object v1

    :cond_c
    :goto_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
