.class public Lcom/android/settings/accessibility/RestrictedPreferenceHelper;
.super Ljava/lang/Object;
.source "RestrictedPreferenceHelper.java"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 63
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 65
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mAppOps:Landroid/app/AppOpsManager;

    return-void
.end method

.method private createRestrictedPreference(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedPreference;
    .locals 2

    .line 234
    new-instance v0, Lcom/android/settingslib/RestrictedPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p6, p7}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 237
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 240
    iget-object p0, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    const/4 p1, -0x1

    invoke-static {p0, p4, p1}, Lcom/android/settings/Utils;->getAdaptiveIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 241
    invoke-virtual {v0, p5}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 242
    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/TwoTargetPreference;->setIconSize(I)V

    const/4 p0, 0x0

    .line 243
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 244
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    return-object v0
.end method

.method private getAccessibilityServiceFragmentTypeName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;
    .locals 0

    .line 215
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->getAccessibilityServiceFragmentType(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const-string p0, "nothing"

    return-object p0

    .line 222
    :cond_0
    const-class p0, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 220
    :cond_1
    const-class p0, Lcom/android/settings/accessibility/InvisibleToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 218
    :cond_2
    const-class p0, Lcom/android/settings/accessibility/VolumeShortcutToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private putBasicExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Landroid/content/ComponentName;)V
    .locals 0

    .line 313
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "preference_key"

    .line 314
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "title"

    .line 315
    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p1, "intro"

    .line 316
    invoke-virtual {p0, p1, p4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "summary"

    .line 317
    invoke-virtual {p0, p1, p5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p1, "component_name"

    .line 318
    invoke-virtual {p0, p1, p8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "animated_image_res"

    .line 319
    invoke-virtual {p0, p1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "html_description"

    .line 320
    invoke-virtual {p0, p1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putServiceExtras(Lcom/android/settingslib/RestrictedPreference;Landroid/content/pm/ResolveInfo;Ljava/lang/Boolean;)V
    .locals 0

    .line 334
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "resolve_info"

    .line 336
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 337
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "checked"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private putSettingsExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 352
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 354
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    iget-object p0, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->accessibility_menu_item_settings:I

    .line 356
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "settings_title"

    .line 355
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "settings_component_name"

    .line 357
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private putTileServiceExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 377
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    .line 378
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 379
    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "tile_service_component_name"

    .line 379
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setRestrictedPreferenceEnabled(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;ZZ)V
    .locals 0

    if-nez p3, :cond_2

    if-eqz p4, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 258
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    .line 257
    invoke-static {p0, p2, p3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfAccessibilityServiceDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 260
    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 262
    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 253
    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public createAccessibilityActivityPreferenceList(Ljava/util/List;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/RestrictedPreference;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 153
    iget-object v0, v9, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 154
    invoke-static {v0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v10

    .line 155
    iget-object v0, v9, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 156
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 155
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v11

    .line 158
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    .line 159
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v12, :cond_3

    move-object/from16 v8, p1

    .line 163
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    .line 164
    invoke-virtual {v7}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 165
    invoke-virtual {v7}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 167
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 168
    iget-object v2, v9, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 169
    iget-object v2, v9, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v2}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v3

    .line 170
    const-class v2, Lcom/android/settings/accessibility/LaunchAccessibilityActivityPreferenceFragment;

    .line 171
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 173
    iget-object v2, v9, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 174
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v4

    if-nez v4, :cond_0

    .line 175
    iget-object v2, v9, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$drawable;->ic_accessibility_generic:I

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_0
    move-object v4, v2

    .line 179
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    move/from16 v18, v2

    move-object/from16 v2, v16

    move-object v14, v6

    move-object/from16 v6, v17

    move-object v8, v7

    move/from16 v7, v18

    .line 178
    invoke-direct/range {v0 .. v7}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->createRestrictedPreference(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedPreference;

    move-result-object v7

    .line 181
    invoke-interface {v10, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v11, :cond_2

    .line 185
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 187
    :goto_2
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v7, v2, v1, v0}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->setRestrictedPreferenceEnabled(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;ZZ)V

    .line 191
    invoke-virtual {v7}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 193
    iget-object v0, v9, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadIntro(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    .line 195
    iget-object v0, v9, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-virtual {v8}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getAnimatedImageRes()I

    move-result v6

    .line 197
    iget-object v0, v9, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->loadHtmlDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v17

    .line 198
    invoke-virtual {v8}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual {v8}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getTileServiceName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v18, v10

    move-object v10, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v11

    move-object v11, v7

    move-object/from16 v7, v17

    move/from16 v17, v12

    move-object v12, v8

    move-object v8, v14

    .line 203
    invoke-direct/range {v0 .. v8}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putBasicExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Landroid/content/ComponentName;)V

    .line 205
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v11, v0, v10}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putSettingsExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v11, v0, v12}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putTileServiceExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, v16

    move/from16 v12, v17

    move-object/from16 v10, v18

    goto/16 :goto_0

    :cond_3
    return-object v13
.end method

.method public createAccessibilityServicePreferenceList(Ljava/util/List;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/RestrictedPreference;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 78
    iget-object v0, v9, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {v0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v10

    .line 80
    iget-object v0, v9, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 81
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 80
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v11

    .line 82
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    .line 84
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v12, :cond_3

    move-object/from16 v8, p1

    .line 88
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 89
    invoke-virtual {v7}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 90
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 91
    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 95
    iget-object v0, v9, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 96
    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 97
    iget-object v0, v9, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->getServiceSummary(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object v17

    .line 99
    invoke-direct {v9, v7}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->getAccessibilityServiceFragmentTypeName(Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/String;

    move-result-object v18

    .line 101
    iget-object v0, v9, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    if-nez v2, :cond_0

    .line 103
    iget-object v0, v9, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$drawable;->ic_accessibility_generic:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    move-object/from16 v19, v0

    .line 107
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p0

    move/from16 v20, v2

    move-object/from16 v2, v16

    move v14, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v10

    move-object v10, v6

    move-object/from16 v6, v19

    move-object/from16 v21, v7

    move/from16 v7, v20

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->createRestrictedPreference(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedPreference;

    move-result-object v7

    if-eqz v11, :cond_2

    .line 114
    invoke-interface {v11, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 116
    :goto_2
    invoke-direct {v9, v7, v6, v0, v14}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->setRestrictedPreferenceEnabled(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;ZZ)V

    .line 120
    invoke-virtual {v7}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual/range {v21 .. v21}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getAnimatedImageRes()I

    move-result v19

    .line 122
    iget-object v0, v9, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v1, v21

    invoke-virtual {v1, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadIntro(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 123
    iget-object v0, v9, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v14}, Lcom/android/settings/accessibility/AccessibilitySettings;->getServiceDescription(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object v5

    .line 125
    iget-object v0, v9, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadHtmlDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v20

    .line 126
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getTileServiceName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v21, v11

    move-object v11, v1

    move-object v1, v7

    move/from16 v22, v12

    move-object v12, v3

    move-object/from16 v3, v16

    move/from16 v16, v15

    move-object v15, v6

    move/from16 v6, v19

    move-object/from16 v19, v13

    move-object v13, v7

    move-object/from16 v7, v20

    move-object/from16 v8, v17

    .line 131
    invoke-direct/range {v0 .. v8}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putBasicExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Landroid/content/ComponentName;)V

    .line 133
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v9, v13, v10, v0}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putServiceExtras(Lcom/android/settingslib/RestrictedPreference;Landroid/content/pm/ResolveInfo;Ljava/lang/Boolean;)V

    .line 134
    invoke-direct {v9, v13, v15, v12}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putSettingsExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-direct {v9, v13, v15, v11}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->putTileServiceExtras(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    .line 139
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v16, 0x1

    move-object v13, v0

    move-object/from16 v10, v18

    move-object/from16 v11, v21

    move/from16 v12, v22

    goto/16 :goto_0

    :cond_3
    move-object v0, v13

    return-object v0
.end method
