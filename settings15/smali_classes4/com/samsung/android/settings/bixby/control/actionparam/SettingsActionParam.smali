.class public final Lcom/samsung/android/settings/bixby/control/actionparam/SettingsActionParam;
.super Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final createParamIfNeeded()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string/jumbo v1, "value"

    const-string/jumbo v2, "true"

    const-string v3, "bixby.settingsApp.Enable_MobileData"

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v3, "bixby.settingsApp.Enable_Airplane"

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v3, "bixby.settingsApp.SetOn_Synchronize"

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v2, "false"

    const-string v3, "bixby.settingsApp.Disable_MobileData"

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v3, "bixby.settingsApp.Disable_Airplane"

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v3, "bixby.settingsApp.SetOff_Synchronize"

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    const-string v1, "bixby.settingsApp.Goto_SendSOSMessagesSetting"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "isFolded"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->getParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    iget-object v4, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mExtra:Landroid/os/Bundle;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    :goto_0
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "newDex"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->getParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->isNewDex()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    return-void
.end method

.method public final getKeysNeedConvertingKey()Ljava/util/List;
    .locals 6

    new-instance p0, Ljava/util/ArrayList;

    const-string/jumbo v4, "screenTimeout"

    const-string/jumbo v5, "muteDuration"

    const-string v0, "fontSize"

    const-string/jumbo v1, "whiteBalance"

    const-string/jumbo v2, "screenZoom"

    const-string/jumbo v3, "soundMode"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method
