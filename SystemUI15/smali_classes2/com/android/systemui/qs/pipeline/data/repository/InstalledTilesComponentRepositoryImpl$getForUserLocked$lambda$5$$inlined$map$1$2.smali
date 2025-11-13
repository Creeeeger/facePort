.class public final Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getForUserLocked$lambda$5$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $packageManager$inlined:Landroid/content/pm/PackageManager;

.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic $userId$inlined:I

.field public final synthetic this$0:Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl;ILandroid/content/pm/PackageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getForUserLocked$lambda$5$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getForUserLocked$lambda$5$$inlined$map$1$2;->this$0:Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl;

    iput p3, p0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getForUserLocked$lambda$5$$inlined$map$1$2;->$userId$inlined:I

    iput-object p4, p0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getForUserLocked$lambda$5$$inlined$map$1$2;->$packageManager$inlined:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getForUserLocked$lambda$5$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getForUserLocked$lambda$5$$inlined$map$1$2$1;

    iget v1, v0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getForUserLocked$lambda$5$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getForUserLocked$lambda$5$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getForUserLocked$lambda$5$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getForUserLocked$lambda$5$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getForUserLocked$lambda$5$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getForUserLocked$lambda$5$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getForUserLocked$lambda$5$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/systemui/common/shared/model/PackageChangeModel;

    iget-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getForUserLocked$lambda$5$$inlined$map$1$2;->$packageManager$inlined:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getForUserLocked$lambda$5$$inlined$map$1$2;->$packageManager$inlined:Landroid/content/pm/PackageManager;

    sget-object p2, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl;->INTENT:Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getForUserLocked$lambda$5$$inlined$map$1$2;->this$0:Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl;->INTENT:Landroid/content/Intent;

    sget-object v2, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl;->FLAGS:Landroid/content/pm/PackageManager$ResolveInfoFlags;

    iget v4, p0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getForUserLocked$lambda$5$$inlined$map$1$2;->$userId$inlined:I

    invoke-virtual {p1, p2, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v4, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v6, "android.permission.BIND_QUICK_SETTINGS_TILE"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/pm/ServiceInfo;

    :try_start_0
    invoke-static {p1, v5}, Lcom/android/systemui/util/kotlin/PackageManagerExtKt;->isComponentActuallyEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ComponentInfo;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_7

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    iput v3, v0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getForUserLocked$lambda$5$$inlined$map$1$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/data/repository/InstalledTilesComponentRepositoryImpl$getForUserLocked$lambda$5$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, v2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    return-object v1

    :cond_9
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
