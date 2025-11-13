.class final Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroid/content/pm/ApplicationInfo;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $loadInstantApps:Z

.field final synthetic $matchAnyUserForAdmin:Z

.field final synthetic $userId:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;IZZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    iput p2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->$userId:I

    iput-boolean p3, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->$matchAnyUserForAdmin:Z

    iput-boolean p4, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->$loadInstantApps:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v6, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    iget v2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->$userId:I

    iget-boolean v3, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->$matchAnyUserForAdmin:Z

    iget-boolean v4, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->$loadInstantApps:Z

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;IZZLkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v4, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/Deferred;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/Deferred;

    iget-object v3, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/Deferred;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2$hiddenSystemModulesDeferred$1;

    iget-object v5, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2$hiddenSystemModulesDeferred$1;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object v1

    new-instance v5, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2$hideWhenDisabledPackagesDeferred$1;

    iget-object v7, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    invoke-direct {v5, v7, v6}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2$hideWhenDisabledPackagesDeferred$1;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v5}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object p1

    iget-object v5, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    iget v7, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->$userId:I

    iget-boolean v8, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->$matchAnyUserForAdmin:Z

    iput-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->label:I

    iget-object v3, v5, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;->featureFlags:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-interface {v3}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;->archiving()Z

    move-result v3

    if-eqz v3, :cond_4

    const-wide v9, 0x100000000L

    goto :goto_0

    :cond_4
    const-wide/16 v9, 0x0

    :goto_0
    const-wide/32 v11, 0x8200

    or-long/2addr v9, v11

    invoke-static {v9, v10}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v3

    const-string v9, "of(...)"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v8, :cond_7

    iget-object v8, v5, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;->userManager:Landroid/os/UserManager;

    invoke-virtual {v8, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_1

    :cond_5
    new-instance v8, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;

    invoke-direct {v8, v7, v3, v5, v6}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;-><init>(ILandroid/content/pm/PackageManager$ApplicationInfoFlags;Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v8, p0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_6

    goto :goto_2

    :cond_6
    check-cast v3, Ljava/util/List;

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v5, v5, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v3, v7}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_2
    if-ne v3, v0, :cond_8

    return-object v0

    :cond_8
    move-object v13, v1

    move-object v1, p1

    move-object p1, v3

    move-object v3, v13

    :goto_3
    check-cast p1, Ljava/util/List;

    iput-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->label:I

    invoke-interface {v3, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_9

    return-object v0

    :cond_9
    move-object v13, v1

    move-object v1, p1

    move-object p1, v2

    move-object v2, v13

    :goto_4
    check-cast p1, Ljava/util/Set;

    iput-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->L$1:Ljava/lang/Object;

    iput v4, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->label:I

    invoke-interface {v2, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_a

    return-object v0

    :cond_a
    move-object v0, p1

    move-object p1, v2

    :goto_5
    const-string v2, "await(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/String;

    check-cast v1, Ljava/lang/Iterable;

    iget-boolean p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;->$loadInstantApps:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    if-nez p0, :cond_c

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_6

    :cond_c
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_6

    :cond_d
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-boolean v6, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_b

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_10

    goto :goto_6

    :cond_e
    iget-boolean v6, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_f

    goto :goto_7

    :cond_f
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-ne v5, v4, :cond_b

    :cond_10
    :goto_7
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    return-object v2
.end method
