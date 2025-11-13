.class final Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u0001*\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroid/content/pm/ApplicationInfo;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic $regularFlags:Landroid/content/pm/PackageManager$ApplicationInfoFlags;

.field final synthetic $userId:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;


# direct methods
.method public constructor <init>(ILandroid/content/pm/PackageManager$ApplicationInfoFlags;Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p3, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    iput p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;->$userId:I

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;->$regularFlags:Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    iget v2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;->$userId:I

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;->$regularFlags:Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    invoke-direct {v0, v2, p0, v1, p2}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;-><init>(ILandroid/content/pm/PackageManager$ApplicationInfoFlags;Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;->L$0:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    iget-object v1, v1, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;->userManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;->$userId:I

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v1

    const-string v3, "getProfileIdsWithDisabled(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;->$userId:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget v7, v1, v6

    if-eq v7, v3, :cond_2

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    iget-object v3, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;->$regularFlags:Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    new-instance v7, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2$deferredPackageNamesInChildProfiles$2$1;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v3, v1, v8}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2$deferredPackageNamesInChildProfiles$2$1;-><init>(ILandroid/content/pm/PackageManager$ApplicationInfoFlags;Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v7}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;->$regularFlags:Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->getValue()J

    move-result-wide v3

    const-wide/32 v6, 0x400000

    or-long/2addr v3, v6

    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object p1

    const-string v1, "of(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    iget-object v1, v1, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;->packageManager:Landroid/content/pm/PackageManager;

    iget v3, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;->$userId:I

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Ljava/util/List;

    move-result-object p1

    const-string v1, "getInstalledApplicationsAsUser(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getInstalledApplications$2;->label:I

    invoke-static {v5, p0}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    :goto_2
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IterablesKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getInstalled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    return-object v0
.end method
