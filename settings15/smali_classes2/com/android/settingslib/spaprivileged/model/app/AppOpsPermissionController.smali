.class public final Lcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final app:Landroid/content/pm/ApplicationInfo;

.field public final appOpsController:Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;

.field public final isAllowedFlow:Lkotlinx/coroutines/flow/Flow;

.field public final packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

.field public final permission:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spaprivileged/model/app/AppOps;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;->INSTANCE:Lcom/android/settingslib/spaprivileged/model/app/PackageManagers;

    new-instance v1, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spaprivileged/model/app/AppOps;)V

    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "app"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "appOps"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "permission"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "packageManagers"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController;->app:Landroid/content/pm/ApplicationInfo;

    iput-object p4, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController;->permission:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController;->packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

    iput-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController;->appOpsController:Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;

    new-instance p1, Lcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController$special$$inlined$map$1;

    iget-object p2, v1, Lcom/android/settingslib/spaprivileged/model/app/AppOpsController;->modeFlow:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {p1, p2, p0}, Lcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController;)V

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Lcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController$isAllowedFlow$2;

    const/4 p3, 0x2

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    move-result-object p1

    sget-object p2, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsPermissionController;->isAllowedFlow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
