.class public abstract Lcom/android/settingslib/spa/SpaBaseDialogActivity;
.super Landroidx/activity/ComponentActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public abstract Content(Landroidx/compose/runtime/Composer;I)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;->spaEnvironment:Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/android/settings/spa/SettingsSpaEnvironment;

    sget-object v0, Lcom/android/settingslib/spa/framework/common/LogCategory;->FRAMEWORK:Lcom/android/settingslib/spa/framework/common/LogCategory;

    iget-object p1, p1, Lcom/android/settings/spa/SettingsSpaEnvironment;->logger:Lcom/android/settingslib/spa/framework/common/SpaLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/settingslib/spa/SpaBaseDialogActivity$onCreate$1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/spa/SpaBaseDialogActivity$onCreate$1;-><init>(Lcom/android/settingslib/spa/SpaBaseDialogActivity;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, 0x35cd88d8

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p0, v0}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Spa environment is not set"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
