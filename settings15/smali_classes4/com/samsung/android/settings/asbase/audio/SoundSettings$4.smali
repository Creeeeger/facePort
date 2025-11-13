.class public final Lcom/samsung/android/settings/asbase/audio/SoundSettings$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/asbase/audio/SoundSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/asbase/audio/SoundSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    iget-boolean v1, v0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mReadyToLaunchPickerByBixby:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object p0, v0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string/jumbo v3, "open_screen"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "notification_sounds"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "launchPickerScreenByBixby : "

    const-string v6, "SoundSettings"

    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "notification_sound"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v1, v0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mNotificationSound:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    invoke-static {p0}, Lcom/samsung/android/settings/asbase/utils/SoundUtils;->showToEnableSecSoundPickerDialog(Landroid/content/Context;)V

    goto/16 :goto_2

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "ringtone_screen"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    :try_start_1
    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v3, "ringtone"

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v1, v0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_2

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    invoke-static {p0}, Lcom/samsung/android/settings/asbase/utils/SoundUtils;->showToEnableSecSoundPickerDialog(Landroid/content/Context;)V

    goto/16 :goto_2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    iget-boolean v3, v1, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mAddedWindowCallbacks:Z

    if-nez v3, :cond_4

    iput-boolean v2, v1, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mAddedWindowCallbacks:Z

    iget-object v1, v1, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mWindowCallbacks:Lcom/samsung/android/settings/asbase/audio/SoundSettings$5;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->addWindowCallbacks(Landroid/view/WindowCallbacks;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mLaunchPickerByBixby:Lcom/samsung/android/settings/asbase/audio/SoundSettings$4;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    iget-object v1, v0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mLaunchPickerByBixby:Lcom/samsung/android/settings/asbase/audio/SoundSettings$4;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings$4;->this$0:Lcom/samsung/android/settings/asbase/audio/SoundSettings;

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/asbase/audio/SoundSettings;->mLaunchPickerByBixby:Lcom/samsung/android/settings/asbase/audio/SoundSettings$4;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_2
    return-void
.end method
