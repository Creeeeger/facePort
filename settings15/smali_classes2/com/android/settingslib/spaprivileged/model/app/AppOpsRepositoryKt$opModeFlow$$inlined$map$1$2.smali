.class public final Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opModeFlow$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $app$inlined:Landroid/content/pm/ApplicationInfo;

.field public final synthetic $op$inlined:I

.field public final synthetic $this_opModeFlow$inlined:Landroid/app/AppOpsManager;

.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Landroid/app/AppOpsManager;ILandroid/content/pm/ApplicationInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opModeFlow$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opModeFlow$$inlined$map$1$2;->$this_opModeFlow$inlined:Landroid/app/AppOpsManager;

    iput p3, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opModeFlow$$inlined$map$1$2;->$op$inlined:I

    iput-object p4, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opModeFlow$$inlined$map$1$2;->$app$inlined:Landroid/content/pm/ApplicationInfo;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opModeFlow$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opModeFlow$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opModeFlow$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opModeFlow$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opModeFlow$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opModeFlow$$inlined$map$1$2$1;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opModeFlow$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opModeFlow$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opModeFlow$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Unit;

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opModeFlow$$inlined$map$1$2;->$this_opModeFlow$inlined:Landroid/app/AppOpsManager;

    iget-object p2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opModeFlow$$inlined$map$1$2;->$app$inlined:Landroid/content/pm/ApplicationInfo;

    const-string v2, "<this>"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "app"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opModeFlow$$inlined$map$1$2;->$op$inlined:I

    invoke-virtual {p1, v4, v2, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    iput v3, v0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opModeFlow$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppOpsRepositoryKt$opModeFlow$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
