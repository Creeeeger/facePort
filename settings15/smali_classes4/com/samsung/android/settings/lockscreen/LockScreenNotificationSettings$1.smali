.class public final Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 8

    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$1;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "show_content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x2

    const-string v3, "lock_screen_allow_private_notifications"

    const/16 v4, 0x1164

    const/16 v5, 0x1153

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v7, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mShowContentPreference:Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;

    iget-object v0, p1, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mShowContentBtn:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    invoke-virtual {p1, v7}, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->setSettingsBtnEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mHideContentPreference:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    const-string p0, "Show content"

    invoke-static {v5, v4, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    return v7

    :cond_1
    const-string v1, "hide_content"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v6, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mShowContentPreference:Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;

    iget-object v0, p1, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mShowContentBtn:Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_2
    invoke-virtual {p1, v6}, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->setSettingsBtnEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mHideContentPreference:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    const-string p0, "Hide content"

    invoke-static {v5, v4, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    return v7

    :cond_3
    return v6
.end method
