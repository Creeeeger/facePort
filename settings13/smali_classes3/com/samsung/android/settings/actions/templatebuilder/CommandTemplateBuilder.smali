.class public final Lcom/samsung/android/settings/actions/templatebuilder/CommandTemplateBuilder;
.super Ljava/lang/Object;
.source "CommandTemplateBuilder.java"


# direct methods
.method public static build(Lcom/android/settings/core/BasePreferenceController;)Lcom/samsung/android/sdk/command/template/CommandTemplate;
    .locals 2

    .line 22
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getControlType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    .line 38
    sget-object p0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->NO_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/actions/templatebuilder/CommandTemplateBuilder;->buildSingleChoiceTemplate(Lcom/android/settings/core/BasePreferenceController;)Lcom/samsung/android/sdk/command/template/CommandTemplate;

    move-result-object p0

    goto :goto_0

    .line 29
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/actions/templatebuilder/CommandTemplateBuilder;->buildRangeTemplate(Lcom/android/settings/core/BasePreferenceController;)Lcom/samsung/android/sdk/command/template/CommandTemplate;

    move-result-object p0

    goto :goto_0

    .line 24
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/settings/actions/templatebuilder/CommandTemplateBuilder;->buildToggleTemplate(Lcom/android/settings/core/BasePreferenceController;)Lcom/samsung/android/sdk/command/template/CommandTemplate;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static buildRangeTemplate(Lcom/android/settings/core/BasePreferenceController;)Lcom/samsung/android/sdk/command/template/CommandTemplate;
    .locals 9

    .line 54
    instance-of v0, p0, Lcom/android/settings/core/SliderPreferenceController;

    if-eqz v0, :cond_0

    .line 55
    check-cast p0, Lcom/android/settings/core/SliderPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getMin()I

    move-result v0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getMax()I

    move-result v1

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/core/SliderPreferenceController;->getSliderPosition()I

    move-result p0

    .line 59
    new-instance v8, Lcom/samsung/android/sdk/command/template/SliderTemplate;

    int-to-float v3, v0

    int-to-float v4, v1

    int-to-float v5, p0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/command/template/SliderTemplate;-><init>(FFFFLjava/lang/CharSequence;)V

    return-object v8

    .line 62
    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->ERROR_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    return-object p0
.end method

.method private static buildSingleChoiceTemplate(Lcom/android/settings/core/BasePreferenceController;)Lcom/samsung/android/sdk/command/template/CommandTemplate;
    .locals 12

    .line 66
    instance-of v0, p0, Lcom/android/settings/core/SecSingleChoicePreferenceController;

    if-eqz v0, :cond_4

    .line 67
    check-cast p0, Lcom/android/settings/core/SecSingleChoicePreferenceController;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getEntries()Ljava/util/ArrayList;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getSubEntries()Ljava/util/ArrayList;

    move-result-object v1

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getEntryValues()Ljava/util/ArrayList;

    move-result-object v2

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getImageEntries()Ljava/util/ArrayList;

    move-result-object v3

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getSelectedValue()Ljava/lang/String;

    move-result-object p0

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 76
    new-instance v5, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Builder;

    invoke-direct {v5, p0}, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Builder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    move v6, p0

    :goto_0
    if-ge v6, v4, :cond_3

    .line 79
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v6, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_1

    :cond_0
    move-object v9, v8

    :goto_1
    if-eqz v3, :cond_1

    .line 81
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v6, :cond_1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_2

    :cond_1
    move v10, p0

    :goto_2
    if-eqz v2, :cond_2

    .line 82
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, v6, :cond_2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 84
    :cond_2
    new-instance v11, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;

    invoke-direct {v11, v7, v9, v10, v8}, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v5, v11}, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Builder;->addEntry(Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Entry;)Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {v5}, Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate$Builder;->build()Lcom/samsung/android/sdk/command/template/SingleChoiceTemplate;

    move-result-object p0

    return-object p0

    .line 90
    :cond_4
    sget-object p0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->ERROR_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    return-object p0
.end method

.method private static buildToggleTemplate(Lcom/android/settings/core/BasePreferenceController;)Lcom/samsung/android/sdk/command/template/CommandTemplate;
    .locals 1

    .line 46
    instance-of v0, p0, Lcom/android/settings/core/TogglePreferenceController;

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lcom/samsung/android/sdk/command/template/ToggleTemplate;

    check-cast p0, Lcom/android/settings/core/TogglePreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/core/TogglePreferenceController;->isChecked()Z

    move-result p0

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/command/template/ToggleTemplate;-><init>(Z)V

    return-object v0

    .line 50
    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/command/template/CommandTemplate;->ERROR_TEMPLATE:Lcom/samsung/android/sdk/command/template/CommandTemplate;

    return-object p0
.end method
