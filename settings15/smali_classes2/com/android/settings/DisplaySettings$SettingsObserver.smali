.class public final Lcom/android/settings/DisplaySettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final LOW_POWER_MODE_ENABLED:Landroid/net/Uri;

.field public final POWER_SAVING_TURN_ON_DARK_MODE_ENABLED:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DisplaySettings$SettingsObserver;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "low_power"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings$SettingsObserver;->LOW_POWER_MODE_ENABLED:Landroid/net/Uri;

    const-string p1, "pms_settings_dark_mode_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings$SettingsObserver;->POWER_SAVING_TURN_ON_DARK_MODE_ENABLED:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/DisplaySettings$SettingsObserver;->LOW_POWER_MODE_ENABLED:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/DisplaySettings$SettingsObserver;->POWER_SAVING_TURN_ON_DARK_MODE_ENABLED:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/android/settings/DisplaySettings$SettingsObserver;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object p2, p1, Lcom/android/settings/DisplaySettings;->mLayoutSecDarkMode:Landroid/view/View;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/DisplaySettings;->isPowerSavingAndTurnOnDarkModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/DisplaySettings$SettingsObserver;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mLayoutSecDarkMode:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/DisplaySettings$SettingsObserver;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mLayoutSecDarkMode:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/DisplaySettings$SettingsObserver;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object p1, p1, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/DisplaySettings$SettingsObserver;->LOW_POWER_MODE_ENABLED:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/android/settings/DisplaySettings$SettingsObserver;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object p1, p1, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/DisplaySettings$SettingsObserver;->POWER_SAVING_TURN_ON_DARK_MODE_ENABLED:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/DisplaySettings$SettingsObserver;->this$0:Lcom/android/settings/DisplaySettings;

    iget-object p1, p1, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
