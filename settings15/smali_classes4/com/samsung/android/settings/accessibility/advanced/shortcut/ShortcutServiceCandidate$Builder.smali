.class public Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutServiceCandidate$Builder;
.super Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public info:Landroid/accessibilityservice/AccessibilityServiceInfo;


# virtual methods
.method public final bridge synthetic build(Landroid/content/Context;I)Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutServiceCandidate$Builder;->build(Landroid/content/Context;I)Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutServiceCandidate;

    move-result-object p0

    return-object p0
.end method

.method public final build(Landroid/content/Context;I)Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutServiceCandidate;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutServiceCandidate$Builder;->info:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-static {p2}, Lcom/android/settings/accessibility/AccessibilityUtil;->getAccessibilityServiceFragmentType(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result p2

    if-nez p2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutServiceCandidate$Builder;->buildEntry(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutServiceCandidate;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutServiceCandidate$Builder;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->category:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, p2, p1, v1, p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate;-><init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final buildEntry(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->componentName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutServiceCandidate$Builder;->info:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->priority:I

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutServiceCandidate$Builder;->info:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
