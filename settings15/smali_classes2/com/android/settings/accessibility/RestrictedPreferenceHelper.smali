.class public final Lcom/android/settings/accessibility/RestrictedPreferenceHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mContext:Landroid/content/Context;

.field public final mDpm:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mAppOps:Landroid/app/AppOpsManager;

    return-void
.end method

.method public static putBasicExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Landroid/content/ComponentName;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "preference_key"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p1, "intro"

    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p1, "summary"

    invoke-virtual {p0, p1, p4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p1, "component_name"

    invoke-virtual {p0, p1, p7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "animated_image_res"

    invoke-virtual {p0, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "html_description"

    invoke-virtual {p0, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "metrics_category"

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static putSettingsExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f14011c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "settings_title"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "settings_component_name"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static putTileServiceExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "tile_service_component_name"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final createAccessibilityActivityPreferenceList(Ljava/util/List;)Ljava/util/List;
    .locals 11

    iget-object v0, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    new-instance v9, Lcom/android/settings/accessibility/AccessibilityActivityPreference;

    iget-object v10, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v9, v10, v7, v6, v5}, Lcom/android/settings/accessibility/AccessibilityActivityPreference;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/accessibilityservice/AccessibilityShortcutInfo;)V

    invoke-virtual {p0, v9, v1, v8}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->setRestrictedPreferenceEnabled(Lcom/android/settingslib/RestrictedPreference;Ljava/util/List;Z)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public final createAccessibilityServicePreferenceList(Ljava/util/List;)Ljava/util/List;
    .locals 14

    iget-object v0, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v10}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v8, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    new-instance v13, Lcom/android/settings/accessibility/AccessibilityServicePreference;

    iget-object v7, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v6, v13

    move v11, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/settings/accessibility/AccessibilityServicePreference;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/accessibilityservice/AccessibilityServiceInfo;Z)V

    invoke-virtual {p0, v13, v1, v12}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->setRestrictedPreferenceEnabled(Lcom/android/settingslib/RestrictedPreference;Ljava/util/List;Z)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public final setRestrictedPreferenceEnabled(Lcom/android/settingslib/RestrictedPreference;Ljava/util/List;Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedPreference;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v0

    :goto_1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroid/security/Flags;->extendEcmToAllSettings()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedPreference;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/settingslib/RestrictedPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    const-string v4, "android:bind_accessibility_service"

    invoke-virtual {v3, v4, v2}, Lcom/android/settingslib/RestrictedPreferenceHelper;->checkEcmRestrictionAndSetDisabled(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/settingslib/RestrictedPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iget-boolean v2, v2, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByEcm:Z

    if-eqz v2, :cond_2

    move p2, v1

    :cond_2
    if-nez p2, :cond_5

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedPreference;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    invoke-static {p0, p3, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfAccessibilityServiceDisallowed(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_9

    :cond_4
    iget-object p0, p1, Lcom/android/settingslib/RestrictedPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iget-boolean p0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByEcm:Z

    if-nez p0, :cond_10

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto/16 :goto_9

    :cond_5
    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto/16 :goto_9

    :cond_6
    if-eqz p2, :cond_a

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v3, p1, Lcom/android/settingslib/RestrictedPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    if-eqz v3, :cond_7

    iget v3, v3, Lcom/android/settingslib/RestrictedPreferenceHelper;->uid:I

    goto :goto_3

    :cond_7
    const/4 v3, -0x1

    :goto_3
    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedPreference;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x77

    invoke-virtual {v2, v5, v3, v4}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110194

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_9

    if-eqz v2, :cond_9

    const/4 p2, 0x3

    if-ne v2, p2, :cond_8

    goto :goto_4

    :cond_8
    move p2, v1

    goto :goto_5

    :cond_9
    :goto_4
    move p2, v0

    :goto_5
    move v2, p2

    goto :goto_6

    :catch_0
    move v2, v0

    goto :goto_6

    :cond_a
    move v2, v1

    :goto_6
    if-nez p2, :cond_f

    if-eqz p3, :cond_b

    goto :goto_8

    :cond_b
    iget-object p0, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedPreference;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    invoke-static {p0, p3, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfAccessibilityServiceDisallowed(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_9

    :cond_c
    if-nez v2, :cond_e

    iget-object p0, p1, Lcom/android/settingslib/RestrictedPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iget-boolean p2, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByEcm:Z

    if-eq p2, v0, :cond_d

    iput-boolean v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByEcm:Z

    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->updateDisabledState()V

    goto :goto_7

    :cond_d
    move v0, v1

    :goto_7
    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_9

    :cond_e
    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_9

    :cond_f
    :goto_8
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_10
    :goto_9
    return-void
.end method
