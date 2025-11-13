.class public final Lcom/samsung/android/settings/accessibility/hearing/AmplifyAmbientSoundPreferenceFragment$1;
.super Lcom/samsung/android/settings/accessibility/base/search/AccessibilityBaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getRawDataToIndex(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/base/search/AccessibilityBaseSearchIndexProvider;->isPageSearchEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    const v0, 0x7f140313

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_AMPLIFY_AMBIENT_SOUND_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    const v1, 0x7f1401ac

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
