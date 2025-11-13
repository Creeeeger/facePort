.class public final Lcom/samsung/android/settings/actions/templateresolver/ToggleTemplateResolver;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver;


# direct methods
.method public static setToggleValue(Lcom/android/settings/core/BasePreferenceController;Z)V
    .locals 1

    instance-of v0, p0, Lcom/android/settings/core/TogglePreferenceController;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/android/settings/core/TogglePreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/core/TogglePreferenceController;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->setCheckedForAction(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string/jumbo p1, "unknown"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string p1, "already_set"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string p1, "invalid_action"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final resolve(Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/android/settings/core/BasePreferenceController;Lcom/samsung/android/settings/actions/SettingsCommandActionHandler$1;)V
    .locals 0

    :try_start_0
    check-cast p1, Lcom/samsung/android/sdk/command/action/BooleanAction;

    iget-boolean p0, p1, Lcom/samsung/android/sdk/command/action/BooleanAction;->mNewState:Z

    invoke-static {p2, p0}, Lcom/samsung/android/settings/actions/templateresolver/ToggleTemplateResolver;->setToggleValue(Lcom/android/settings/core/BasePreferenceController;Z)V
    :try_end_0
    .catch Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p0, 0x2

    :goto_0
    invoke-virtual {p3, p0, p1}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler$1;->onResolved(ILjava/lang/String;)V

    return-void
.end method
