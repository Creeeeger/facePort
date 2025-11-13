.class public Lcom/samsung/android/settings/bixby/control/commands/SetCommand;
.super Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public makeExtra(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 4

    iget p1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mTemplateType:I

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mActionParam:Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_6

    const/4 v1, 0x2

    const-string v3, "SetCommand"

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/4 v1, 0x6

    if-eq p1, v1, :cond_2

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string/jumbo p1, "mode"

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->getParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    :goto_0
    iget-object v0, v0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/converter/ValueConverter;->convertParameterToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/command/action/ModeAction;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1}, Lcom/samsung/android/sdk/command/action/CommandAction;-><init>()V

    iput p1, v1, Lcom/samsung/android/sdk/command/action/ModeAction;->mNewMode:I

    iput-object v0, v1, Lcom/samsung/android/sdk/command/action/ModeAction;->mExtraValue:Ljava/lang/String;

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->getDataBundle(ZLcom/samsung/android/sdk/command/action/CommandAction;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_3

    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/command/action/JSONStringAction;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/command/action/JSONStringAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->getDataBundle(ZLcom/samsung/android/sdk/command/action/CommandAction;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_3

    :cond_3
    new-instance p1, Lcom/samsung/android/sdk/command/action/StringAction;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/command/action/StringAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->getDataBundle(ZLcom/samsung/android/sdk/command/action/CommandAction;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_3

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_1
    new-instance v0, Lcom/samsung/android/sdk/command/action/FloatAction;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/command/action/FloatAction;-><init>(F)V

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->getDataBundle(ZLcom/samsung/android/sdk/command/action/CommandAction;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_3

    :cond_5
    :try_start_2
    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_2
    new-instance v0, Lcom/samsung/android/sdk/command/action/BooleanAction;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/command/action/BooleanAction;-><init>(Z)V

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->getDataBundle(ZLcom/samsung/android/sdk/command/action/CommandAction;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_3

    :cond_6
    iget-object p1, v0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    invoke-static {p1}, Lcom/samsung/android/settings/bixby/converter/ValueConverter;->convertParameterToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Lcom/samsung/android/sdk/command/action/JSONStringAction;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/command/action/JSONStringAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->getDataBundle(ZLcom/samsung/android/sdk/command/action/CommandAction;)Landroid/os/Bundle;

    move-result-object v2

    :goto_3
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "action"

    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method
