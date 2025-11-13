.class public final Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bgHandler:Landroid/os/Handler;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;

.field private callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final context:Landroid/content/Context;

.field public final intentFilter:Landroid/content/IntentFilter;

.field public isDefaultHome:Z

.field public final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public roleCallback:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;

.field public final roleManager:Landroid/app/role/RoleManager;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public userUnlocked:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->bgHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p5, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->intentFilter:Landroid/content/IntentFilter;

    const-class p3, Landroid/os/UserManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserManager;

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-object p3, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->userUnlocked:Ljava/lang/Boolean;

    const-class p3, Landroid/app/role/RoleManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->roleManager:Landroid/app/role/RoleManager;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->updateHomeStatus()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->isDefaultHome:Z

    const-string p1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->userUnlocked:Ljava/lang/Boolean;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "init userUnlocked="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " for userid="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TaskBarInteractor"

    invoke-virtual {p5, p1, p0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$7;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    new-instance v0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;-><init>(Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->intentFilter:Landroid/content/IntentFilter;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->bgHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    const/16 v8, 0x30

    move-object v3, v0

    move-object v6, v1

    invoke-static/range {v2 .. v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->broadcastReceiver:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$2;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_1
    new-instance v0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$5;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$5;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->callback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/net/Uri;

    const-string/jumbo v4, "task_bar"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "minimal_battery_use"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, "user_setup_complete"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->roleCallback:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->roleManager:Landroid/app/role/RoleManager;

    invoke-virtual {v2, v0, v1}, Landroid/app/role/RoleManager;->removeOnRoleHoldersChangedListenerAsUser(Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    :cond_2
    new-instance v0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;-><init>(Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->roleCallback:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;

    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->roleManager:Landroid/app/role/RoleManager;

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/ExecutorsKt;->asExecutor(Lkotlinx/coroutines/CoroutineDispatcher;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->roleCallback:Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor$addCallback$7;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, p0, v1}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final updateHomeStatus()Z
    .locals 2

    new-instance v0, Lcom/samsung/android/app/SemRoleManager;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/TaskBarInteractor;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/SemRoleManager;-><init>(Landroid/content/Context;)V

    const-string p0, "android.app.role.HOME"

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/SemRoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
