.class public final Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final chipEnabled:Z

.field public final isChipVisible:Lkotlinx/coroutines/flow/Flow;

.field public final onClick:Lkotlin/jvm/functions/Function1;

.field public final userAvatar:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final userCount:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final userName:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->isStatusBarUserChipEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;->chipEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v2, v0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->getUsers()Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$isChipVisible$1;

    invoke-direct {v2, v1}, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$isChipVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;->isChipVisible:Lkotlinx/coroutines/flow/Flow;

    iget-object v0, p1, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object v2, v2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    new-instance v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3;

    invoke-direct {v3, v2, p1}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;)V

    new-instance v2, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$userName$1;

    invoke-direct {v2, v1}, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$userName$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v2}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;->userName:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    new-instance v2, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3;

    invoke-direct {v2, v0, p1}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;)V

    new-instance v0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$userAvatar$1;

    invoke-direct {v0, v1}, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$userAvatar$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;->userAvatar:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    new-instance v0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$onClick$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$onClick$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;)V

    iput-object v0, p0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;->onClick:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->getUsers()Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$userCount$1;

    invoke-direct {v0, v1}, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$userCount$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;->userCount:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    return-void
.end method
