.class public final Lcom/samsung/android/settings/bixby/target/NoDisturbAction;
.super Lcom/samsung/android/settings/bixby/target/actions/Action;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final doGetAction()Landroid/os/Bundle;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/actions/Action;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "zen_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "result"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final doGotoAction()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->getTaskId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->setTaskIdToIntent(Landroid/content/Intent;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/bixby/target/actions/Action;->launchSettings(Landroid/content/Intent;Landroid/os/Bundle;)V

    const-string/jumbo p0, "success"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final doSetAction()Landroid/os/Bundle;
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "NoDisturbAction"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/target/actions/Action;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "zen_duration"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/actions/Action;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenModeBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->setZenModeForDuration(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/actions/Action;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bixby/target/actions/Action;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo p0, "success"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/target/actions/Action;->createResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
