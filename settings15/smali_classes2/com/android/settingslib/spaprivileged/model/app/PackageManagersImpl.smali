.class public final Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;


# instance fields
.field public final iPackageManager$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl$iPackageManager$2;->INSTANCE:Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl$iPackageManager$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl;->iPackageManager$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getAppOpPermissionPackages(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl$getAppOpPermissionPackages$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl$getAppOpPermissionPackages$1;

    iget v1, v0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl$getAppOpPermissionPackages$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl$getAppOpPermissionPackages$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl$getAppOpPermissionPackages$1;

    invoke-direct {v0, p0, p3}, Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl$getAppOpPermissionPackages$1;-><init>(Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl$getAppOpPermissionPackages$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl$getAppOpPermissionPackages$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl;->iPackageManager$delegate:Lkotlin/Lazy;

    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/IPackageManager;

    invoke-interface {p3, p2, p1}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    const-string p3, "getAppOpPermissionPackages(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/collections/ArraysKt___ArraysKt;->asIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p2

    new-instance p3, Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl$getAppOpPermissionPackages$$inlined$asyncFilter$1;

    const/4 v2, 0x0

    invoke-direct {p3, p2, v2, p0, p1}, Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl$getAppOpPermissionPackages$$inlined$asyncFilter$1;-><init>(Ljava/lang/Iterable;Lkotlin/coroutines/Continuation;Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl;I)V

    iput v3, v0, Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl$getAppOpPermissionPackages$1;->label:I

    invoke-static {p3, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lkotlin/Pair;

    invoke-virtual {p3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Pair;

    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageInfoAsUser(ILjava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/settingslib/spaprivileged/model/app/PackageManagersImpl;->getPackageInfoAsUser(JILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageInfoAsUser(JILjava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 0

    const-string p0, "packageName"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public final hasGrantPermission(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .locals 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "permission"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "packageName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserId(Landroid/content/pm/ApplicationInfo;)I

    move-result p1

    const-wide/16 v0, 0x1000

    invoke-static {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p2, v0}, Lkotlin/collections/ArraysKt___ArraysKt;->indexOf(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_1

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz p0, :cond_0

    aget p0, p0, p2

    and-int/lit8 p0, p0, 0x2

    if-lez p0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return p1
.end method

.method public final hasRequestPermission(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .locals 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "permission"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "packageName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserId(Landroid/content/pm/ApplicationInfo;)I

    move-result p1

    const-wide/16 v0, 0x1000

    invoke-static {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p2, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPackageInstalledAsUser(ILjava/lang/String;)Z
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p2, v0, v1, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/high16 p1, 0x800000

    invoke-static {p1, p0}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->hasFlag(ILandroid/content/pm/ApplicationInfo;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
