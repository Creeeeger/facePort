.class public Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/accessibility/base/logging/A11yStatusLoggingProvider;


# instance fields
.field private installedAppsManager:Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;

.field private preference:Landroidx/preference/Preference;

.field private restrictedPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/RestrictedPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Jkh9ENG6fdIEyRrSPfSNHnLdlao(Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController;->onAppsChanged(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P1ylyR3AtwxlfVcCSItAwsn0fJw(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController;->lambda$getStatusLoggingData$2(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RpKU8B7p2ILth8WpwyZ-WRX8ESo(Lcom/android/settingslib/RestrictedPreference;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController;->lambda$getSummary$0(Lcom/android/settingslib/RestrictedPreference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SUKOYBB6vAYMQnihdw0HOCWGfIs(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ServiceInfo;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController;->lambda$getStatusLoggingData$1(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$getStatusLoggingData$1(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ServiceInfo;
    .locals 0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object p0
.end method

.method private static synthetic lambda$getStatusLoggingData$2(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 2

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$getSummary$0(Lcom/android/settingslib/RestrictedPreference;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "checked"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private onAppsChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/RestrictedPreference;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController;->restrictedPreferences:Ljava/util/List;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController;->preference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController;->preference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f060af9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getStatusLoggingData(Landroid/content/Context;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p1

    const-string v0, "NotInstalled"

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController$$ExternalSyntheticLambda2;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    sget-object v1, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_ACCESSIBILITY_MENU:Landroid/content/ComponentName;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Off"

    const-string v4, "On"

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_0
    move-object v1, v3

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_GOOGLE_SELECT_TO_SPEAK:Landroid/content/ComponentName;

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v4

    goto :goto_1

    :cond_2
    move-object v2, v3

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    sget-object v5, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_SWITCH_ACCESS:Landroid/content/ComponentName;

    invoke-interface {p0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move-object v0, v4

    goto :goto_2

    :cond_4
    move-object v0, v3

    :cond_5
    :goto_2
    move-object v8, v0

    move-object v4, v1

    move-object v6, v2

    goto :goto_3

    :cond_6
    move-object v4, v0

    move-object v6, v4

    move-object v8, v6

    :goto_3
    const-string v5, "A11YS6802"

    const-string v7, "A11YS6803"

    const-string v3, "A11YS6801"

    invoke-static/range {v3 .. v8}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController;->restrictedPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController;->restrictedPreferences:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v1

    long-to-int v1, v1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f14123a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f14123b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f12001b

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f141239

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public init(Landroidx/lifecycle/Lifecycle;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController;->installedAppsManager:Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;

    new-instance p1, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController;)V

    iput-object p1, v0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->listener:Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager$OnInstalledAppsChangedListener;

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController;->installedAppsManager:Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->preferences:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->preferences:Ljava/util/List;

    iget-object v2, v0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->getInstalledAccessibilityList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->preferences:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController;->restrictedPreferences:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/home/InstalledAppsPreferenceController;->installedAppsManager:Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->getNewAppList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f141236    # 1.968203E38f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setDotContentDescription(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
