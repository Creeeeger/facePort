.class Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$4;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
.source "LockScreenNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 588
    invoke-direct {p0}, Lcom/samsung/android/settings/general/BaseResetSettingsData;-><init>()V

    return-void
.end method


# virtual methods
.method public resetSettings(Landroid/content/Context;)V
    .locals 3

    .line 591
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_show_notifications"

    const/4 v1, 0x1

    .line 593
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "lockscreen_minimizing_notification"

    const/4 v2, -0x2

    .line 595
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 597
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$integer;->config_default_lock_noticard_opacity:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const-string v0, "lock_noticard_opacity"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "lock_screen_show_silent_notifications"

    .line 600
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "lock_screen_allow_private_notifications"

    .line 602
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 605
    sget-boolean p1, Lcom/samsung/android/settings/Rune;->NOTIS_LOCKSCREEN_SHOW_CONTENT_WHEN_UNLOCKED_DEFAULT_ON:Z

    const-string v0, "lock_screen_allow_private_notifications_when_unsecure"

    .line 604
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "notification_text_color_inversion"

    .line 607
    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x0

    const-string v0, "lockscreen_notifications_option"

    .line 609
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
