.class public abstract Lcom/android/settings/notification/modes/ZenModesFragmentBase;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

.field public mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mSettingsObserver:Lcom/android/settings/notification/modes/ZenModesFragmentBase$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ZenModesSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_adjust_volume"

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/notification/modes/ZenModesFragmentBase$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/modes/ZenModesFragmentBase$SettingsObserver;-><init>(Lcom/android/settings/notification/modes/ZenModesFragmentBase;)V

    iput-object v0, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mSettingsObserver:Lcom/android/settings/notification/modes/ZenModesFragmentBase$SettingsObserver;

    return-void
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ZenModesSettings"

    return-object p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settings/notification/modes/ZenModesBackend;->sInstance:Lcom/android/settings/notification/modes/ZenModesBackend;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/notification/modes/ZenModesBackend;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/notification/modes/ZenModesBackend;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/notification/modes/ZenModesBackend;->sInstance:Lcom/android/settings/notification/modes/ZenModesBackend;

    :cond_0
    sget-object v0, Lcom/android/settings/notification/modes/ZenModesBackend;->sInstance:Lcom/android/settings/notification/modes/ZenModesBackend;

    iput-object v0, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mSettingsObserver:Lcom/android/settings/notification/modes/ZenModesFragmentBase$SettingsObserver;

    iget-object p1, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase$SettingsObserver;->this$0:Lcom/android/settings/notification/modes/ZenModesFragmentBase;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/android/settings/notification/modes/ZenModesFragmentBase$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase$SettingsObserver;->this$0:Lcom/android/settings/notification/modes/ZenModesFragmentBase;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/android/settings/notification/modes/ZenModesFragmentBase$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final onDetach()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->mSettingsObserver:Lcom/android/settings/notification/modes/ZenModesFragmentBase$SettingsObserver;

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenModesFragmentBase$SettingsObserver;->this$0:Lcom/android/settings/notification/modes/ZenModesFragmentBase;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/notification/modes/ZenModesFragmentBase;->updateZenModeState()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract updateZenModeState()V
.end method
