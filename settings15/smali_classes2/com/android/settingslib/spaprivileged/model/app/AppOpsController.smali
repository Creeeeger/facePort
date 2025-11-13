.class public final Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final app:Landroid/content/pm/ApplicationInfo;

.field public final appOps:Lcom/android/settingslib/spaprivileged/model/app/AppOps;

.field public final appOpsManager:Landroid/app/AppOpsManager;

.field public final modeFlow:Lkotlinx/coroutines/flow/Flow;

.field public final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spaprivileged/model/app/AppOps;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appOps"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;->app:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;->appOps:Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->getAppOpsManager(Landroid/content/Context;)Landroid/app/AppOpsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;->appOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;->packageManager:Landroid/content/pm/PackageManager;

    new-instance p1, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1;

    iget p3, p3, Lcom/android/settingslib/spaprivileged/model/app/AppOps;->op:I

    const/4 v1, 0x0

    invoke-direct {p1, v0, p3, p2, v1}, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opChangedFlow$1;-><init>(Landroid/app/AppOpsManager;ILandroid/content/pm/ApplicationInfo;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p1

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v2, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opModeFlow$$inlined$map$1;

    invoke-direct {v2, p1, v0, p3, p2}, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opModeFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Landroid/app/AppOpsManager;ILandroid/content/pm/ApplicationInfo;)V

    invoke-static {v2, v1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;->modeFlow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final setAllowed(Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;->appOps:Lcom/android/settingslib/spaprivileged/model/app/AppOps;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, v0, Lcom/android/settingslib/spaprivileged/model/app/AppOps;->modeForNotAllowed:I

    :goto_0
    iget-boolean v1, v0, Lcom/android/settingslib/spaprivileged/model/app/AppOps;->setModeByUid:Z

    iget v0, v0, Lcom/android/settingslib/spaprivileged/model/app/AppOps;->op:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;->appOpsManager:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;->app:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2, p1}, Landroid/app/AppOpsManager;->setUidMode(III)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;->appOpsManager:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;->app:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v3, v2, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :goto_1
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v4, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;->packageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;->app:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v9

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    :cond_2
    return-void
.end method
