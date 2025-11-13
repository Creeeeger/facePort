.class public final Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final _isMenuVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

.field public final hasCancelButtonBeenClicked:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isFinishRequested:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

.field public final isFinishRequiredDueToExecutedAction:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isMenuVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isOpenMenuButtonVisible:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$5;

.field public final maximumUserColumns:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$3;

.field public final menu:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4;

.field public final selectedUser:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1;

.field public final userSwitched:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final userSwitcherInteractor:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

.field public final users:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$2;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->userSwitcherInteractor:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    iput-object p2, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    iget-object p2, p1, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast p2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object p2, p2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3;

    invoke-direct {v0, p2, p1}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;)V

    new-instance p2, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1;

    invoke-direct {p2, v0, p0}, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;)V

    iput-object p2, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->selectedUser:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1;

    invoke-virtual {p1}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->getUsers()Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$2;

    invoke-direct {v0, p2, p0}, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;)V

    iput-object v0, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->users:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$2;

    new-instance p2, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$3;

    invoke-direct {p2, v0, p0}, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;)V

    iput-object p2, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->maximumUserColumns:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$3;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->_isMenuVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object v0, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->isMenuVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->getActions()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;)V

    iput-object v0, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->menu:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4;

    new-instance p1, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$5;

    invoke-direct {p1, v0}, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$5;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p1, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->isOpenMenuButtonVisible:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$5;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->hasCancelButtonBeenClicked:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->isFinishRequiredDueToExecutedAction:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->userSwitched:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v1, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$createFinishRequestedFlow$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$createFinishRequestedFlow$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, p2, v1}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->isFinishRequested:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    return-void
.end method

.method public static final access$toViewModel(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Lcom/android/systemui/user/shared/model/UserModel;)Lcom/android/systemui/user/ui/viewmodel/UserViewModel;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/systemui/user/ui/viewmodel/UserViewModel;

    iget v1, p1, Lcom/android/systemui/user/shared/model/UserModel;->id:I

    iget-boolean v0, p1, Lcom/android/systemui/user/shared/model/UserModel;->isGuest:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/user/shared/model/UserModel;->isSelected:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/common/shared/model/Text$Resource;

    const v2, 0x7f13072c

    invoke-direct {v0, v2}, Lcom/android/systemui/common/shared/model/Text$Resource;-><init>(I)V

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/user/shared/model/UserModel;->name:Lcom/android/systemui/common/shared/model/Text;

    goto :goto_0

    :goto_1
    new-instance v3, Lcom/android/systemui/common/ui/drawable/CircularDrawable;

    iget-object v0, p1, Lcom/android/systemui/user/shared/model/UserModel;->image:Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v0}, Lcom/android/systemui/common/ui/drawable/CircularDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p1, Lcom/android/systemui/user/shared/model/UserModel;->isSelectable:Z

    if-eqz v0, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_2
    move v5, v4

    goto :goto_3

    :cond_1
    const v4, 0x3ec28f5c    # 0.38f

    goto :goto_2

    :goto_3
    if-nez v0, :cond_2

    const/4 p0, 0x0

    move-object v6, p0

    goto :goto_4

    :cond_2
    new-instance v0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$createOnSelectedCallback$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$createOnSelectedCallback$1;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;Lcom/android/systemui/user/shared/model/UserModel;)V

    move-object v6, v0

    :goto_4
    iget-boolean v4, p1, Lcom/android/systemui/user/shared/model/UserModel;->isSelected:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/user/ui/viewmodel/UserViewModel;-><init>(ILcom/android/systemui/common/shared/model/Text;Landroid/graphics/drawable/Drawable;ZFLkotlin/jvm/functions/Function0;)V

    return-object v7
.end method
