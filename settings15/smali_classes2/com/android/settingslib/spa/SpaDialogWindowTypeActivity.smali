.class public abstract Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity;
.super Landroidx/activity/ComponentActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public dialog:Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity$AlertDialogWithType;


# virtual methods
.method public abstract Content(Landroidx/compose/runtime/Composer;I)V
.end method

.method public final finish()V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity;->dialog:Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity$AlertDialogWithType;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;->spaEnvironment:Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/android/settings/spa/SettingsSpaEnvironment;

    sget-object v0, Lcom/android/settingslib/spa/framework/common/LogCategory;->FRAMEWORK:Lcom/android/settingslib/spa/framework/common/LogCategory;

    iget-object p1, p1, Lcom/android/settings/spa/SettingsSpaEnvironment;->logger:Lcom/android/settingslib/spa/framework/common/SpaLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity$AlertDialogWithType;

    invoke-direct {p1, p0, p0}, Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity$AlertDialogWithType;-><init>(Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity;Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iput-object p1, p0, Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity;->dialog:Lcom/android/settingslib/spa/SpaDialogWindowTypeActivity$AlertDialogWithType;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Spa environment is not set"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
