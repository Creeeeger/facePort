.class public final Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# static fields
.field public static final EXCLUDE_COMPONENT_NAME_SET:Ljava/util/Set;

.field public static final EXCLUDE_PACKAGE_SET:Ljava/util/Set;


# instance fields
.field public final context:Landroid/content/Context;

.field public final handler:Landroid/os/Handler;

.field public listener:Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager$OnInstalledAppsChangedListener;

.field public final packageMonitorReceiver:Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager$1;

.field public final preferences:Ljava/util/List;

.field public final settingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com.samsung.accessibility"

    const-string v1, "com.android.settings"

    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->EXCLUDE_PACKAGE_SET:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_SAMSUNG_TALKBACK:Landroid/content/ComponentName;

    sget-object v1, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_GOOGLE_TALKBACK:Landroid/content/ComponentName;

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_BIXBY_AGENT:Landroid/content/ComponentName;

    sget-object v3, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_SPEAK_KEYBOARD_INPUT_ALOUD:Landroid/content/ComponentName;

    invoke-static {v0, v1, v2, v3}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->EXCLUDE_COMPONENT_NAME_SET:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager$1;-><init>(Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;)V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->packageMonitorReceiver:Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager$1;

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    invoke-direct {v1, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->settingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->preferences:Ljava/util/List;

    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->context:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;)V

    iget-object p0, v1, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;->mUrisToCallback:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static checkValidApp(Lcom/android/settingslib/RestrictedPreference;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "checkValidApp - key is wrong. key :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InstalledAppsManager"

    invoke-static {v0, p0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    sget-object p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->EXCLUDE_PACKAGE_SET:Ljava/util/Set;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->EXCLUDE_COMPONENT_NAME_SET:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static getInstalledAccessibilityList(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, p0, v2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->createAccessibilityActivityPreferenceList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/RestrictedPreferenceHelper;->createAccessibilityServicePreferenceList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/RestrictedPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->checkValidApp(Lcom/android/settingslib/RestrictedPreference;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->checkValidApp(Lcom/android/settingslib/RestrictedPreference;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v1
.end method


# virtual methods
.method public final getNewAppList()Ljava/util/List;
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getAccessibilitySharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "installedAppMigrated"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "alreadyInstalledApps"

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "SERVICE_SET_KEY"

    const-string/jumbo v6, "prefKey"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "valueType"

    const-string/jumbo v7, "stringSet"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->URI_ACCESSIBILITY_PROVIDER:Landroid/net/Uri;

    const-string v10, "GET_a11ysharedpreferences"

    const-string v11, "INSTALLED_ACCESSIBILITY_BADGE_MANAGER"

    invoke-virtual {v8, v9, v10, v11, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v8, "result"

    if-eqz v4, :cond_0

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v12, "SHORTCUT_SET_KEY"

    invoke-virtual {v4, v6, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v9, v10, v11, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getAccessibilitySharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->preferences:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->packageMonitorReceiver:Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager$1;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->settingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public final onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->packageMonitorReceiver:Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager$1;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->settingsContentObserver:Lcom/android/settings/accessibility/AccessibilitySettingsContentObserver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final updateRestrictedPreferences()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->preferences:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->preferences:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->getInstalledAccessibilityList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->listener:Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager$OnInstalledAppsChangedListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager;->preferences:Ljava/util/List;

    invoke-interface {v0, p0}, Lcom/samsung/android/settings/accessibility/install/InstalledAppsManager$OnInstalledAppsChangedListener;->onAppsChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method
