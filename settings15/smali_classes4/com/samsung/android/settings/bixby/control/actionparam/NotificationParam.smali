.class public final Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam;
.super Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final createParamIfNeeded()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string/jumbo v1, "value"

    const-string/jumbo v2, "true"

    const-string/jumbo v3, "viv.accessibilityApp.TurnOnNotificationReminder"

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    const-string v2, "false"

    const-string/jumbo v3, "viv.accessibilityApp.TurnOffNotificationReminder"

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/settings/bixby/control/actionparam/NotificationParam$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mSpecificParamsMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
