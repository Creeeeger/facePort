.class public final Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$special$$inlined$map$1$2;->this$0:Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$special$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$special$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$special$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$special$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$special$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$special$$inlined$map$1$2$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$special$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$special$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Unit;

    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p1, v0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$special$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$special$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$special$$inlined$map$1$2;->this$0:Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {p2, v5, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    iget-object v2, p0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;->userContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;->app:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v6, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$getPermissionSummary$2$1;

    invoke-direct {v6, p0, p2}, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$getPermissionSummary$2$1;-><init>(Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    const-class p0, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v2, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/permission/PermissionControllerManager;

    new-instance v2, Lcom/android/settingslib/applications/PermissionsSummaryHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v6}, Lcom/android/settingslib/applications/PermissionsSummaryHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V

    invoke-virtual {p0, v5, v2, v3}, Landroid/permission/PermissionControllerManager;->getAppPermissions(Ljava/lang/String;Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;Landroid/os/Handler;)V

    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object p0, p1

    :goto_1
    iput-object v3, v0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$special$$inlined$map$1$2$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/android/settings/spa/app/appinfo/AppPermissionSummaryRepository$special$$inlined$map$1$2$1;->label:I

    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
