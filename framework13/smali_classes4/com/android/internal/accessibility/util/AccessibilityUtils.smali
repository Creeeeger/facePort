.class public final Lcom/android/internal/accessibility/util/AccessibilityUtils;
.super Ljava/lang/Object;
.source "AccessibilityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/accessibility/util/AccessibilityUtils$A11yTextChangeType;
    }
.end annotation


# static fields
.field public static final blacklist NONE:I = 0x0

.field public static final blacklist PARCELABLE_SPAN:I = 0x2

.field public static final blacklist TEXT:I = 0x1


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method private static blacklist allowPerformInEmergencyMode(Ljava/lang/String;)Z
    .locals 3
    .param p0, "targetName"    # Ljava/lang/String;

    .line 292
    const-string v0, "com.samsung.accessibility/com.samsung.accessibility.shortcut.AccessibilityHomepageActivityShortcut"

    .line 294
    .local v0, "ACCESSIBILITY":Ljava/lang/String;
    const-string v1, "com.samsung.accessibility/com.samsung.accessibility.assistantmenu.serviceframework.AssistantMenuService"

    .line 296
    .local v1, "ASSISTANT_MENU":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 297
    const-string v2, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "com.samsung.android.accessibility.talkback/com.samsung.android.marvin.talkback.TalkBackService"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 296
    :goto_1
    return v2
.end method

.method private static blacklist disAllowPerformInDexMode(Ljava/lang/String;)Z
    .locals 2
    .param p0, "targetName"    # Ljava/lang/String;

    .line 312
    const-string v0, "com.samsung.accessibility/com.samsung.accessibility.assistantmenu.serviceframework.AssistantMenuService"

    .line 314
    .local v0, "ASSISTANT_MENU":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static blacklist getAccessibilityServiceFragmentType(Landroid/accessibilityservice/AccessibilityServiceInfo;)I
    .locals 5
    .param p0, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 162
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 164
    .local v0, "targetSdk":I
    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v1, v1, 0x100

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 167
    .local v1, "requestA11yButton":Z
    :goto_0
    const/16 v4, 0x1d

    if-gt v0, v4, :cond_1

    .line 168
    return v3

    .line 170
    :cond_1
    if-eqz v1, :cond_2

    .line 171
    goto :goto_1

    .line 172
    :cond_2
    const/4 v2, 0x2

    .line 170
    :goto_1
    return v2
.end method

.method public static blacklist getEnabledServicesFromSettings(Landroid/content/Context;I)Ljava/util/Set;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 88
    nop

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 88
    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "enabledServicesSetting":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 95
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 96
    .local v1, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x3a

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 98
    .local v2, "colonSplitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, v0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 100
    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 101
    .local v4, "componentNameString":Ljava/lang/String;
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 103
    .local v5, "enabledService":Landroid/content/ComponentName;
    if-eqz v5, :cond_1

    .line 104
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    .end local v4    # "componentNameString":Ljava/lang/String;
    .end local v5    # "enabledService":Landroid/content/ComponentName;
    :cond_1
    goto :goto_0

    .line 108
    :cond_2
    return-object v1
.end method

.method public static blacklist isAccessControlEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static blacklist isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentId"    # Ljava/lang/String;

    .line 184
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 186
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    nop

    .line 187
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 189
    .local v1, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 190
    .local v3, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 192
    const/4 v2, 0x1

    return v2

    .line 194
    .end local v3    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v4    # "id":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 196
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static blacklist isSetupWizard(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public static blacklist isSideKeySupported()Z
    .locals 2

    .line 329
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FUNCTION_KEY_MENU"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isUserSetupCompleted(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static blacklist makeToastForDexMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "targetLabel"    # Ljava/lang/String;

    .line 301
    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->disAllowPerformInDexMode(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 302
    const v0, 0x104014b

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v1

    .line 303
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "message":Ljava/lang/String;
    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v4, 0x103012b

    invoke-direct {v3, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 305
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 306
    return v2

    .line 308
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public static blacklist makeToastForEmergencyMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "targetLabel"    # Ljava/lang/String;

    .line 281
    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->allowPerformInEmergencyMode(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 282
    const v0, 0x104014c

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v1

    .line 283
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "message":Ljava/lang/String;
    new-instance v3, Landroid/view/ContextThemeWrapper;

    const v4, 0x103012b

    invoke-direct {v3, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v3, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 285
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 286
    return v2

    .line 288
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private static blacklist parcelableSpansEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 10
    .param p0, "before"    # Ljava/lang/CharSequence;
    .param p1, "after"    # Ljava/lang/CharSequence;

    .line 234
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    .line 235
    .local v0, "spansA":[Ljava/lang/Object;
    sget-object v1, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    .line 236
    .local v1, "spansB":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 237
    .local v2, "a":Landroid/text/Spanned;
    const/4 v3, 0x0

    .line 238
    .local v3, "b":Landroid/text/Spanned;
    instance-of v4, p0, Landroid/text/Spanned;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 239
    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    .line 240
    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    move-result v4

    const-class v6, Landroid/text/ParcelableSpan;

    invoke-interface {v2, v5, v4, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 242
    :cond_0
    instance-of v4, p1, Landroid/text/Spanned;

    if-eqz v4, :cond_1

    .line 243
    move-object v3, p1

    check-cast v3, Landroid/text/Spanned;

    .line 244
    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v4

    const-class v6, Landroid/text/ParcelableSpan;

    invoke-interface {v3, v5, v4, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 246
    :cond_1
    array-length v4, v0

    array-length v6, v1

    if-eq v4, v6, :cond_2

    .line 247
    return v5

    .line 249
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v0

    if-ge v4, v6, :cond_5

    .line 250
    aget-object v6, v0, v4

    .line 251
    .local v6, "thisSpan":Ljava/lang/Object;
    aget-object v7, v1, v4

    .line 252
    .local v7, "otherSpan":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v8, v9, :cond_4

    .line 253
    invoke-interface {v2, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v3, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 254
    invoke-interface {v2, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v3, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 255
    invoke-interface {v2, v6}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v3, v7}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    if-eq v8, v9, :cond_3

    goto :goto_1

    .line 249
    .end local v6    # "thisSpan":Ljava/lang/Object;
    .end local v7    # "otherSpan":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 256
    .restart local v6    # "thisSpan":Ljava/lang/Object;
    .restart local v7    # "otherSpan":Ljava/lang/Object;
    :cond_4
    :goto_1
    return v5

    .line 259
    .end local v4    # "i":I
    .end local v6    # "thisSpan":Ljava/lang/Object;
    .end local v7    # "otherSpan":Ljava/lang/Object;
    :cond_5
    const/4 v4, 0x1

    return v4
.end method

.method public static blacklist setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 116
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    .line 117
    return-void
.end method

.method public static blacklist setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;ZI)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 124
    invoke-static {p0, p3}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v0

    .line 127
    .local v0, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    move-object v0, v1

    .line 131
    :cond_0
    if-eqz p2, :cond_1

    .line 132
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 137
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v1, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 139
    .local v3, "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    .end local v3    # "enabledService":Landroid/content/ComponentName;
    goto :goto_1

    .line 144
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 145
    .local v2, "enabledServicesBuilderLength":I
    if-lez v2, :cond_3

    .line 146
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 149
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 149
    const-string v5, "enabled_accessibility_services"

    invoke-static {v3, v5, v4, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 152
    return-void
.end method

.method public static blacklist textOrSpanChanged(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "before"    # Ljava/lang/CharSequence;
    .param p1, "after"    # Ljava/lang/CharSequence;

    .line 222
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x1

    return v0

    .line 225
    :cond_0
    instance-of v0, p0, Landroid/text/Spanned;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 226
    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->parcelableSpansEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    const/4 v0, 0x2

    return v0

    .line 230
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist turnOffAccessControl(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 270
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 274
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string v3, "access_control_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 276
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.app.accessctrl.ACTION_STOP_SELF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 278
    return-void
.end method

.method public static blacklist updateProfile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetName"    # Ljava/lang/String;

    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.accessibility.action.UPDATE_PROFILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.accessibility"

    const-string v2, "com.samsung.accessibility.homepage.features.UpdateProfileReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v1, "component"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 324
    return-void
.end method
