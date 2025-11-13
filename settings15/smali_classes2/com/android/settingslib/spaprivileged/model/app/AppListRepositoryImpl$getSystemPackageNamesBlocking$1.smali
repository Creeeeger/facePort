.class final Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNamesBlocking$1;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u00020\u0001*\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
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
.field final synthetic $userId:I

.field label:I

.field final synthetic this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNamesBlocking$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    iput p2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNamesBlocking$1;->$userId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNamesBlocking$1;

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNamesBlocking$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    iget p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNamesBlocking$1;->$userId:I

    invoke-direct {p1, v0, p0, p2}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNamesBlocking$1;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNamesBlocking$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNamesBlocking$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNamesBlocking$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNamesBlocking$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNamesBlocking$1;->this$0:Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    iget v1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNamesBlocking$1;->$userId:I

    iput v2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNamesBlocking$1;->label:I

    invoke-virtual {p1, v1, v2, p0}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;->loadAndFilterApps(IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
