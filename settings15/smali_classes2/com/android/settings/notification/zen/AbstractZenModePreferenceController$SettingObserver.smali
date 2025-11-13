.class public final Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field public final ZEN_MODE_DURATION_URI:Landroid/net/Uri;

.field public final ZEN_MODE_URI:Landroid/net/Uri;

.field public mPreference:Landroidx/preference/Preference;

.field public final synthetic this$0:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "zen_mode"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    const-string p1, "zen_mode_config_etag"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    const-string p1, "zen_duration"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_DURATION_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_DURATION_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getZenMode()I

    move-result p1

    iget-object p2, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;

    iget v2, p2, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mCurrentZen:I

    if-eq v2, p1, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    iput p1, p2, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mCurrentZen:I

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->access$000(Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "zen_mode_config_etag"

    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;

    iget-object p2, p2, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mCurrentETag:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 v0, p2, 0x1

    iget-object p2, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p2, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mCurrentETag:Ljava/lang/String;

    :goto_1
    iput-object p1, p2, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mCurrentETag:Ljava/lang/String;

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getZenDuration()I

    move-result p1

    iget-object p2, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;

    iget v2, p2, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mDuration:I

    if-eq v2, p1, :cond_6

    move v0, v1

    :cond_6
    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move p1, v2

    :goto_2
    iput p1, p2, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mDuration:I

    :goto_3
    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;

    iget-object p1, p1, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object p2, p1, Lcom/android/settings/notification/zen/ZenModeBackend;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p2

    iput-object p2, p1, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    :cond_9
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;

    iget-object p1, p1, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object p2, p1, Lcom/android/settings/notification/zen/ZenModeBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "zen_mode"

    iget v1, p1, Lcom/android/settings/notification/zen/ZenModeBackend;->mZenMode:I

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Lcom/android/settings/notification/zen/ZenModeBackend;->mZenMode:I

    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;

    iget-object p2, p1, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    if-eqz p2, :cond_a

    invoke-virtual {p1, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    :cond_a
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_b
    return-void
.end method
