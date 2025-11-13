.class public abstract Lcom/samsung/android/settings/actions/templatebuilder/CommandTemplateBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static build(Lcom/android/settings/core/BasePreferenceController;)Lcom/samsung/android/sdk/command/template/CommandTemplate;
    .locals 13

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlType()I

    move-result v0

    sget-object v1, Lcom/samsung/android/sdk/command/template/CommandTemplate;->ERROR_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    const/4 v2, 0x1

    const-string v3, "Command/CommandTemplateBuilder"

    const-string v4, " : "

    if-eq v0, v2, :cond_e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    const/16 v2, 0x64

    if-eq v0, v2, :cond_d

    const/16 v2, 0x65

    if-eq v0, v2, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate$1;

    goto/16 :goto_5

    :cond_0
    instance-of v0, p0, Lcom/android/settings/core/SecSingleChoicePreferenceController;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Lcom/android/settings/core/SecSingleChoicePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getEntries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getSubEntries()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getEntryValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getImageEntries()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getSelectedValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "buildSingleChoiceTemplate() "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    move v3, p0

    :goto_0
    if-ge v3, v7, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v10, v9

    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, v3, :cond_2

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_2

    :cond_2
    move v11, p0

    :goto_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-le v12, v3, :cond_3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    :cond_3
    if-eqz v9, :cond_4

    new-instance v12, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;

    invoke-direct {v12, v4, v10, v11, v9}, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    new-instance v1, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;

    const-string/jumbo p0, "singlechoice"

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v1, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryPrimaryTitleList:Ljava/util/ArrayList;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v1, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntrySecondaryTitleList:Ljava/util/ArrayList;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v1, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryValueList:Ljava/util/ArrayList;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v1, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryImageList:Ljava/util/ArrayList;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v1, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntries:Ljava/util/List;

    iput-object v0, v1, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mCurrentActiveValue:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;

    iget-object v2, v0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mPrimaryTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v1, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryPrimaryTitleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v2, v0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mSecondaryTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v1, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntrySecondaryTitleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget v2, v0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mIconResId:I

    if-lez v2, :cond_9

    iget-object v3, v1, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryImageList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v0, v0, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;->mValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v1, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;->mEntryValueList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "more than one entry must be added"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "active value must be set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_4
    move-object p0, v1

    goto :goto_5

    :cond_d
    instance-of v0, p0, Lcom/android/settings/core/SliderPreferenceController;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Lcom/android/settings/core/SliderPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/core/SliderPreferenceController;->getMin()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/settings/core/SliderPreferenceController;->getMax()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/settings/core/SliderPreferenceController;->getSliderPosition()I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "buildRangeTemplate() "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/sdk/command/template/SliderTemplate;

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/sdk/command/template/SliderTemplate;-><init>(FFF)V

    move-object v1, p0

    goto :goto_4

    :cond_e
    instance-of v0, p0, Lcom/android/settings/core/TogglePreferenceController;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Lcom/android/settings/core/TogglePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/core/TogglePreferenceController;->isChecked()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "buildToggleTemplate() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    const-string/jumbo p0, "toggle"

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/command/template/CommandTemplate;-><init>(Ljava/lang/String;)V

    iput-boolean v0, v1, Lcom/samsung/android/sdk/command/template/ToggleTemplate;->mIsChecked:Z

    goto :goto_4

    :goto_5
    return-object p0
.end method
