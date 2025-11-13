.class public Lcom/samsung/android/settings/inputmethod/EnableCombinationKeyHelper;
.super Ljava/lang/Object;
.source "EnableCombinationKeyHelper.java"


# direct methods
.method public static getLanguageShortcutSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->comma:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {p0}, Lcom/samsung/android/settings/inputmethod/EnableCombinationKeyHelper;->isEnableShiftSpace(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->language_shortcut_shift_space:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 69
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/inputmethod/EnableCombinationKeyHelper;->isEnableCtrlSpace(Landroid/content/Context;)Z

    move-result v3

    const-string v4, " "

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/settings/R$string;->language_shortcut_control_space:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    .line 78
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/settings/inputmethod/EnableCombinationKeyHelper;->isEnableLeftAltShift(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->language_shortcut_leftalt_shift:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isEnableCombinationKey(Landroid/content/Context;I)Z
    .locals 2

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_language_change_combination_key"

    const/4 v1, 0x7

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isEnableCtrlSpace(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x2

    .line 34
    invoke-static {p0, v0}, Lcom/samsung/android/settings/inputmethod/EnableCombinationKeyHelper;->isEnableCombinationKey(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static isEnableLeftAltShift(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x4

    .line 44
    invoke-static {p0, v0}, Lcom/samsung/android/settings/inputmethod/EnableCombinationKeyHelper;->isEnableCombinationKey(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static isEnableShiftSpace(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    .line 24
    invoke-static {p0, v0}, Lcom/samsung/android/settings/inputmethod/EnableCombinationKeyHelper;->isEnableCombinationKey(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static setCombinationKeyState(Landroid/content/Context;IZ)V
    .locals 3

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_language_change_combination_key"

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    or-int/2addr p1, v0

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    not-int p1, p1

    and-int/2addr p1, v0

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method
