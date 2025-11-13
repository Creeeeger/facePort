.class final Lcom/android/settings/notification/SettingPrefController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/notification/SettingPrefController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/SettingPrefController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->this$0:Lcom/android/settings/notification/SettingPrefController;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p1, p0, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->this$0:Lcom/android/settings/notification/SettingPrefController;

    iget-object p1, p1, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    iget-object p1, p1, Lcom/android/settings/notification/SettingPref;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->this$0:Lcom/android/settings/notification/SettingPrefController;

    iget-object p1, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    invoke-static {p0}, Lcom/android/settings/notification/SettingPrefController;->access$100(Lcom/android/settings/notification/SettingPrefController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
