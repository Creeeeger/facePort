.class public final Lcom/samsung/android/settings/actions/templateresolver/NoTemplateResolver;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver;


# virtual methods
.method public final resolve(Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/android/settings/core/BasePreferenceController;Lcom/samsung/android/settings/actions/SettingsCommandActionHandler$1;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/action/CommandAction;->getActionType()I

    move-result p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 p1, 0x62

    if-ne p0, p1, :cond_0

    invoke-virtual {p2}, Lcom/android/settings/core/BasePreferenceController;->runDefaultAction()Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string p1, "invalid_action"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/command/action/JSONStringAction;

    iget-object p0, p1, Lcom/samsung/android/sdk/command/action/JSONStringAction;->mNewValue:Ljava/lang/String;

    new-instance p1, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    invoke-virtual {p2}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/settings/core/BasePreferenceController;->getControlType()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->build()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/settings/core/BasePreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlResult;->mResultCode:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    sget-object p1, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    if-eq p0, p1, :cond_2

    :goto_0
    const/4 p0, 0x1

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string/jumbo p1, "unknown"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p0, 0x2

    :goto_2
    invoke-virtual {p3, p0, p1}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler$1;->onResolved(ILjava/lang/String;)V

    return-void
.end method
