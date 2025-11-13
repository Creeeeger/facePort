.class public Lcom/samsung/android/settings/bixby/control/commands/LaunchCommand;
.super Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public executeInternal(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mActionParam:Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;

    const-string v1, "com.android.settings.command"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "method_LOAD"

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->makeExtra(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, p1, v2, v1}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "command"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/command/Command;

    invoke-direct {v2, v1}, Lcom/samsung/android/sdk/command/Command;-><init>(Landroid/os/Bundle;)V

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/samsung/android/sdk/command/Command;->mLaunchIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/bixby/utils/BixbyUtils;->isLargeSubDisplayScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mExtra:Landroid/os/Bundle;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "isFolded"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_2

    iget-object v0, v0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "showCoverToast"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "ignoreKeyguardState"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "keyguard"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1, v2}, Landroid/app/KeyguardManager;->semSetPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->buildResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "LaunchCommand"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string p0, "fail"

    invoke-static {p0}, Lcom/samsung/android/settings/bixby/utils/BixbyUtils;->buildActionResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
