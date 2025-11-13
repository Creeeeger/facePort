.class public abstract Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field public static mZenModeConfigWrapper:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$ZenModeConfigWrapper;


# instance fields
.field public final KEY:Ljava/lang/String;

.field public final mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

.field public mCurrentETag:Ljava/lang/String;

.field public mCurrentZen:I

.field public mDuration:I

.field public final mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public mScreen:Landroidx/preference/PreferenceScreen;

.field protected mSettingObserver:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mCurrentZen:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mCurrentETag:Ljava/lang/String;

    iput v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mDuration:I

    new-instance v0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$ZenModeConfigWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mZenModeConfigWrapper:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    iput-object p2, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object p2, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic access$000(Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;-><init>(Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;

    iput-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    :cond_1
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    return-object p0
.end method

.method public final getZenDuration()I
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "zen_duration"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getZenMode()I
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mZenMode:I

    const-string v1, "zen_mode"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final onDestroy()V
    .locals 0

    const/4 p0, 0x0

    sput-object p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mZenModeConfigWrapper:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, v0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, v0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_DURATION_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    :cond_0
    return-void
.end method
