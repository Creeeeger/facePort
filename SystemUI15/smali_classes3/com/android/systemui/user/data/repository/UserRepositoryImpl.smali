.class public final Lcom/android/systemui/user/data/repository/UserRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/user/data/repository/UserRepository;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final _userInfos:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _userSwitcherSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final appContext:Landroid/content/Context;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public final isGuestUserAutoCreated:Z

.field public final isGuestUserCreationScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public isGuestUserResetting:Z

.field public final isStatusBarUserChipEnabled:Z

.field public lastSelectedNonGuestUserId:I

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public mainUserId:I

.field public final manager:Landroid/os/UserManager;

.field public secondaryUserId:I

.field public final selectedUser:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

.field public final tracker:Lcom/android/systemui/settings/UserTracker;

.field public final userInfos:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final userSwitcherSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/settings/UserTracker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->appContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->manager:Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p5, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p6, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    iput-object p7, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->tracker:Lcom/android/systemui/settings/UserTracker;

    sget-object p2, Lcom/android/systemui/util/settings/SettingsProxyExt;->INSTANCE:Lcom/android/systemui/util/settings/SettingsProxyExt;

    const-string/jumbo p4, "user_switcher_enabled"

    const-string p5, "lockscreenSimpleUserSwitcher"

    const-string v0, "add_users_when_locked"

    filled-new-array {p5, v0, p4}, [Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p6, p4}, Lcom/android/systemui/util/settings/SettingsProxyExt;->observerFlow(Lcom/android/systemui/util/settings/SettingsProxy;[Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance p4, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$_userSwitcherSettings$1;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$_userSwitcherSettings$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p6, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p6, p4, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance p2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$1;

    invoke-direct {p2, p6, p0}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/user/data/repository/UserRepositoryImpl;)V

    sget-object p4, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p4, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    new-instance p6, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$_userSwitcherSettings$3;

    invoke-direct {p6, p0, p5}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$_userSwitcherSettings$3;-><init>(Lcom/android/systemui/user/data/repository/UserRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, p6}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p6

    invoke-static {p2, p3, p4, p6}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->_userSwitcherSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p2, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->userSwitcherSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p5}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->_userInfos:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p6, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {p6, p2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p6, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->userInfos:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    const/16 p2, -0x2710

    iput p2, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->mainUserId:I

    iput p2, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->lastSelectedNonGuestUserId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    const v0, 0x11101aa

    invoke-virtual {p6, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p6

    iput-boolean p6, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->isGuestUserAutoCreated:Z

    const/4 p6, 0x0

    iput-boolean p6, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->isGuestUserResetting:Z

    new-instance p6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->isGuestUserCreationScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p6, 0x7f050069

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->isStatusBarUserChipEnabled:Z

    iput p2, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->secondaryUserId:I

    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object p2, Lcom/android/systemui/user/data/model/SelectionStatus;->SELECTION_COMPLETE:Lcom/android/systemui/user/data/model/SelectionStatus;

    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p2, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance p6, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;

    invoke-direct {p6, p0, p1, p5}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$1;-><init>(Lcom/android/systemui/user/data/repository/UserRepositoryImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p6}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    new-instance p6, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$2;

    invoke-direct {p6, p0, p5}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$selectedUser$1$2;-><init>(Lcom/android/systemui/user/data/repository/UserRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance p5, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {p5, p2, p6}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    new-instance p2, Lcom/android/systemui/user/data/model/SelectedUserModel;

    check-cast p7, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p7}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object p6

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/user/data/model/SelectionStatus;

    invoke-direct {p2, p6, p1}, Lcom/android/systemui/user/data/model/SelectedUserModel;-><init>(Landroid/content/pm/UserInfo;Lcom/android/systemui/user/data/model/SelectionStatus;)V

    invoke-static {p5, p3, p4, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUser:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    invoke-direct {p2, p1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p2, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    return-void
.end method


# virtual methods
.method public final getSelectedUserInfo()Landroid/content/pm/UserInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUser:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/user/data/model/SelectedUserModel;

    iget-object p0, p0, Lcom/android/systemui/user/data/model/SelectedUserModel;->userInfo:Landroid/content/pm/UserInfo;

    return-object p0
.end method

.method public final refreshUsers()V
    .locals 3

    new-instance v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl$refreshUsers$1;-><init>(Lcom/android/systemui/user/data/repository/UserRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
