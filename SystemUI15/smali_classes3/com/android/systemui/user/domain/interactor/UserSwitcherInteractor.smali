.class public final Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final _dialogDismissRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _dialogShowRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final activityManager:Landroid/app/ActivityManager;

.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final applicationContext:Landroid/content/Context;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final callbackMutex:Lkotlinx/coroutines/sync/MutexImpl;

.field public final callbacks:Ljava/util/Set;

.field public final dialogDismissRequests:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final dialogShowRequests:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

.field public final headlessSystemUserMode:Lcom/android/systemui/user/domain/interactor/HeadlessSystemUserMode;

.field public final isGuestUserAutoCreated:Z

.field public final isGuestUserResetting:Z

.field public final isStatusBarUserChipEnabled:Z

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final manager:Landroid/os/UserManager;

.field public final processWrapper:Lcom/android/systemui/process/ProcessWrapper;

.field public final refreshUsersScheduler:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

.field public final repository:Lcom/android/systemui/user/data/repository/UserRepository;

.field public final selectedUserRecord:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final userInfos:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$1;

.field public final userRecords:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final userRestrictionChecker:Lcom/android/systemui/utils/UserRestrictionChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/flags/FeatureFlags;Landroid/os/UserManager;Lcom/android/systemui/user/domain/interactor/HeadlessSystemUserMode;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/telephony/domain/interactor/TelephonyInteractor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/keyguard/KeyguardUpdateMonitor;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/app/ActivityManager;Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/utils/UserRestrictionChecker;Lcom/android/systemui/process/ProcessWrapper;)V
    .locals 11

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p8

    move-object/from16 v3, p16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v4, p1

    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->applicationContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    move-object v4, p3

    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object v4, p4

    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    move-object/from16 v4, p5

    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v4, p6

    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->manager:Landroid/os/UserManager;

    move-object/from16 v4, p7

    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->headlessSystemUserMode:Lcom/android/systemui/user/domain/interactor/HeadlessSystemUserMode;

    iput-object v2, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v4, p12

    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 v4, p13

    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object/from16 v4, p14

    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->activityManager:Landroid/app/ActivityManager;

    move-object/from16 v4, p15

    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->refreshUsersScheduler:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

    iput-object v3, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    move-object/from16 v5, p17

    iput-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v5, p18

    iput-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->userRestrictionChecker:Lcom/android/systemui/utils/UserRestrictionChecker;

    move-object/from16 v5, p19

    iput-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->processWrapper:Lcom/android/systemui/process/ProcessWrapper;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default()Lkotlinx/coroutines/sync/MutexImpl;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->callbackMutex:Lkotlinx/coroutines/sync/MutexImpl;

    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->callbacks:Ljava/util/Set;

    check-cast v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object v5, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->userInfos:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    new-instance v6, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$1;

    invoke-direct {v6, v5}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object v6, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->userInfos:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$1;

    iget-object v5, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->getActions()Lkotlinx/coroutines/flow/Flow;

    move-result-object v7

    iget-object v8, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->userSwitcherSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v9, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {v6, v5, v7, v8, v9}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$2;

    invoke-direct {v6, p0, v10}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$userRecords$2;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v7, v5, v6}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7, v2, v5, v6}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->userRecords:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v6, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    new-instance v7, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$2;

    invoke-direct {v7, v6, p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;)V

    invoke-static {v7, v2, v5, v10}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->selectedUserRecord:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-boolean v5, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->isGuestUserAutoCreated:Z

    iput-boolean v5, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->isGuestUserAutoCreated:Z

    iget-boolean v3, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->isGuestUserResetting:Z

    iput-boolean v3, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->isGuestUserResetting:Z

    iget-boolean v3, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->isStatusBarUserChipEnabled:Z

    iput-boolean v3, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->isStatusBarUserChipEnabled:Z

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->_dialogShowRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->dialogShowRequests:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->_dialogDismissRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->dialogDismissRequests:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$keyguardUpdateMonitorCallback$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;)V

    iput-object v3, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual/range {p15 .. p15}, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->refreshIfNotPaused()V

    move-object/from16 v3, p9

    iget-object v3, v3, Lcom/android/systemui/telephony/domain/interactor/TelephonyInteractor;->callState:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$1;

    invoke-direct {v4, p0, v10}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v5, v3, v4}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5, v2}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_STOPPED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    sget-object v5, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$3;->INSTANCE:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$3;

    const/16 v6, 0xc

    move-object/from16 v7, p10

    invoke-static {v7, v3, v4, v5, v6}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    iget-object v4, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    invoke-static {v4, v10}, Lcom/android/systemui/util/kotlin/FlowKt;->pairwise(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$4;

    invoke-direct {v5, v10}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$4;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v6, v3, v4, v5}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    new-instance v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$5;

    invoke-direct {v3, p0, v10}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$5;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    invoke-direct {v4, v6, v3}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4, v2}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    invoke-virtual {v1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->restartSecondaryService(I)V

    new-instance v1, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$6;

    move-object/from16 v3, p11

    invoke-direct {v1, p0, v3, v10}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$6;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {v2, v10, v10, v1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final access$onBroadcastReceived(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Landroid/content/Intent;Landroid/content/pm/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$onBroadcastReceived$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$onBroadcastReceived$1;

    iget v1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$onBroadcastReceived$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$onBroadcastReceived$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$onBroadcastReceived$1;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$onBroadcastReceived$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$onBroadcastReceived$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$onBroadcastReceived$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$onBroadcastReceived$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v5, "android.intent.extra.user_handle"

    sparse-switch v2, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->dismissDialog()V

    const/4 p3, -0x1

    invoke-virtual {p1, v5, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p2, :cond_4

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    if-ne p2, p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p2, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$notifyCallbacks$1;

    invoke-direct {p2, p0, v3}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$notifyCallbacks$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V

    const/4 p3, 0x3

    iget-object v2, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v2, v3, v3, p2, p3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {p0, p1}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->restartSecondaryService(I)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    iget-boolean p2, p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->isGuestUserAutoCreated:Z

    if-eqz p2, :cond_7

    iput-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$onBroadcastReceived$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$onBroadcastReceived$1;->label:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->guaranteePresent(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto :goto_4

    :sswitch_1
    const-string p2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    const/16 p2, -0x2710

    invoke-virtual {p1, v5, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    :sswitch_2
    const-string p1, "android.intent.action.LOCALE_CHANGED"

    :goto_2
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_3

    :sswitch_3
    const-string p1, "android.intent.action.USER_INFO_CHANGED"

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v4, :cond_8

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->refreshUsersScheduler:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$unpauseAndRefresh$1;

    invoke-direct {p1, p0, v3}, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$unpauseAndRefresh$1;-><init>(Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;Lkotlin/coroutines/Continuation;)V

    iget-object p2, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    const/4 p3, 0x2

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, p2, v3, p1, p3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_8
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_4
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0xc02da2e -> :sswitch_3
        -0x122164c -> :sswitch_2
        0x31af1c32 -> :sswitch_1
        0x392cb822 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final access$toRecord(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Landroid/content/pm/UserInfo;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$1;

    iget v5, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$1;->label:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$1;

    invoke-direct {v4, v0, v3}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$1;->result:Ljava/lang/Object;

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v6, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$1;->label:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    if-ne v6, v8, :cond_1

    iget v0, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$1;->I$0:I

    iget-object v1, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$1;->L$2:Ljava/lang/Object;

    check-cast v1, Landroid/os/UserManager;

    iget-object v2, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$1;->L$1:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object v4, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v4

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object v3, Lcom/android/systemui/user/legacyhelper/data/LegacyUserDataHelper;->INSTANCE:Lcom/android/systemui/user/legacyhelper/data/LegacyUserDataHelper;

    iget-object v3, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->applicationContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->manager:Landroid/os/UserManager;

    iget v9, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v9, v2, :cond_3

    move v9, v8

    goto :goto_1

    :cond_3
    move v9, v7

    :goto_1
    iput-object v1, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$1;->L$0:Ljava/lang/Object;

    iput-object v3, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$1;->L$1:Ljava/lang/Object;

    iput-object v6, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$1;->L$2:Ljava/lang/Object;

    iput v9, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$1;->I$0:I

    iput v8, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$1;->label:I

    invoke-virtual {v0, v2, v4, v7}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->canSwitchUsers(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_4

    goto/16 :goto_8

    :cond_4
    move-object v11, v1

    move-object v2, v3

    move-object v1, v6

    move-object v3, v0

    move v0, v9

    :goto_2
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v0, :cond_5

    move v14, v8

    goto :goto_3

    :cond_5
    move v14, v7

    :goto_3
    sget-object v0, Lcom/android/systemui/user/legacyhelper/data/LegacyUserDataHelper;->INSTANCE:Lcom/android/systemui/user/legacyhelper/data/LegacyUserDataHelper;

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v13

    new-instance v5, Lcom/android/systemui/user/data/source/UserRecord;

    sget-object v0, Lcom/android/systemui/user/legacyhelper/data/LegacyUserDataHelper;->INSTANCE:Lcom/android/systemui/user/legacyhelper/data/LegacyUserDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_7

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    :goto_4
    move-object v12, v4

    goto :goto_5

    :cond_8
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070957

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1, v1, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v12, v0

    :goto_5
    if-nez v3, :cond_a

    if-eqz v14, :cond_9

    if-nez v13, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v17, v7

    goto :goto_7

    :cond_a
    :goto_6
    move/from16 v17, v8

    :goto_7
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x3b0

    const/16 v22, 0x0

    move-object v10, v5

    invoke-direct/range {v10 .. v22}, Lcom/android/systemui/user/data/source/UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZZLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_8
    return-object v5
.end method

.method public static final access$toRecord(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lcom/android/systemui/user/shared/model/UserActionModel;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$2;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$2;

    iget v4, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$2;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$2;

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$2;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$2;->result:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$2;->label:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget-boolean v0, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$2;->Z$0:Z

    iget v1, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$2;->I$0:I

    iget-object v4, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$2;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/user/shared/model/UserActionModel;

    iget-object v5, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$2;->L$1:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    iget-object v3, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v13, v0

    move-object v0, v3

    move-object v3, v2

    move-object v2, v4

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->applicationContext:Landroid/content/Context;

    iput-object v0, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$2;->L$0:Ljava/lang/Object;

    iput-object v5, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$2;->L$1:Ljava/lang/Object;

    move-object/from16 v2, p1

    iput-object v2, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$2;->L$2:Ljava/lang/Object;

    iput v1, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$2;->I$0:I

    move/from16 v7, p3

    iput-boolean v7, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$2;->Z$0:Z

    iput v6, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toRecord$2;->label:I

    invoke-virtual {v0, v1, v3, v6}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->canSwitchUsers(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_3

    goto/16 :goto_9

    :cond_3
    move v13, v7

    :goto_1
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    iget-boolean v3, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->isGuestUserAutoCreated:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->isGuestUserResetting:Z

    if-nez v3, :cond_5

    :cond_4
    move v14, v6

    goto :goto_2

    :cond_5
    move v14, v4

    :goto_2
    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->userRestrictionChecker:Lcom/android/systemui/utils/UserRestrictionChecker;

    sget-object v0, Lcom/android/systemui/user/legacyhelper/data/LegacyUserDataHelper;->INSTANCE:Lcom/android/systemui/user/legacyhelper/data/LegacyUserDataHelper;

    sget-object v0, Lcom/android/systemui/user/shared/model/UserActionModel;->ENTER_GUEST_MODE:Lcom/android/systemui/user/shared/model/UserActionModel;

    if-ne v2, v0, :cond_6

    move v10, v6

    goto :goto_3

    :cond_6
    move v10, v4

    :goto_3
    sget-object v0, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    if-ne v2, v0, :cond_7

    move v12, v6

    goto :goto_4

    :cond_7
    move v12, v4

    :goto_4
    sget-object v0, Lcom/android/systemui/user/shared/model/UserActionModel;->ADD_SUPERVISED_USER:Lcom/android/systemui/user/shared/model/UserActionModel;

    if-ne v2, v0, :cond_8

    move v15, v6

    goto :goto_5

    :cond_8
    move v15, v4

    :goto_5
    sget-object v0, Lcom/android/systemui/user/legacyhelper/data/LegacyUserDataHelper;->INSTANCE:Lcom/android/systemui/user/legacyhelper/data/LegacyUserDataHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "no_add_user"

    invoke-static {v5, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    const/4 v7, 0x0

    if-nez v3, :cond_9

    move-object/from16 v16, v7

    goto :goto_7

    :cond_9
    invoke-static {v5, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    move-object v3, v7

    :goto_6
    move-object/from16 v16, v3

    :goto_7
    sget-object v0, Lcom/android/systemui/user/shared/model/UserActionModel;->NAVIGATE_TO_USER_MANAGEMENT:Lcom/android/systemui/user/shared/model/UserActionModel;

    if-ne v2, v0, :cond_b

    move/from16 v17, v6

    goto :goto_8

    :cond_b
    move/from16 v17, v4

    :goto_8
    new-instance v4, Lcom/android/systemui/user/data/source/UserRecord;

    const/16 v18, 0xb

    const/16 v19, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v19}, Lcom/android/systemui/user/data/source/UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZZLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_9
    return-object v4
.end method

.method public static final access$toUserModels(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Ljava/util/List;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;

    iget v4, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->result:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->label:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v8, :cond_1

    iget-boolean v0, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->Z$1:Z

    iget-boolean v1, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->Z$0:Z

    iget v5, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->I$0:I

    iget-object v9, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->L$2:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/util/Collection;

    iget-object v11, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->Z$0:Z

    iget v1, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->I$0:I

    iget-object v5, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v9, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v17, v5

    move v5, v0

    move-object v0, v9

    move-object v9, v2

    move-object/from16 v2, v17

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object v0, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->L$0:Ljava/lang/Object;

    move-object/from16 v2, p1

    iput-object v2, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->L$1:Ljava/lang/Object;

    iput v1, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->I$0:I

    move/from16 v5, p3

    iput-boolean v5, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->Z$0:Z

    iput v7, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->label:I

    invoke-virtual {v0, v1, v3, v6}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->canSwitchUsers(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v4, :cond_4

    goto/16 :goto_9

    :cond_4
    :goto_1
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    check-cast v2, Ljava/lang/Iterable;

    new-instance v10, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$$inlined$sortedBy$1;

    invoke-direct {v10}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$$inlined$sortedBy$1;-><init>()V

    invoke-static {v2, v10}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v11, v0

    move v0, v9

    move-object v9, v2

    move/from16 v17, v5

    move v5, v1

    move/from16 v1, v17

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iput-object v11, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->L$0:Ljava/lang/Object;

    iput-object v10, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->L$1:Ljava/lang/Object;

    iput-object v9, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->L$2:Ljava/lang/Object;

    iput v5, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->I$0:I

    iput-boolean v1, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->Z$0:Z

    iput-boolean v0, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->Z$1:Z

    iput v8, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModels$1;->label:I

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_b

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v13

    if-nez v13, :cond_b

    sget-boolean v13, Lcom/android/systemui/QpRune;->QUICK_MUM_TWO_PHONE:Z

    if-eqz v13, :cond_a

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v13

    sget-object v14, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v15, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v14, v15}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/util/SettingsHelper;

    new-instance v15, Lkotlin/Pair;

    invoke-virtual {v14}, Lcom/android/systemui/util/SettingsHelper;->isTwoPhoneRegistered()Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v14}, Lcom/android/systemui/util/SettingsHelper;->hasTwoPhoneAccount()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v15, v6, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v15}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v13, :cond_5

    if-eqz v6, :cond_5

    if-eqz v14, :cond_5

    move v15, v7

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    :goto_3
    const-string v7, "isTwoPhoneSettingOff: "

    const-string v8, " [supportMultipleUsers:"

    const-string v12, " isTwoPhoneRegistered:"

    invoke-static {v7, v8, v12, v15, v13}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " hasTwoPhoneAccount:"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UserSwitcherInteractor"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v6, v15, 0x1

    if-eqz v6, :cond_6

    :goto_4
    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_8
    invoke-virtual {v11, v2, v5, v0, v3}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->toUserModel(Landroid/content/pm/UserInfo;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v2, v6, :cond_9

    goto :goto_7

    :cond_9
    move-object v12, v2

    check-cast v12, Lcom/android/systemui/user/shared/model/UserModel;

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v12, 0x0

    goto :goto_6

    :cond_b
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_d
    invoke-virtual {v11, v2, v5, v0, v3}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->toUserModel(Landroid/content/pm/UserInfo;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v2, v6, :cond_e

    goto :goto_7

    :cond_e
    move-object v12, v2

    check-cast v12, Lcom/android/systemui/user/shared/model/UserModel;

    :goto_6
    move-object v2, v12

    :goto_7
    if-ne v2, v4, :cond_f

    goto :goto_9

    :cond_f
    :goto_8
    check-cast v2, Lcom/android/systemui/user/shared/model/UserModel;

    if-eqz v2, :cond_10

    invoke-interface {v10, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_10
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    goto/16 :goto_2

    :cond_11
    move-object v4, v10

    check-cast v4, Ljava/util/List;

    :goto_9
    return-object v4
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$UserCallback;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$addCallback$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$addCallback$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$UserCallback;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final canSwitchUsers(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$1;

    iget v1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget p0, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$1;->I$0:I

    iget-object p1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-boolean p3, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$1;->Z$0:Z

    iget p1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$1;->I$0:I

    iget-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p2, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$isHeadlessSystemUserMode$1;

    invoke-direct {p2, p0, v6}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$isHeadlessSystemUserMode$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$1;->I$0:I

    iput-boolean p3, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$1;->Z$0:Z

    iput v7, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$1;->label:I

    iget-object v2, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v2, p2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p3, :cond_8

    if-eqz p2, :cond_8

    iput-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$1;->I$0:I

    iput v5, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$1;->label:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->isAnyUserUnlocked(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    move v8, p1

    move-object p1, p0

    move p0, v8

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    move-object v8, p1

    move p1, p0

    move-object p0, v8

    goto :goto_3

    :cond_7
    move p2, v3

    goto :goto_4

    :cond_8
    :goto_3
    move p2, v7

    move v8, p1

    move-object p1, p0

    move p0, v8

    :goto_4
    if-eqz p2, :cond_a

    iget-object p2, p1, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance p3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$2;

    invoke-direct {p3, p1, p0, v6}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$2;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;ILkotlin/coroutines/Continuation;)V

    iput-object v6, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$canSwitchUsers$1;->label:I

    invoke-static {p2, p3, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    return-object v1

    :cond_9
    :goto_5
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-nez p0, :cond_a

    move v3, v7

    :cond_a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final dismissDialog()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->_dialogDismissRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final executeAction(Lcom/android/systemui/user/shared/model/UserActionModel;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V
    .locals 8

    sget-object v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    if-eq p1, v0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.settings.USER_SETTINGS"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/user/utils/MultiUserActionsEvent;->CREATE_RESTRICTED_USER_FROM_USER_SWITCHER:Lcom/android/systemui/user/utils/MultiUserActionsEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->dismissDialog()V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.os.action.CREATE_SUPERVISED_USER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->applicationContext:Landroid/content/Context;

    const v0, 0x10403c1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p1, 0x10000000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    invoke-interface {p2, p0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p2, Lcom/android/systemui/user/utils/MultiUserActionsEvent;->CREATE_USER_FROM_USER_SWITCHER:Lcom/android/systemui/user/utils/MultiUserActionsEvent;

    invoke-interface {p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-virtual {p1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->dismissDialog()V

    iget-object p2, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->applicationContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardShowing()Z

    move-result v0

    sget v1, Lcom/android/systemui/user/CreateUserActivity;->$r8$clinit:I

    new-instance v3, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/user/CreateUserActivity;

    invoke-direct {v3, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x14000000

    invoke-virtual {v3, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "extra_is_keyguard_showing"

    invoke-virtual {v3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v6, 0x1

    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZLandroid/os/UserHandle;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/user/utils/MultiUserActionsEvent;->CREATE_GUEST_FROM_USER_SWITCHER:Lcom/android/systemui/user/utils/MultiUserActionsEvent;

    invoke-interface {p1, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    new-instance v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$executeAction$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$executeAction$1;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$executeAction$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$executeAction$2;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$executeAction$3;

    invoke-direct {v6, p0, p2}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$executeAction$3;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$createAndSwitchTo$1;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$createAndSwitchTo$1;-><init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p2, 0x0

    invoke-static {p0, p2, p2, p1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :goto_0
    return-void
.end method

.method public final exitGuestUser(IIZ)V
    .locals 9

    new-instance v5, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$exitGuestUser$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$exitGuestUser$1;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$exitGuestUser$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$exitGuestUser$2;-><init>(Ljava/lang/Object;)V

    new-instance v7, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$exitGuestUser$3;

    invoke-direct {v7, p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$exitGuestUser$3;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-virtual {v0}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/UserInfo;->id:I

    const-string v1, "User requesting to start a new session ("

    const-string v2, "GuestUserInteractor"

    if-eq v0, p1, :cond_0

    const-string p0, ") is not current user ("

    const-string p2, ")"

    invoke-static {p1, v0, v1, p0, p2}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is not a guest"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;

    const/4 v8, 0x0

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;-><init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;ILandroid/content/pm/UserInfo;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p2, 0x3

    const/4 p3, 0x0

    invoke-static {p0, p3, p3, p1, p2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :goto_0
    return-void
.end method

.method public final getActions()Lkotlinx/coroutines/flow/Flow;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object v1, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    iget-object v0, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->userSwitcherSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v2, v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardShowing:Lkotlinx/coroutines/flow/Flow;

    new-instance v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$actions$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$actions$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V

    iget-object v4, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->userInfos:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$1;

    invoke-static {v1, v4, v0, v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v0, p0}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final getUserImage(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$getUserImage$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$getUserImage$1;

    iget v1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$getUserImage$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$getUserImage$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$getUserImage$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$getUserImage$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$getUserImage$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$getUserImage$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$getUserImage$1;->I$0:I

    iget-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$getUserImage$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-nez p3, :cond_6

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p2, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$getUserImage$userIcon$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$getUserImage$userIcon$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;ILkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$getUserImage$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$getUserImage$1;->I$0:I

    iput v3, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$getUserImage$1;->label:I

    iget-object p3, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p3, p2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_5

    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object p0

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->applicationContext:Landroid/content/Context;

    const p1, 0x7f0807f1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUsers()Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object v1, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lcom/android/systemui/user/data/repository/UserRepositoryImpl$special$$inlined$map$2;

    iget-object v0, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->userSwitcherSettings:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v2, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$users$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$users$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->userInfos:Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$special$$inlined$map$1;

    invoke-static {p0, v1, v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p0

    return-object p0
.end method

.method public final isAnyUserUnlocked(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$isAnyUserUnlocked$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$isAnyUserUnlocked$1;

    iget v1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$isAnyUserUnlocked$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$isAnyUserUnlocked$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$isAnyUserUnlocked$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$isAnyUserUnlocked$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$isAnyUserUnlocked$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$isAnyUserUnlocked$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$isAnyUserUnlocked$1;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    iget-object v2, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$isAnyUserUnlocked$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->manager:Landroid/os/UserManager;

    invoke-virtual {p1, v4, v4, v4}, Landroid/os/UserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    if-eqz v5, :cond_7

    iget-object v5, p1, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v6, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$isAnyUserUnlocked$2$1;

    const/4 v7, 0x0

    invoke-direct {v6, p1, v2, v7}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$isAnyUserUnlocked$2$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Landroid/content/pm/UserInfo;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$isAnyUserUnlocked$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$isAnyUserUnlocked$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$isAnyUserUnlocked$1;->label:I

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v8, v2

    move-object v2, p1

    move-object p1, v8

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    move-object p1, v2

    move v2, v4

    goto :goto_2

    :cond_6
    move-object p1, v2

    :cond_7
    move v2, v3

    :goto_2
    if-eqz v2, :cond_4

    move v3, v4

    :cond_8
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final removeCallback(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$UserCallback;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$removeCallback$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$removeCallback$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$UserCallback;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final removeGuestUser(I)V
    .locals 3

    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$removeGuestUser$1;

    const/16 v1, -0x2710

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$removeGuestUser$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;IILkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v2, v2, v0, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final restartSecondaryService(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->manager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/SystemUISecondaryUserService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget v2, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->secondaryUserId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_2

    iget-object v4, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    iput v3, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->secondaryUserId:I

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->processWrapper:Lcom/android/systemui/process/ProcessWrapper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq p1, v2, :cond_3

    invoke-static {}, Lcom/android/systemui/process/ProcessWrapper;->isSystemUser()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    iput p1, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->secondaryUserId:I

    :cond_3
    return-void
.end method

.method public final selectUser(ILcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-virtual {v1}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v3, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget v6, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->lastSelectedNonGuestUserId:I

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v7

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardShowing()Z

    move-result v8

    new-instance v9, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$selectUser$1;

    invoke-direct {v9, p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$selectUser$1;-><init>(Ljava/lang/Object;)V

    move-object v4, p1

    move-object v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;-><init>(IIZZLkotlin/jvm/functions/Function3;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->showDialog(Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v7

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardShowing()Z

    move-result v8

    new-instance v9, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$selectUser$2;

    invoke-direct {v9, p0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$selectUser$2;-><init>(Ljava/lang/Object;)V

    move-object v4, v0

    move v6, p1

    move-object v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowExitGuestDialog;-><init>(IIZZLkotlin/jvm/functions/Function3;Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->showDialog(Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    check-cast p2, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;->dismiss()V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->switchUser(I)V

    return-void
.end method

.method public final showDialog(Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->_dialogShowRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final showUserSwitcher(Lcom/android/systemui/animation/Expandable;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/flags/Flags;->FULL_SCREEN_USER_SWITCHER:Lcom/android/systemui/flags/ResourceBooleanFlag;

    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserSwitcherFullscreenDialog;

    invoke-direct {v0, p1}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserSwitcherFullscreenDialog;-><init>(Lcom/android/systemui/animation/Expandable;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->showDialog(Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserSwitcherDialog;

    invoke-direct {v0, p1}, Lcom/android/systemui/user/domain/model/ShowDialogRequestModel$ShowUserSwitcherDialog;-><init>(Lcom/android/systemui/animation/Expandable;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->showDialog(Lcom/android/systemui/user/domain/model/ShowDialogRequestModel;)V

    :goto_0
    return-void
.end method

.method public final switchUser(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->refreshUsersScheduler:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$pause$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler$pause$1;-><init>(Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;Lkotlin/coroutines/Continuation;)V

    iget-object v3, v0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v4, 0x2

    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v3, v0, v2, v1, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$switchUser$runnable$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$switchUser$runnable$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;I)V

    sget-object p1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$switchUser$1;

    invoke-direct {p1, p0, v0, v2}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$switchUser$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v2, v2, p1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final toUserModel(Landroid/content/pm/UserInfo;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    instance-of v4, v3, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;

    iget v5, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;->label:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;

    invoke-direct {v4, v0, v3}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;->result:Ljava/lang/Object;

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v6, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;->label:I

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_3

    if-eq v6, v9, :cond_2

    if-ne v6, v7, :cond_1

    iget v0, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;->I$1:I

    iget v1, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;->I$0:I

    iget-boolean v2, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;->Z$0:Z

    iget-object v4, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/common/shared/model/Text;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v11, v0

    move-object v12, v4

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;->I$1:I

    iget v1, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;->I$0:I

    iget-boolean v2, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;->Z$0:Z

    iget-object v4, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/common/shared/model/Text;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v11, v0

    move v15, v2

    move-object v12, v4

    goto :goto_2

    :cond_3
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    move/from16 v6, p2

    if-ne v3, v6, :cond_4

    move v6, v9

    goto :goto_1

    :cond_4
    move v6, v8

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v10

    if-eqz v10, :cond_7

    new-instance v7, Lcom/android/systemui/common/shared/model/Text$Loaded;

    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v1}, Lcom/android/systemui/common/shared/model/Text$Loaded;-><init>(Ljava/lang/String;)V

    iput-object v7, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;->L$0:Ljava/lang/Object;

    iput-boolean v2, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;->Z$0:Z

    iput v6, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;->I$0:I

    iput v3, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;->I$1:I

    iput v9, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;->label:I

    invoke-virtual {v0, v3, v4, v9}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->getUserImage(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_5

    return-object v5

    :cond_5
    move v15, v2

    move v11, v3

    move v1, v6

    move-object v12, v7

    move-object v3, v0

    :goto_2
    move-object v13, v3

    check-cast v13, Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/android/systemui/user/shared/model/UserModel;

    if-eqz v1, :cond_6

    move v14, v9

    goto :goto_3

    :cond_6
    move v14, v8

    :goto_3
    const/16 v16, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/user/shared/model/UserModel;-><init>(ILcom/android/systemui/common/shared/model/Text;Landroid/graphics/drawable/Drawable;ZZZ)V

    goto :goto_8

    :cond_7
    new-instance v10, Lcom/android/systemui/common/shared/model/Text$Loaded;

    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v1}, Lcom/android/systemui/common/shared/model/Text$Loaded;-><init>(Ljava/lang/String;)V

    iput-object v10, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;->L$0:Ljava/lang/Object;

    iput-boolean v2, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;->Z$0:Z

    iput v6, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;->I$0:I

    iput v3, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;->I$1:I

    iput v7, v4, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$toUserModel$1;->label:I

    invoke-virtual {v0, v3, v4, v8}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->getUserImage(ILkotlin/coroutines/Continuation;Z)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_8

    return-object v5

    :cond_8
    move v11, v3

    move v1, v6

    move-object v12, v10

    move-object v3, v0

    :goto_4
    move-object v13, v3

    check-cast v13, Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_a

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    move v15, v8

    goto :goto_6

    :cond_a
    :goto_5
    move v15, v9

    :goto_6
    new-instance v0, Lcom/android/systemui/user/shared/model/UserModel;

    if-eqz v1, :cond_b

    move v14, v9

    goto :goto_7

    :cond_b
    move v14, v8

    :goto_7
    const/16 v16, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/user/shared/model/UserModel;-><init>(ILcom/android/systemui/common/shared/model/Text;Landroid/graphics/drawable/Drawable;ZZZ)V

    :goto_8
    return-object v0
.end method
