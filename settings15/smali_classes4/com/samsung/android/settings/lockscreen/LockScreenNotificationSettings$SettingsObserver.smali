.class public final Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final LOCKSCREEN_NOTIFICATION_STYLE:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "lockscreen_minimizing_notification"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$SettingsObserver;->LOCKSCREEN_NOTIFICATION_STYLE:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    sget-object p1, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->updateVisible$1()V

    return-void
.end method

.method public final setListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$SettingsObserver;->LOCKSCREEN_NOTIFICATION_STYLE:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
