.class public Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mActionName:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mExtra:Landroid/os/Bundle;

.field public mIsCheckSupport:Z

.field public final mParamList:Ljava/util/List;

.field public mSpecificParamsMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mIsCheckSupport:Z

    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "onoff"

    const-string v2, "keyword"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mExtra:Landroid/os/Bundle;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->parsingBundle()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->createParamIfNeeded()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->getKeysNeedConvertingKey()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    iget-object v1, v0, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;->key:Ljava/lang/String;

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "value"

    iput-object v1, v0, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;->key:Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public createParamIfNeeded()V
    .locals 0

    return-void
.end method

.method public getKeysNeedConvertingKey()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getParameterValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    iget-object v1, v0, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;->key:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, v0, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;->value:Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->getParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isNewDex()Z
    .locals 1

    const-string/jumbo v0, "newDex"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->getParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public parsingBundle()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mExtra:Landroid/os/Bundle;

    const-string v1, "BaseActionParam"

    if-nez v0, :cond_0

    const-string p0, "mExtra is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v2, "params"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "supported"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mIsCheckSupport:Z

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v3, v5, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    new-instance v8, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    invoke-direct {v8, v4, v6}, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "key : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mExtra:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/samsung/android/sdk/bixby2/util/BixbyUtils;->getBixbyContextInfo(Landroid/os/Bundle;)Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->bixbyClientTaskId:Ljava/lang/Integer;

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "task_id"

    invoke-direct {v2, v4, v0}, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mParamList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mExtra:Landroid/os/Bundle;

    const-string v2, "isFolded"

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    :goto_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/settings/bixby/control/actionparam/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_8
    :goto_4
    const-string/jumbo p0, "params is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
