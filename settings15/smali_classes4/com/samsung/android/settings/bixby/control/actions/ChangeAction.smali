.class public final Lcom/samsung/android/settings/bixby/control/actions/ChangeAction;
.super Lcom/samsung/android/settings/bixby/control/actions/BaseAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public RANGE_FLAG:I

.field public mGetAction:Lcom/samsung/android/settings/bixby/control/actions/GetAction;


# virtual methods
.method public final executeInternal()Landroid/os/Bundle;
    .locals 12

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actions/ChangeAction;->mGetAction:Lcom/samsung/android/settings/bixby/control/actions/GetAction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->execute(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->mActionParam:Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;

    iget-object v4, v3, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "bixby.settingsApp.ChangeFontSize"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    iput v4, p0, Lcom/samsung/android/settings/bixby/control/actions/ChangeAction;->RANGE_FLAG:I

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->mExtraBundle:Landroid/os/Bundle;

    const-string v5, "get_entry_list"

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->excuteAction(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "entryList"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    iget v6, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->MIN_INDEX:I

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v6, v7, :cond_2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->MIN_INDEX:I

    :cond_2
    iget v6, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->MAX_INDEX:I

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->MAX_INDEX:I

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget v0, p0, Lcom/samsung/android/settings/bixby/control/actions/ChangeAction;->RANGE_FLAG:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/2addr v4, v0

    const-string/jumbo v0, "value"

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->getParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "max"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->MAX_INDEX:I

    goto :goto_2

    :cond_4
    const-string/jumbo v6, "min"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->MIN_INDEX:I

    goto :goto_2

    :cond_5
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    const/4 v6, 0x0

    :goto_2
    const-string v7, "+"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const-string/jumbo v8, "too_large"

    const-string v9, "MAX"

    const-string/jumbo v10, "type"

    if-eqz v7, :cond_9

    add-int/2addr v6, v4

    iget-object v3, v3, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget v5, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->MAX_INDEX:I

    if-ne v4, v5, :cond_6

    const-string v1, "already_max"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->MAX_INDEX:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    if-le v6, v5, :cond_7

    invoke-virtual {v3, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->MAX_INDEX:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v1, v3

    :cond_7
    if-nez v1, :cond_8

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/bixby/control/actions/ChangeAction;->setSize(I)Landroid/os/Bundle;

    move-result-object v1

    iget p0, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->MAX_INDEX:I

    if-ne v6, p0, :cond_8

    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-object v1

    :cond_9
    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string/jumbo v7, "too_small"

    const-string v11, "MIN"

    if-eqz v5, :cond_d

    add-int/2addr v6, v4

    iget-object v3, v3, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget v5, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->MIN_INDEX:I

    if-ne v4, v5, :cond_a

    const-string v1, "already_min"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->MIN_INDEX:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    if-ge v6, v5, :cond_b

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->MAX_INDEX:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move-object v1, v3

    :cond_b
    if-nez v1, :cond_c

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/bixby/control/actions/ChangeAction;->setSize(I)Landroid/os/Bundle;

    move-result-object v1

    iget p0, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->MIN_INDEX:I

    if-ne v6, p0, :cond_c

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-object v1

    :cond_d
    iget-object v3, v3, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget v5, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->MAX_INDEX:I

    if-le v6, v5, :cond_e

    invoke-virtual {v3, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->MAX_INDEX:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    iget v5, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->MIN_INDEX:I

    if-ge v6, v5, :cond_f

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->MAX_INDEX:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    if-ne v4, v6, :cond_10

    const-string v1, "already_set"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    move-object v1, v3

    :cond_10
    if-nez v1, :cond_12

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/bixby/control/actions/ChangeAction;->setSize(I)Landroid/os/Bundle;

    move-result-object v1

    iget v0, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->MAX_INDEX:I

    if-ne v6, v0, :cond_11

    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_11
    iget p0, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->MIN_INDEX:I

    if-ne v6, p0, :cond_12

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_6
    return-object v1

    :catch_1
    move-exception p0

    const-string v1, "ChangeAction"

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/utils/BixbyUtils;->buildActionResult(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final setSize(I)Landroid/os/Bundle;
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->mExtraBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->mExtraBundle:Landroid/os/Bundle;

    const-string v0, "change"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/bixby/control/actions/BaseAction;->excuteAction(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
