.class public final Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final app:Landroid/content/pm/ApplicationInfo;

.field public final appHibernationManager:Landroid/apphibernation/AppHibernationManager;

.field public final appOpsManager:Landroid/app/AppOpsManager;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final isChecked:Lcom/android/settingslib/spa/framework/compose/OverridableFlow;

.field public final isCheckedFlow:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

.field public final isEligibleFlow:Lkotlinx/coroutines/flow/SafeFlow;

.field public final permissionControllerManager:Landroid/permission/PermissionControllerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;->app:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->getAppOpsManager(Landroid/content/Context;)Landroid/app/AppOpsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;->appOpsManager:Landroid/app/AppOpsManager;

    invoke-static {p2}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserHandle(Landroid/content/pm/ApplicationInfo;)Landroid/os/UserHandle;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->asUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p2

    const-class v0, Landroid/permission/PermissionControllerManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Landroid/permission/PermissionControllerManager;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;->permissionControllerManager:Landroid/permission/PermissionControllerManager;

    const-class p2, Landroid/apphibernation/AppHibernationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/apphibernation/AppHibernationManager;

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;->appHibernationManager:Landroid/apphibernation/AppHibernationManager;

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->IO:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {p1}, Lkotlinx/coroutines/ExecutorsKt;->asExecutor(Lkotlinx/coroutines/CoroutineDispatcher;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;->executor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$isEligibleFlow$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$isEligibleFlow$1;-><init>(Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;->isEligibleFlow:Lkotlinx/coroutines/flow/SafeFlow;

    new-instance p1, Lcom/android/settingslib/spa/framework/compose/OverridableFlow;

    new-instance v0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$isChecked$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter$isChecked$1;-><init>(Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;Lkotlin/coroutines/Continuation;)V

    new-instance p2, Lkotlinx/coroutines/flow/SafeFlow;

    invoke-direct {p2, v0}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-direct {p1, p2}, Lcom/android/settingslib/spa/framework/compose/OverridableFlow;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;->isChecked:Lcom/android/settingslib/spa/framework/compose/OverridableFlow;

    iget-object p1, p1, Lcom/android/settingslib/spa/framework/compose/OverridableFlow;->flow:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;->isCheckedFlow:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    return-void
.end method
