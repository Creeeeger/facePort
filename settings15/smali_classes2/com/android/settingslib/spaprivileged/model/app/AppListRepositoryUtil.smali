.class public abstract Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryUtil;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final getSystemPackageNames(Landroid/content/Context;I)Ljava/util/Set;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;

    invoke-direct {v0, p0}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNamesBlocking$1;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl$getSystemPackageNamesBlocking$1;-><init>(Lcom/android/settingslib/spaprivileged/model/app/AppListRepositoryImpl;ILkotlin/coroutines/Continuation;)V

    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {p1, p0}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method
