.class public final Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final app:Landroid/content/pm/ApplicationInfo;

.field public final context:Landroid/content/Context;

.field public final flow:Lkotlinx/coroutines/flow/Flow;

.field public final userContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;->app:Landroid/content/pm/ApplicationInfo;

    invoke-static {p2}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserHandle(Landroid/content/pm/ApplicationInfo;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->asUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;->userContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/settingslib/spaprivileged/model/app/PermissionsChangedFlowKt;->permissionsChangedFlow(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$special$$inlined$map$1;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {p2, p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;->flow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
