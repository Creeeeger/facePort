.class public Lcom/samsung/android/settings/as/audio/SecVolumeSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SecVolumeSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/audio/SecVolumeSettings$IconCallback;,
        Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private mAccessibilityController:Lcom/samsung/android/settings/as/audio/SecA11yVolumePreferenceController;

.field private mBixbyController:Lcom/samsung/android/settings/as/audio/SecBixbyVolumePreferenceController;

.field private mContext:Landroid/content/Context;

.field private mDNDStatusController:Lcom/samsung/android/settings/as/audio/SecDNDStatusPreferenceController;

.field private final mDNDStatusObserver:Landroid/database/ContentObserver;

.field private mDTMFController:Lcom/samsung/android/settings/as/audio/SecDTMFVolumePreferenceController;

.field private final mHandler:Landroid/os/Handler;

.field private mMediaController:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;

.field private mNotificationController:Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;

.field private mRingController:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;

.field private mSystemController:Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

.field private final mVolumeCallback:Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;

.field private mVolumeKeyControlCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBixbyController(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/as/audio/SecBixbyVolumePreferenceController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mBixbyController:Lcom/samsung/android/settings/as/audio/SecBixbyVolumePreferenceController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDNDStatusController(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/as/audio/SecDNDStatusPreferenceController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mDNDStatusController:Lcom/samsung/android/settings/as/audio/SecDNDStatusPreferenceController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaController(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mMediaController:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationController(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mNotificationController:Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRingController(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mRingController:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSystemController(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mSystemController:Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVolumeCallback(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVolumeKeyControlCategory(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mVolumeKeyControlCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misZenModeEnabled(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->isZenModeEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/as/audio/SecVolumeSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/as/audio/SecVolumeSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 376
    new-instance v0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    .line 409
    new-instance v0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 44
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$IconCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$IconCallback;-><init>(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;Lcom/samsung/android/settings/as/audio/SecVolumeSettings$IconCallback-IA;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;-><init>(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;

    .line 64
    new-instance v0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$1;-><init>(Lcom/samsung/android/settings/as/audio/SecVolumeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mDNDStatusObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/as/audio/SecVolumeSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/settings/as/audio/SecVolumeSettings;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 121
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    new-instance p2, Lcom/samsung/android/settings/as/audio/SecDTMFExplanationPreferenceController;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/as/audio/SecDTMFExplanationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance p2, Lcom/samsung/android/settings/as/audio/SecVolumeInsetCategoryPreferenceController;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/as/audio/SecVolumeInsetCategoryPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private isZenModeEnabled()Z
    .locals 2

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "zen_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/as/audio/SecVolumeSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecVolumeSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xfa6

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 86
    sget p0, Lcom/android/settings/R$xml;->as_volume_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 141
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 143
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mContext:Landroid/content/Context;

    .line 146
    const-class p1, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mRingController:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;

    .line 147
    const-class p1, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mMediaController:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;

    .line 148
    const-class p1, Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mNotificationController:Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;

    .line 149
    const-class p1, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mSystemController:Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

    .line 150
    const-class p1, Lcom/samsung/android/settings/as/audio/SecA11yVolumePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/as/audio/SecA11yVolumePreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mAccessibilityController:Lcom/samsung/android/settings/as/audio/SecA11yVolumePreferenceController;

    .line 151
    const-class p1, Lcom/samsung/android/settings/as/audio/SecBixbyVolumePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/as/audio/SecBixbyVolumePreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mBixbyController:Lcom/samsung/android/settings/as/audio/SecBixbyVolumePreferenceController;

    .line 152
    const-class p1, Lcom/samsung/android/settings/as/audio/SecDTMFVolumePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/as/audio/SecDTMFVolumePreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mDTMFController:Lcom/samsung/android/settings/as/audio/SecDTMFVolumePreferenceController;

    .line 154
    const-class p1, Lcom/samsung/android/settings/as/audio/SecDNDStatusPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/as/audio/SecDNDStatusPreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mDNDStatusController:Lcom/samsung/android/settings/as/audio/SecDNDStatusPreferenceController;

    .line 156
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mRingController:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;

    if-eqz p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mRingController:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mMediaController:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;

    if-eqz p1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mMediaController:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mNotificationController:Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;

    if-eqz p1, :cond_2

    .line 165
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mNotificationController:Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 168
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mSystemController:Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

    if-eqz p1, :cond_3

    .line 169
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mSystemController:Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 172
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mAccessibilityController:Lcom/samsung/android/settings/as/audio/SecA11yVolumePreferenceController;

    if-eqz p1, :cond_4

    .line 173
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mAccessibilityController:Lcom/samsung/android/settings/as/audio/SecA11yVolumePreferenceController;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 176
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mBixbyController:Lcom/samsung/android/settings/as/audio/SecBixbyVolumePreferenceController;

    if-eqz p1, :cond_5

    .line 177
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mBixbyController:Lcom/samsung/android/settings/as/audio/SecBixbyVolumePreferenceController;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 180
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mDTMFController:Lcom/samsung/android/settings/as/audio/SecDTMFVolumePreferenceController;

    if-eqz p1, :cond_6

    .line 181
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mDTMFController:Lcom/samsung/android/settings/as/audio/SecDTMFVolumePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_6
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 132
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 136
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "category_volume_key_control"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mVolumeKeyControlCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 232
    sget v0, Lcom/android/settings/R$string;->sec_volume_limiter_title:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 234
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDetach()V
    .locals 3

    .line 188
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mRingController:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mRingController:Lcom/samsung/android/settings/as/audio/SecRingVolumePreferenceController;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mMediaController:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mMediaController:Lcom/samsung/android/settings/as/audio/SecMediaVolumePreferenceController;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mNotificationController:Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;

    if-eqz v0, :cond_2

    .line 198
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mNotificationController:Lcom/samsung/android/settings/as/audio/SecNotificationVolumePreferenceController;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mSystemController:Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

    if-eqz v0, :cond_3

    .line 202
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mSystemController:Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mAccessibilityController:Lcom/samsung/android/settings/as/audio/SecA11yVolumePreferenceController;

    if-eqz v0, :cond_4

    .line 206
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mAccessibilityController:Lcom/samsung/android/settings/as/audio/SecA11yVolumePreferenceController;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 209
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mBixbyController:Lcom/samsung/android/settings/as/audio/SecBixbyVolumePreferenceController;

    if-eqz v0, :cond_5

    .line 210
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mBixbyController:Lcom/samsung/android/settings/as/audio/SecBixbyVolumePreferenceController;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 213
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mDTMFController:Lcom/samsung/android/settings/as/audio/SecDTMFVolumePreferenceController;

    if-eqz v0, :cond_6

    .line 214
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mDTMFController:Lcom/samsung/android/settings/as/audio/SecDTMFVolumePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_6
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 251
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onKeyDown():"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "SecVolumeSettings"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x18

    if-eq p1, p0, :cond_0

    const/16 p0, 0x19

    if-eq p1, p0, :cond_0

    const/16 p0, 0xa4

    if-eq p1, p0, :cond_0

    const/16 p0, 0xa8

    if-eq p1, p0, :cond_0

    const/16 p0, 0xa9

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 239
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 240
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/samsung/android/settings/as/audio/SecVolumeLimiterSettings;

    .line 241
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_volume_limiter_title:I

    .line 241
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->getMetricsCategory()I

    move-result p0

    .line 242
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return v1

    .line 246
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 221
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mVolumeCallback:Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings$VolumePreferenceCallback;->stopSample()V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mDNDStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/SettingsActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setOnKeyEventListener(Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyEventListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 101
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mVolumeKeyControlCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->isZenModeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/as/utils/SoundUtils;->isMuteAllSoundEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 107
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->setOnKeyEventListener(Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyEventListener;)V

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "zen_mode"

    .line 112
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecVolumeSettings;->mDNDStatusObserver:Landroid/database/ContentObserver;

    .line 111
    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
