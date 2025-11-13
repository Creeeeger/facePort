.class public final Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;
.super Lcom/samsung/android/settings/bixby/actionhandler/BaseActionHandler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAccessibilityMenu:Ljava/lang/String;

.field public mActionHashMap:Ljava/util/HashMap;

.field public mActionName:Ljava/lang/String;

.field public mBixbyLocale:Ljava/lang/String;

.field public mFeatureKey:Ljava/lang/String;

.field public mFeatureValue:Ljava/lang/String;

.field public mParamBundle:Landroid/os/Bundle;


# virtual methods
.method public final executeActionInternal(Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "viv.accessibilityApp.TurnOnSoundDetector"

    iget-object v3, v1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    iput-object v3, v0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mActionName:Ljava/lang/String;

    iget-object v3, v1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mExtra:Landroid/os/Bundle;

    invoke-static {v3}, Lcom/samsung/android/sdk/bixby2/util/BixbyUtils;->getBixbyContextInfo(Landroid/os/Bundle;)Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/samsung/android/sdk/bixby2/util/BixbyContextInfo;->locale:Ljava/lang/String;

    iput-object v3, v0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mBixbyLocale:Ljava/lang/String;

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "actionName : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mActionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mBixbyLocale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mBixbyLocale:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", bundle : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityActionHandler"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mBixbyLocale:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, "mBixbyLocale == null"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mParamBundle:Landroid/os/Bundle;

    iget-object v3, v1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mExtra:Landroid/os/Bundle;

    iget-object v5, v0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mActionHashMap:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mActionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, ""

    if-eqz v6, :cond_2

    move-object v5, v7

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->setActionParams(Landroid/os/Bundle;)V

    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v6, "content://new.com.samsung.accessibility.bixby"

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mExtra:Landroid/os/Bundle;

    iget-object v5, v0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mActionName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v9, "viv.accessibilityApp.CheckSoundDetectorCondition"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v9, "viv.accessibilityApp.GetDisclaimerPopup"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    :sswitch_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_1
    packed-switch v8, :pswitch_data_0

    move-object v6, v7

    goto :goto_4

    :pswitch_0
    iget-object v5, v0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mActionName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "turn_on"

    :goto_2
    move-object v7, v2

    goto :goto_3

    :cond_6
    const-string v2, "get"

    goto :goto_2

    :goto_3
    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->setActionParams(Landroid/os/Bundle;)V

    :goto_4
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v7, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    :cond_7
    iget-object v2, v0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mAccessibilityMenu:Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string v3, "AssistantMenu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mAccessibilityMenu:Ljava/lang/String;

    const-string v3, "UniversalSwitch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mAccessibilityMenu:Ljava/lang/String;

    const-string v3, "AddUniversalSwitch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mAccessibilityMenu:Ljava/lang/String;

    const-string v3, "UniversalSwitchSettings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mAccessibilityMenu:Ljava/lang/String;

    const-string v3, "UniversalSwitchTutorial"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mAccessibilityMenu:Ljava/lang/String;

    const-string v3, "InteractionControl"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mAccessibilityMenu:Ljava/lang/String;

    const-string v3, "VoiceAccess"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mAccessibilityMenu:Ljava/lang/String;

    const-string v3, "SingleTapMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v6, "content://com.samsung.android.settings.accessibility.bixby"

    :cond_8
    iget-object v1, v1, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mParamBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v5, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v0, "result"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "accessibilityMenu"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "menuValue"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "description"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "currentStatus"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "levelValue"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "menuName"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 p0, v1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "createResult() failed : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "bundle : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", result : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", accessibilityMenu : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", menuValue : "

    const-string v3, ", description : "

    invoke-static {v0, v5, v2, v7, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", currentStatus : "

    const-string v3, ", levelValue : "

    invoke-static {v0, v9, v2, v11, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", menuName : "

    const-string v3, ", jsonObject : "

    invoke-static {v0, v13, v2, v15, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1c9cc669 -> :sswitch_2
        0x52a48d4b -> :sswitch_1
        0x5a4f841e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final isAffectedByKnoxPolicy()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setActionParams(Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v0, "params"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mFeatureKey:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mFeatureValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mFeatureKey:Ljava/lang/String;

    const-string v3, "menuValue"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mAccessibilityMenu:Ljava/lang/String;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "for params  key : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mFeatureValue:Ljava/lang/String;

    const-string v3, "AccessibilityActionHandler"

    invoke-static {v0, v2, v3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mFeatureKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mFeatureValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "params  key : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mFeatureValue:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mParamBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mFeatureKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mFeatureValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mActionName:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mParamBundle:Landroid/os/Bundle;

    const-string v1, "ActionName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mBixbyLocale:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/bixby/actionhandler/AccessibilityActionHandler;->mParamBundle:Landroid/os/Bundle;

    const-string v0, "BixbyLocale"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
