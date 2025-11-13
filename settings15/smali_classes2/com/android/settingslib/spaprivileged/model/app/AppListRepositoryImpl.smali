.class public final Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/model/app/AppListRepository;


# instance fields
.field public final context:Landroid/content/Context;

.field public final featureFlags:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final userManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlagsImpl;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;->featureFlags:Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/FeatureFlags;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;->packageManager:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;->userManager:Landroid/os/UserManager;

    return-void
.end method

.method public static final access$showSystemPredicate(Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p3, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$showSystemPredicate$2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$showSystemPredicate$2;

    iget v1, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$showSystemPredicate$2;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$showSystemPredicate$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$showSystemPredicate$2;

    invoke-direct {v0, p0, p3}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$showSystemPredicate$2;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$showSystemPredicate$2;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$showSystemPredicate$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$showSystemPredicate$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    sget-object v1, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$showSystemPredicate$3;->INSTANCE:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$showSystemPredicate$3;

    goto :goto_2

    :cond_3
    iput-object p0, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$showSystemPredicate$2;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$showSystemPredicate$2;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;->loadHomeOrLauncherPackages(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p3, Ljava/util/Set;

    new-instance v1, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$showSystemPredicate$4;

    invoke-direct {v1, p0, p3}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$showSystemPredicate$4;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;Ljava/util/Set;)V

    :goto_2
    return-object v1
.end method


# virtual methods
.method public final loadAndFilterApps(IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadAndFilterApps$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadAndFilterApps$2;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;IZLkotlin/coroutines/Continuation;)V

    invoke-static {v0, p3}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final loadApps(IZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p4, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$1;

    iget v1, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$1;

    invoke-direct {v0, p0, p4}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$1;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    new-instance p4, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;

    const/4 v9, 0x0

    move-object v4, p4

    move-object v5, p0

    move v6, p1

    move v7, p3

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$2;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;IZZLkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadApps$1;->label:I

    invoke-static {p4, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_2
    const-string p1, "AppListRepository"

    const-string p2, "loadApps failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_3
    return-object p4
.end method

.method public final loadHomeOrLauncherPackages(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v0, "addCategory(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v0, 0xc0200

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v5

    const-string v0, "of(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadHomeOrLauncherPackages$2;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$loadHomeOrLauncherPackages$2;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;ILkotlin/coroutines/Continuation;)V

    invoke-static {v0, p2}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
