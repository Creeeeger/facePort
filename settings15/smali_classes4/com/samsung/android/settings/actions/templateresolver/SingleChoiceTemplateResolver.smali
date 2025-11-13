.class public final Lcom/samsung/android/settings/actions/templateresolver/SingleChoiceTemplateResolver;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver;


# direct methods
.method public static setSingleChoiceValue(Lcom/android/settings/core/BasePreferenceController;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p0, Lcom/android/settings/core/SecSingleChoicePreferenceController;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/android/settings/core/SecSingleChoicePreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getEntryValues()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getSelectedValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->setSelectedValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string/jumbo p1, "unknown"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string p1, "already_set"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string p1, "invalid_value"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string p1, "entry_is_not_ready"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string p1, "invalid_action"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final resolve(Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/android/settings/core/BasePreferenceController;Lcom/samsung/android/settings/actions/SettingsCommandActionHandler$1;)V
    .locals 0

    :try_start_0
    check-cast p1, Lcom/samsung/android/sdk/command/action/StringAction;

    iget-object p0, p1, Lcom/samsung/android/sdk/command/action/StringAction;->mNewValue:Ljava/lang/String;

    invoke-static {p2, p0}, Lcom/samsung/android/settings/actions/templateresolver/SingleChoiceTemplateResolver;->setSingleChoiceValue(Lcom/android/settings/core/BasePreferenceController;Ljava/lang/String;)V
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
