.class public final Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final repository:Lcom/android/systemui/user/data/repository/UserRepository;

.field public final selectedUser:Lkotlinx/coroutines/flow/Flow;

.field public final selectedUserInfo:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/data/repository/UserRepository;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    new-instance v0, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor$special$$inlined$map$1;

    iget-object v1, p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    invoke-direct {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->selectedUser:Lkotlinx/coroutines/flow/Flow;

    iget-object p1, p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->selectedUserInfo:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method public static synthetic getSelectedUserId$default(Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getSelectedUserId()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p0

    return p0
.end method

.method public final getSelectedUserId(Z)I
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/systemui/Flags;->refactorGetCurrentUser()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-virtual {p0}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    return p0
.end method
