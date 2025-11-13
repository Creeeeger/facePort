.class final Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;",
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

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field Z$0:Z

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->$this_getMoreOptionsState:Landroid/content/pm/ApplicationInfo;

    iput-object p3, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->$packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->$this_getMoreOptionsState:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->$packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->I$1:I

    iget p0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->I$0:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget v1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->I$0:I

    iget-object v3, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/Deferred;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->Z$0:Z

    iget-object v7, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/Deferred;

    iget-object v8, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/Deferred;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shownUninstallUpdatesDeferred$1;

    iget-object v7, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->$this_getMoreOptionsState:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->$context:Landroid/content/Context;

    invoke-direct {v1, v8, v7, v5}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shownUninstallUpdatesDeferred$1;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object v1

    new-instance v7, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shownUninstallForAllUsersDeferred$1;

    iget-object v8, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->$this_getMoreOptionsState:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->$context:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->$packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

    invoke-direct {v7, v9, v8, v10, v5}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shownUninstallForAllUsersDeferred$1;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v7}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object v8

    new-instance v7, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shouldShowAccessRestrictedSettingsDeferred$1;

    iget-object v9, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->$this_getMoreOptionsState:Landroid/content/pm/ApplicationInfo;

    iget-object v10, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->$context:Landroid/content/Context;

    invoke-direct {v7, v10, v9, v5}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shouldShowAccessRestrictedSettingsDeferred$1;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v7}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/DeferredCoroutine;

    move-result-object v7

    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iget-object v9, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->$context:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->$this_getMoreOptionsState:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v9, v10}, Lcom/android/settings/Utils;->isProfileOrDeviceOwner(Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    iput-object v8, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->L$0:Ljava/lang/Object;

    iput-object v7, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->L$1:Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->Z$0:Z

    iput v6, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->label:I

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v11, v1

    move v1, p1

    move-object p1, v11

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v6

    goto :goto_1

    :cond_5
    move p1, v1

    :cond_6
    move v1, p1

    move p1, v4

    :goto_1
    if-nez v1, :cond_9

    iput-object v7, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->L$1:Ljava/lang/Object;

    iput p1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->I$0:I

    iput v3, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->label:I

    invoke-interface {v8, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    return-object v0

    :cond_7
    move-object v3, v7

    move-object v11, v1

    move v1, p1

    move-object p1, v11

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    move p1, v1

    move v1, v6

    goto :goto_3

    :cond_8
    move p1, v1

    move-object v7, v3

    :cond_9
    move v1, v4

    move-object v3, v7

    :goto_3
    iput-object v5, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->L$1:Ljava/lang/Object;

    iput p1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->I$0:I

    iput v1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->I$1:I

    iput v2, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2;->label:I

    invoke-interface {v3, p0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_a

    return-object v0

    :cond_a
    move v0, v1

    move v11, p1

    move-object p1, p0

    move p0, v11

    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance v1, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;

    if-eqz p0, :cond_b

    move p0, v6

    goto :goto_5

    :cond_b
    move p0, v4

    :goto_5
    if-eqz v0, :cond_c

    move v4, v6

    :cond_c
    invoke-direct {v1, p0, v4, p1}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;-><init>(ZZZ)V

    return-object v1
.end method
