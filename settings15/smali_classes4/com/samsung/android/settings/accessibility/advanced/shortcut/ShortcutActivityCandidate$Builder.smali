.class public final Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;
.super Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final activityInfo:Landroid/content/pm/ActivityInfo;

.field public blockedFlag:I

.field public className:Ljava/lang/String;

.field public exclusiveFeature:Ljava/lang/String;

.field public iconRes:I

.field public labelRes:I


# direct methods
.method public constructor <init>(Landroid/content/pm/ActivityInfo;)V
    .locals 2

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->labelRes:I

    iput v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->iconRes:I

    iput v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->blockedFlag:I

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->labelRes:I

    iput p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->iconRes:I

    iput p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->blockedFlag:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-void
.end method


# virtual methods
.method public final build(Landroid/content/Context;I)Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate;
    .locals 4

    iget v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->blockedFlag:I

    and-int/2addr p2, v0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->buildEntry(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_0
    iget v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->iconRes:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "current_sec_active_themepackage"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :cond_3
    move-object v0, v1

    :catch_0
    :goto_0
    new-instance p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->exclusiveFeature:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->category:Ljava/lang/String;

    invoke-direct {p1, p2, v0, v1, p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate;-><init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final bridge synthetic build(Landroid/content/Context;I)Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->build(Landroid/content/Context;I)Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate;

    move-result-object p0

    return-object p0
.end method

.method public final buildEntry(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;
    .locals 4

    const-string v0, "ShortcutActivityCandidate"

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->className:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "dummy"

    invoke-static {p1, v1, v3}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const-class p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->className:Ljava/lang/String;

    const-string/jumbo v1, "returns unavailable."

    invoke-static {p1, p0, v1, v0}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_0
    const-class p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->className:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "is invalid."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutActivityCandidate$Builder;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string p1, ""

    :goto_0
    new-instance v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->componentName:Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->priority:I

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
