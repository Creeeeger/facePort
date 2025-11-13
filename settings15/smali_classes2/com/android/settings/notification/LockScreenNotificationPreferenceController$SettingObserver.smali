.class public final Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

.field public final LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/settings/notification/LockScreenNotificationPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/LockScreenNotificationPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "lock_screen_allow_private_notifications"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    const-string p1, "lock_screen_show_notifications"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->updateLockscreenNotifications()V

    iget-object p0, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/LockScreenNotificationPreferenceController;

    iget p1, p0, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->mProfileUserId:I

    const/16 p2, -0x2710

    if-eq p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->updateLockscreenNotificationsForProfile()V

    :cond_1
    return-void
.end method
