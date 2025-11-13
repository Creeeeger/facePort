.class public abstract Lcom/android/settings/notification/zen/ZenModeSettingsBase;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

.field public mContext:Landroid/content/Context;

.field public mCurrentETag:Ljava/lang/String;

.field public final mHandler:Landroid/os/Handler;

.field public final mSettingsObserver:Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;

.field public mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ZenModeSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_adjust_volume"

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;-><init>(Lcom/android/settings/notification/zen/ZenModeSettingsBase;)V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mSettingsObserver:Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mCurrentETag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ZenModeSettings"

    return-object p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->setBackend(Lcom/android/settings/notification/zen/ZenModeBackend;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->updateZenMode(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mSettingsObserver:Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/zen/ZenModeSettingsBase;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->updateZenMode(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mSettingsObserver:Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;

    iget-object v1, v0, Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/zen/ZenModeSettingsBase;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/zen/ZenModeSettingsBase;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    return-void
.end method

.method public onZenModeConfigChanged()V
    .locals 0

    return-void
.end method

.method public setBackend(Lcom/android/settings/notification/zen/ZenModeBackend;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    return-void
.end method

.method public final updateZenMode(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    iget v2, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mZenMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mZenMode:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mZenMode:I

    sget-boolean v0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateZenMode mZenMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mZenMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZenModeSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
