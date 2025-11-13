.class public Lcom/android/settings/accessibility/AccessibilitySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AccessibilitySettings.java"


# static fields
.field private static final CATEGORIES:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private final mCategoryToPrefCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsForeground:Z

.field private mNeedPreferencesUpdate:Z

.field private final mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroidx/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/preference/Preference;",
            "Landroidx/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field final mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$Tzbj37jHkUmMnx2knTszs4t4Z3o(Lcom/android/settings/accessibility/AccessibilitySettings;Ljava/util/List;Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilitySettings;->lambda$getInstalledAccessibilityList$1(Ljava/util/List;Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$l2nL1nyiW6d1LZRtKoC9g-yRg-w(Lcom/android/settings/accessibility/AccessibilitySettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->lambda$new$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateRunnable(Lcom/android/settings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 6

    const-string v0, "screen_reader_category"

    const-string v1, "captions_category"

    const-string v2, "audio_category"

    const-string v3, "display_category"

    const-string v4, "interaction_control_category"

    const-string/jumbo v5, "user_installed_services_category"

    .line 71
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    .line 495
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$3;

    sget v1, Lcom/android/settings/R$xml;->accessibility_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$3;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 150
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$1;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 111
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 140
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    .line 142
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    .line 144
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNeedPreferencesUpdate:Z

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mIsForeground:Z

    .line 153
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    .line 156
    invoke-virtual {v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "accessibility_button_targets"

    .line 160
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "accessibility_shortcut_target_service"

    .line 161
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    .line 163
    new-instance v2, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;->registerKeysToObserverCallback(Ljava/util/List;Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver$ContentObserverCallback;)V

    return-void
.end method

.method private containsTargetNameInList(Ljava/util/List;Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityShortcutInfo;",
            ">;",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ")Z"
        }
    .end annotation

    .line 430
    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 431
    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 434
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 435
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 436
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 438
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 439
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private getInstalledAccessibilityList(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/RestrictedPreference;",
            ">;"
        }
    .end annotation

    .line 401
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 402
    new-instance v1, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;

    invoke-direct {v1, p1}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;)V

    .line 406
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 405
    invoke-virtual {v0, p1, v2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    .line 410
    new-instance v2, Ljava/util/ArrayList;

    .line 411
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 412
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 416
    invoke-virtual {v1, p1}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->createAccessibilityActivityPreferenceList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 419
    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->createAccessibilityServicePreferenceList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 423
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static getServiceDescription(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;
    .locals 0

    if-eqz p2, :cond_0

    .line 291
    iget-boolean p2, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    if-eqz p2, :cond_0

    .line 292
    sget p1, Lcom/android/settings/R$string;->accessibility_description_state_stopped:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 295
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getServiceSummary(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;
    .locals 4

    if-eqz p2, :cond_0

    .line 252
    iget-boolean v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    if-eqz v0, :cond_0

    .line 253
    sget p1, Lcom/android/settings/R$string;->accessibility_summary_state_stopped:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 257
    :cond_0
    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->getAccessibilityServiceFragmentType(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 259
    new-instance p2, Landroid/content/ComponentName;

    .line 260
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {p0, p2}, Lcom/android/settings/accessibility/AccessibilityUtil;->getUserShortcutTypesFromSettings(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p2

    if-eqz p2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    if-eqz p2, :cond_2

    .line 265
    sget p2, Lcom/android/settings/R$string;->accessibility_summary_shortcut_enabled:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    .line 266
    :cond_2
    sget p2, Lcom/android/settings/R$string;->accessibility_summary_shortcut_disabled:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 269
    sget p2, Lcom/android/settings/R$string;->accessibility_summary_state_enabled:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    .line 270
    :cond_4
    sget p2, Lcom/android/settings/R$string;->accessibility_summary_state_disabled:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 273
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 274
    sget v0, Lcom/android/settings/R$string;->preference_summary_default_combination:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    aput-object p1, v3, v2

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move-object p2, p0

    :goto_2
    return-object p2
.end method

.method private initializeAllPreferences()V
    .locals 4

    const/4 v0, 0x0

    .line 310
    :goto_0
    sget-object v1, Lcom/android/settings/accessibility/AccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 311
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    .line 312
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V
    .locals 3

    .line 447
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 448
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    .line 449
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 450
    aget-object v1, p2, v0

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 451
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$getInstalledAccessibilityList$1(Ljava/util/List;Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 0

    .line 413
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilitySettings;->containsTargetNameInList(Ljava/util/List;Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;)V
    .locals 0

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->onContentChanged()V

    return-void
.end method

.method private updateCategoryOrderFromArray(Ljava/lang/String;I)V
    .locals 6

    .line 463
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 464
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceCategory;

    .line 465
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    .line 466
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_2

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_1

    .line 469
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    aget-object v5, p2, v3

    .line 470
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 471
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updatePreferenceCategoryVisibility(Ljava/lang/String;)V
    .locals 0

    .line 484
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceCategory;

    .line 485
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 174
    sget p0, Lcom/android/settings/R$string;->help_uri_accessibility:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AccessibilitySettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 234
    sget p0, Lcom/android/settings/R$xml;->accessibility_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 179
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 185
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.accessibility.ACCESSIBILITY_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x14000000

    .line 186
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 188
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method onContentChanged()V
    .locals 1

    .line 302
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 305
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNeedPreferencesUpdate:Z

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 194
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 195
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializeAllPreferences()V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 229
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 204
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNeedPreferencesUpdate:Z

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNeedPreferencesUpdate:Z

    :cond_0
    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mIsForeground:Z

    .line 215
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    .line 220
    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mIsForeground:Z

    .line 221
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    return-void
.end method

.method updateAllPreferences()V
    .locals 0

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateSystemPreferences()V

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateServicePreferences()V

    return-void
.end method

.method protected updateServicePreferences()V
    .locals 12

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    .line 340
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    move v2, v1

    .line 341
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 342
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    .line 343
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceCategory;

    .line 344
    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    :cond_0
    sget v0, Lcom/android/settings/R$array;->config_preinstalled_screen_reader_services:I

    const-string v2, "screen_reader_category"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 349
    sget v0, Lcom/android/settings/R$array;->config_preinstalled_captions_services:I

    const-string v3, "captions_category"

    invoke-direct {p0, v3, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 351
    sget v0, Lcom/android/settings/R$array;->config_preinstalled_audio_services:I

    const-string v4, "audio_category"

    invoke-direct {p0, v4, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 353
    sget v0, Lcom/android/settings/R$array;->config_preinstalled_display_services:I

    const-string v5, "display_category"

    invoke-direct {p0, v5, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 355
    sget v0, Lcom/android/settings/R$array;->config_preinstalled_interaction_control_services:I

    const-string v6, "interaction_control_category"

    invoke-direct {p0, v6, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 358
    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getInstalledAccessibilityList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 361
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    const-string/jumbo v8, "user_installed_services_category"

    .line 362
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/preference/PreferenceCategory;

    .line 364
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    :goto_1
    if-ge v1, v8, :cond_2

    .line 365
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/RestrictedPreference;

    .line 366
    invoke-virtual {v9}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "component_name"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    .line 370
    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 371
    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/preference/PreferenceCategory;

    goto :goto_2

    :cond_1
    move-object v10, v7

    .line 373
    :goto_2
    invoke-virtual {v10, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 374
    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    invoke-interface {v11, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 378
    :cond_2
    sget v0, Lcom/android/settings/R$array;->config_order_screen_reader_services:I

    invoke-direct {p0, v2, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateCategoryOrderFromArray(Ljava/lang/String;I)V

    .line 380
    sget v0, Lcom/android/settings/R$array;->config_order_captions_services:I

    invoke-direct {p0, v3, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateCategoryOrderFromArray(Ljava/lang/String;I)V

    .line 382
    sget v0, Lcom/android/settings/R$array;->config_order_audio_services:I

    invoke-direct {p0, v4, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateCategoryOrderFromArray(Ljava/lang/String;I)V

    .line 384
    sget v0, Lcom/android/settings/R$array;->config_order_interaction_control_services:I

    invoke-direct {p0, v6, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateCategoryOrderFromArray(Ljava/lang/String;I)V

    .line 386
    sget v0, Lcom/android/settings/R$array;->config_order_display_services:I

    invoke-direct {p0, v5, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateCategoryOrderFromArray(Ljava/lang/String;I)V

    .line 390
    invoke-virtual {v7}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 391
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    .line 393
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 397
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->updatePreferenceCategoryVisibility(Ljava/lang/String;)V

    return-void
.end method

.method protected updateSystemPreferences()V
    .locals 0

    return-void
.end method
