.class public final Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field public final ZEN_MODE_URI:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeSettingsBase;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/zen/ZenModeSettingsBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/zen/ZenModeSettingsBase;

    iget-object p1, p1, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "zen_mode"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const-string p1, "zen_mode_config_etag"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/zen/ZenModeSettingsBase;

    sget-boolean v1, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->DEBUG:Z

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->updateZenMode(Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/zen/ZenModeSettingsBase;

    iget-object p1, p1, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "zen_mode_config_etag"

    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/zen/ZenModeSettingsBase;

    iget-object p2, p2, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mCurrentETag:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v0

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/zen/ZenModeSettingsBase;

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, v0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mCurrentETag:Ljava/lang/String;

    :goto_0
    iput-object p1, v0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mCurrentETag:Ljava/lang/String;

    iget-object p1, v0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object p2, p1, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p2

    iput-object p2, p1, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    :cond_3
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase$SettingsObserver;->this$0:Lcom/android/settings/notification/zen/ZenModeSettingsBase;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onZenModeConfigChanged()V

    :cond_4
    return-void
.end method
