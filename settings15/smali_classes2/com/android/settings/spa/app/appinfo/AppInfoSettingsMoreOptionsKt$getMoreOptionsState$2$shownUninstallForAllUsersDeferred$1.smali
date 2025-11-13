.class final Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shownUninstallForAllUsersDeferred$1;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

.field final synthetic $this_getMoreOptionsState:Landroid/content/pm/ApplicationInfo;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shownUninstallForAllUsersDeferred$1;->$this_getMoreOptionsState:Landroid/content/pm/ApplicationInfo;

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shownUninstallForAllUsersDeferred$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shownUninstallForAllUsersDeferred$1;->$packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shownUninstallForAllUsersDeferred$1;

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shownUninstallForAllUsersDeferred$1;->$this_getMoreOptionsState:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shownUninstallForAllUsersDeferred$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shownUninstallForAllUsersDeferred$1;->$packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

    invoke-direct {p1, v1, v0, p0, p2}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shownUninstallForAllUsersDeferred$1;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shownUninstallForAllUsersDeferred$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shownUninstallForAllUsersDeferred$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shownUninstallForAllUsersDeferred$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shownUninstallForAllUsersDeferred$1;->label:I

    if-nez v0, :cond_7

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shownUninstallForAllUsersDeferred$1;->$this_getMoreOptionsState:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shownUninstallForAllUsersDeferred$1;->$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shownUninstallForAllUsersDeferred$1;->$packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserId(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v1

    const-string v2, "getAliveUsers(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/model/app/ApplicationInfosKt;->getUserId(Landroid/content/pm/ApplicationInfo;)I

    move-result v5

    if-eq v4, v5, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/settings/Utils;->shouldHideUser(Landroid/os/UserHandle;Landroid/os/UserManager;)Z

    move-result v5

    xor-int/2addr v4, v5

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "packageName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {p0, v1, v2}, Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;->isPackageInstalledAsUser(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v4, 0x0

    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
