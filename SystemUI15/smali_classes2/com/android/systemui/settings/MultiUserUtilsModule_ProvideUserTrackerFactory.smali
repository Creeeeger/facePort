.class public final Lcom/android/systemui/settings/MultiUserUtilsModule_ProvideUserTrackerFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final appScopeProvider:Ljavax/inject/Provider;

.field public final backgroundDispatcherProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final dumpManagerProvider:Ljavax/inject/Provider;

.field public final featureFlagsProvider:Ljavax/inject/Provider;

.field public final handlerProvider:Ljavax/inject/Provider;

.field public final iActivityManagerProvider:Ljavax/inject/Provider;

.field public final userManagerProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/MultiUserUtilsModule_ProvideUserTrackerFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/settings/MultiUserUtilsModule_ProvideUserTrackerFactory;->featureFlagsProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/settings/MultiUserUtilsModule_ProvideUserTrackerFactory;->userManagerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/settings/MultiUserUtilsModule_ProvideUserTrackerFactory;->iActivityManagerProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/settings/MultiUserUtilsModule_ProvideUserTrackerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/systemui/settings/MultiUserUtilsModule_ProvideUserTrackerFactory;->appScopeProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/android/systemui/settings/MultiUserUtilsModule_ProvideUserTrackerFactory;->backgroundDispatcherProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/android/systemui/settings/MultiUserUtilsModule_ProvideUserTrackerFactory;->handlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static provideUserTracker(Landroid/content/Context;Ljavax/inject/Provider;Landroid/os/UserManager;Landroid/app/IActivityManager;Lcom/android/systemui/dump/DumpManager;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/os/Handler;)Lcom/android/systemui/settings/UserTrackerImpl;
    .locals 11

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    new-instance v10, Lcom/android/systemui/settings/UserTrackerImpl;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/settings/UserTrackerImpl;-><init>(Landroid/content/Context;Ljavax/inject/Provider;Landroid/os/UserManager;Landroid/app/IActivityManager;Lcom/android/systemui/dump/DumpManager;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/os/Handler;)V

    iget-boolean v1, v10, Lcom/android/systemui/settings/UserTrackerImpl;->initialized:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/systemui/settings/UserTrackerImpl;->initialized:Z

    invoke-virtual {v10, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->setUserIdInternal(I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/systemui/settings/UserTrackerImpl;->context:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, v10, Lcom/android/systemui/settings/UserTrackerImpl;->backgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10, v0, v2, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, v10, Lcom/android/systemui/settings/UserTrackerImpl;->iActivityManager:Landroid/app/IActivityManager;

    new-instance v1, Lcom/android/systemui/settings/UserTrackerImpl$registerUserSwitchObserver$1;

    invoke-direct {v1, v10}, Lcom/android/systemui/settings/UserTrackerImpl$registerUserSwitchObserver$1;-><init>(Lcom/android/systemui/settings/UserTrackerImpl;)V

    const-string v2, "UserTrackerImpl"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/systemui/settings/UserTrackerImpl;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-static {v0, v2, v10}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    :goto_0
    return-object v10
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/settings/MultiUserUtilsModule_ProvideUserTrackerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/settings/MultiUserUtilsModule_ProvideUserTrackerFactory;->userManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/systemui/settings/MultiUserUtilsModule_ProvideUserTrackerFactory;->iActivityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/IActivityManager;

    iget-object v0, p0, Lcom/android/systemui/settings/MultiUserUtilsModule_ProvideUserTrackerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/dump/DumpManager;

    iget-object v0, p0, Lcom/android/systemui/settings/MultiUserUtilsModule_ProvideUserTrackerFactory;->appScopeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Lcom/android/systemui/settings/MultiUserUtilsModule_ProvideUserTrackerFactory;->backgroundDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v0, p0, Lcom/android/systemui/settings/MultiUserUtilsModule_ProvideUserTrackerFactory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/settings/MultiUserUtilsModule_ProvideUserTrackerFactory;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/settings/MultiUserUtilsModule_ProvideUserTrackerFactory;->provideUserTracker(Landroid/content/Context;Ljavax/inject/Provider;Landroid/os/UserManager;Landroid/app/IActivityManager;Lcom/android/systemui/dump/DumpManager;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/os/Handler;)Lcom/android/systemui/settings/UserTrackerImpl;

    move-result-object p0

    return-object p0
.end method
