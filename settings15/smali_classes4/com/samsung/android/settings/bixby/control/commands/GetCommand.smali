.class public final Lcom/samsung/android/settings/bixby/control/commands/GetCommand;
.super Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final executeInternal(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    const-string v0, "com.android.settings.command"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "method_LOAD"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->makeExtra(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->parsingCommand(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mCommand:Lcom/samsung/android/sdk/command/Command;

    const-string v1, "fail"

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/samsung/android/settings/bixby/utils/BixbyUtils;->buildActionResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    iget v2, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mTemplateType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/samsung/android/sdk/command/Command;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    check-cast v0, Lcom/samsung/android/sdk/command/template/MediaControlTemplate;

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mCurrentActiveMode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_3
    iget-object v0, v0, Lcom/samsung/android/sdk/command/Command;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    check-cast v0, Lcom/samsung/android/sdk/command/template/UnformattedTemplate;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mJSONValue:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_5
    iget-object v0, v0, Lcom/samsung/android/sdk/command/Command;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    check-cast v0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mCurrentActiveValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_7
    iget-object v0, v0, Lcom/samsung/android/sdk/command/Command;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    check-cast v0, Lcom/samsung/android/sdk/command/template/SliderTemplate;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mStatusCode:Ljava/lang/String;

    const-string/jumbo v2, "success"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mStatusCode:Ljava/lang/String;

    goto :goto_0

    :cond_8
    iget p0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mCurrentValue:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_a
    iget-object v0, v0, Lcom/samsung/android/sdk/command/Command;->mTemplate:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    check-cast v0, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    if-eqz v0, :cond_c

    iget-boolean p0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mIsChecked:Z

    if-eqz p0, :cond_b

    const-string/jumbo p0, "on"

    goto :goto_0

    :cond_b
    const-string/jumbo p0, "off"

    :goto_0
    invoke-static {p1, p0}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->buildResult(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p0, "GetCommand"

    const-string p1, "Fail to get current state"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/samsung/android/settings/bixby/utils/BixbyUtils;->buildActionResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
