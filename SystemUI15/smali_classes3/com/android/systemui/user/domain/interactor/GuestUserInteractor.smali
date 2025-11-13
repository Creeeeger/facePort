.class public final Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final applicationContext:Landroid/content/Context;

.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final isGuestUserAutoCreated:Z

.field public final isGuestUserResetting:Z

.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final manager:Landroid/os/UserManager;

.field public final refreshUsersScheduler:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

.field public final repository:Lcom/android/systemui/user/data/repository/UserRepository;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/os/UserManager;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/app/admin/DevicePolicyManager;Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/GuestResumeSessionReceiver;Lcom/android/systemui/GuestResetOrExitSessionReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p4, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p5, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->manager:Landroid/os/UserManager;

    iput-object p6, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    iput-object p7, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object p8, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iput-object p9, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->refreshUsersScheduler:Lcom/android/systemui/user/domain/interactor/RefreshUsersScheduler;

    iput-object p10, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object p2, p6

    check-cast p2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-boolean p2, p2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->isGuestUserAutoCreated:Z

    iput-boolean p2, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->isGuestUserAutoCreated:Z

    check-cast p6, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-boolean p2, p6, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->isGuestUserResetting:Z

    iput-boolean p2, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->isGuestUserResetting:Z

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p11, Lcom/android/systemui/GuestResumeSessionReceiver;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object p1, p11, Lcom/android/systemui/GuestResumeSessionReceiver;->mMainExecutor:Ljava/util/concurrent/Executor;

    iget-object p2, p11, Lcom/android/systemui/GuestResumeSessionReceiver;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.GUEST_RESET"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.GUEST_EXIT"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p12, Lcom/android/systemui/GuestResetOrExitSessionReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/4 p2, 0x0

    sget-object p3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, p12, p0, p2, p3}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final guaranteePresent(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$guaranteePresent$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$guaranteePresent$1;

    iget v1, v0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$guaranteePresent$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$guaranteePresent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$guaranteePresent$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$guaranteePresent$1;-><init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$guaranteePresent$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$guaranteePresent$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$guaranteePresent$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->isDeviceAllowedToAddGuest()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_4
    new-instance p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$guaranteePresent$guestUser$1;

    invoke-direct {p1, p0, v4}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$guaranteePresent$guestUser$1;-><init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$guaranteePresent$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$guaranteePresent$1;->label:I

    iget-object v2, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v2, p1, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p1, Landroid/content/pm/UserInfo;

    if-nez p1, :cond_9

    iput-object v4, v0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$guaranteePresent$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$guaranteePresent$1;->label:I

    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-object p1, p1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->isGuestUserCreationScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    :cond_6
    new-instance p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$scheduleCreation$2;

    invoke-direct {p1, p0, v4}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$scheduleCreation$2;-><init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    goto :goto_2

    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2
    if-ne p0, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final isDeviceAllowedToAddGuest()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onDeviceBootCompleted()V
    .locals 3

    new-instance v0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$onDeviceBootCompleted$1;-><init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final remove(IILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    instance-of v3, v2, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;

    iget v4, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;

    invoke-direct {v3, v0, v2}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;-><init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->result:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->label:I

    const/4 v6, 0x0

    const/16 v7, -0x2710

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const-string v13, "GuestUserInteractor"

    if-eqz v5, :cond_6

    if-eq v5, v12, :cond_5

    if-eq v5, v11, :cond_4

    if-eq v5, v10, :cond_3

    if-eq v5, v9, :cond_2

    if-ne v5, v8, :cond_1

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    iget-object v0, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$2:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/UserInfo;

    iget-object v1, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-object v5, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    iget-object v0, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$2:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/UserInfo;

    iget-object v1, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-object v5, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_5
    iget v0, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->I$1:I

    iget v1, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->I$0:I

    iget-object v5, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$4:Ljava/lang/Object;

    check-cast v5, Landroid/content/pm/UserInfo;

    iget-object v14, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$3:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/functions/Function1;

    iget-object v15, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$2:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/functions/Function0;

    iget-object v8, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iget-object v9, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v15

    move v15, v0

    :goto_1
    move-object/from16 v0, v16

    goto/16 :goto_2

    :cond_6
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast v2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    invoke-virtual {v2}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    const-string v8, "User requesting to start a new session ("

    if-eq v2, v1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is not current user ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".id)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_7
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is not a guest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_8
    new-instance v2, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$marked$1;

    invoke-direct {v2, v0, v5, v6}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$marked$1;-><init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Landroid/content/pm/UserInfo;Lkotlin/coroutines/Continuation;)V

    iput-object v0, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$0:Ljava/lang/Object;

    move-object/from16 v8, p3

    iput-object v8, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$1:Ljava/lang/Object;

    move-object/from16 v9, p4

    iput-object v9, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$2:Ljava/lang/Object;

    move-object/from16 v14, p5

    iput-object v14, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$3:Ljava/lang/Object;

    iput-object v5, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$4:Ljava/lang/Object;

    iput v1, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->I$0:I

    move/from16 v15, p2

    iput v15, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->I$1:I

    iput v12, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->label:I

    iget-object v12, v0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v12, v2, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_9

    return-object v4

    :cond_9
    move-object/from16 v16, v9

    move-object v9, v0

    goto :goto_1

    :goto_2
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    const-string v0, "Couldn\'t mark the guest for deletion for user "

    invoke-static {v1, v0, v13}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_a
    if-ne v15, v7, :cond_12

    iput-object v9, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$0:Ljava/lang/Object;

    iput-object v14, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$1:Ljava/lang/Object;

    iput-object v5, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$2:Ljava/lang/Object;

    iput-object v6, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$3:Ljava/lang/Object;

    iput-object v6, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$4:Ljava/lang/Object;

    iput v11, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->label:I

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$create$2;

    invoke-direct {v1, v8, v9, v0, v6}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$create$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iget-object v0, v9, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v0, v1, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_b

    return-object v4

    :cond_b
    move-object v0, v5

    move-object v5, v9

    move-object v1, v14

    :goto_3
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v2, v7, :cond_10

    const-string v2, "Could not create new guest, switching back to main user"

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v5, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v7, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$mainUser$1;

    invoke-direct {v7, v5, v6}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$mainUser$1;-><init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lkotlin/coroutines/Continuation;)V

    iput-object v5, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$1:Ljava/lang/Object;

    iput-object v0, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$2:Ljava/lang/Object;

    iput v10, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->label:I

    invoke-static {v2, v7, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_c

    return-object v4

    :cond_c
    :goto_4
    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-object v1, v5, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v2, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$3;

    invoke-direct {v2, v5, v0, v6}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$3;-><init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Landroid/content/pm/UserInfo;Lkotlin/coroutines/Continuation;)V

    iput-object v6, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$0:Ljava/lang/Object;

    iput-object v6, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$1:Ljava/lang/Object;

    iput-object v6, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$2:Ljava/lang/Object;

    const/4 v0, 0x4

    iput v0, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->label:I

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_e

    return-object v4

    :cond_e
    :goto_5
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0, v6}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V

    goto :goto_6

    :cond_f
    const-string v0, "Required value was null."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "Couldn\'t remove guest because ActivityManager or WindowManager is dead"

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_10
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v5, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v2, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$4;

    invoke-direct {v2, v5, v0, v6}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$4;-><init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Landroid/content/pm/UserInfo;Lkotlin/coroutines/Continuation;)V

    iput-object v6, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$0:Ljava/lang/Object;

    iput-object v6, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$1:Ljava/lang/Object;

    iput-object v6, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->L$2:Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, v3, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$remove$1;->label:I

    invoke-static {v1, v2, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_11

    return-object v4

    :cond_11
    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_12
    iget-object v0, v9, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget-boolean v1, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->isGuestUserAutoCreated:Z

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->isGuestUserResetting:Z

    :cond_13
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v14, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v9, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->manager:Landroid/os/UserManager;

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->removeUserWhenPossible(Landroid/os/UserHandle;Z)I

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
