.class public final Lcom/android/settings/notification/zen/ZenRuleInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public configurationActivity:Landroid/content/ComponentName;

.field public packageLabel:Ljava/lang/CharSequence;

.field public packageName:Ljava/lang/String;

.field public ruleInstanceLimit:I

.field public serviceComponent:Landroid/content/ComponentName;

.field public settingsAction:Ljava/lang/String;

.field public title:Ljava/lang/String;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/settings/notification/zen/ZenRuleInfo;

    if-eq v3, v2, :cond_1

    goto/16 :goto_6

    :cond_1
    check-cast p1, Lcom/android/settings/notification/zen/ZenRuleInfo;

    iget v2, p0, Lcom/android/settings/notification/zen/ZenRuleInfo;->ruleInstanceLimit:I

    iget v3, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->ruleInstanceLimit:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenRuleInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    :cond_4
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenRuleInfo;->title:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->title:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    :cond_6
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_7
    iget-object v2, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_2
    return v1

    :cond_8
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_9

    iget-object v3, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_9
    iget-object v2, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_a

    :goto_3
    return v1

    :cond_a
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_b

    iget-object v3, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_4

    :cond_b
    iget-object v2, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_c

    :goto_4
    return v1

    :cond_c
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    if-eqz p0, :cond_d

    iget-object p1, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5

    :cond_d
    iget-object p0, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    if-nez p0, :cond_e

    goto :goto_5

    :cond_e
    move v0, v1

    :goto_5
    return v0

    :cond_f
    :goto_6
    return v1
.end method
