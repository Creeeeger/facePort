.class final Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shouldShowAccessRestrictedSettingsDeferred$1;
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

.field final synthetic $this_getMoreOptionsState:Landroid/content/pm/ApplicationInfo;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shouldShowAccessRestrictedSettingsDeferred$1;->$this_getMoreOptionsState:Landroid/content/pm/ApplicationInfo;

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shouldShowAccessRestrictedSettingsDeferred$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shouldShowAccessRestrictedSettingsDeferred$1;

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shouldShowAccessRestrictedSettingsDeferred$1;->$this_getMoreOptionsState:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shouldShowAccessRestrictedSettingsDeferred$1;->$context:Landroid/content/Context;

    invoke-direct {p1, p0, v0, p2}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shouldShowAccessRestrictedSettingsDeferred$1;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shouldShowAccessRestrictedSettingsDeferred$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shouldShowAccessRestrictedSettingsDeferred$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shouldShowAccessRestrictedSettingsDeferred$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shouldShowAccessRestrictedSettingsDeferred$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shouldShowAccessRestrictedSettingsDeferred$1;->$this_getMoreOptionsState:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsKt$getMoreOptionsState$2$shouldShowAccessRestrictedSettingsDeferred$1;->$context:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/Flags;->extendEcmToAllSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Landroid/app/ecm/EnhancedConfirmationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/app/ecm/EnhancedConfirmationManager;

    :try_start_0
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/ecm/EnhancedConfirmationManager;->isClearRestrictionAllowed(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->getAppOpsManager(Landroid/content/Context;)Landroid/app/AppOpsManager;

    move-result-object v2

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x77

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    move v1, p1

    :catch_0
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
