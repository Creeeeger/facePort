.class public abstract Lcom/android/settings/accessibility/AccessibilityUtil;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    return-void
.end method

.method public static getAccessibilityServiceFragmentType(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .locals 4

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget p0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 p0, p0, 0x100

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    const/16 v3, 0x1d

    if-gt v0, v3, :cond_1

    return v1

    :cond_1
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    :goto_1
    return v2
.end method

.method public static getUserShortcutTypesFromSettings(Landroid/content/Context;Landroid/content/ComponentName;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v0

    const/4 v1, 0x2

    invoke-static {p0, v1, p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    const/16 v1, 0x10

    invoke-static {p0, v1, p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x10

    :cond_1
    const/16 v1, 0x200

    invoke-static {p0, v1, p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_2

    or-int/lit16 v0, v0, 0x200

    :cond_2
    return v0
.end method

.method public static hasValueInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getShortcutTargetsFromSettings(Landroid/content/Context;II)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static hasValuesInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z
    .locals 3

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0, v1, p2}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValueInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-static {p0, v2, p2}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValueInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    invoke-static {p0, v2, p2}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValueInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    const/16 v1, 0x200

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_3

    invoke-static {p0, v1, p2}, Lcom/android/settings/accessibility/AccessibilityUtil;->hasValueInSettings(Landroid/content/Context;ILandroid/content/ComponentName;)Z

    move-result p0

    or-int/2addr v0, p0

    :cond_3
    return v0
.end method

.method public static isFloatingMenuEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_button_mode"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isGestureNavigateEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e00ef

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTouchExploreEnabled(Landroid/content/Context;)Z
    .locals 1

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    return p0
.end method

.method public static optInAllValuesToSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V
    .locals 2

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/view/accessibility/AccessibilityManager;->enableShortcutsForTargets(ZILjava/util/Set;I)V

    :cond_0
    return-void
.end method

.method public static optInValueToSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V
    .locals 2

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/view/accessibility/AccessibilityManager;->enableShortcutsForTargets(ZILjava/util/Set;I)V

    :cond_0
    return-void
.end method

.method public static optOutAllValuesFromSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V
    .locals 2

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/view/accessibility/AccessibilityManager;->enableShortcutsForTargets(ZILjava/util/Set;I)V

    :cond_0
    return-void
.end method

.method public static optOutValueFromSettings(Landroid/content/Context;ILandroid/content/ComponentName;)V
    .locals 2

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/view/accessibility/AccessibilityManager;->enableShortcutsForTargets(ZILjava/util/Set;I)V

    :cond_0
    return-void
.end method
