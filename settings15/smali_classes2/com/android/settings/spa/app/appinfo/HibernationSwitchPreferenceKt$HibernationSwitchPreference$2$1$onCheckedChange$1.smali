.class final synthetic Lcom/android/settings/spa/app/appinfo/HibernationSwitchPreferenceKt$HibernationSwitchPreference$2$1$onCheckedChange$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;->appOpsManager:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;->app:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    xor-int/lit8 v3, v0, 0x1

    const/16 v4, 0x61

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/AppOpsManager;->setUidMode(III)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;->appHibernationManager:Landroid/apphibernation/AppHibernationManager;

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;->app:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/apphibernation/AppHibernationManager;->setHibernatingForUser(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;->appHibernationManager:Landroid/apphibernation/AppHibernationManager;

    iget-object v1, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;->app:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/apphibernation/AppHibernationManager;->setHibernatingGlobally(Ljava/lang/String;Z)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/spa/app/appinfo/HibernationSwitchPresenter;->isChecked:Lcom/android/settingslib/spa/framework/compose/OverridableFlow;

    iget-object p0, p0, Lcom/android/settingslib/spa/framework/compose/OverridableFlow;->overrideChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
