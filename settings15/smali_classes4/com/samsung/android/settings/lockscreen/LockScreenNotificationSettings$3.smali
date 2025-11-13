.class public final Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030103

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "lockscreen_minimizing_notification"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ON, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "ON"

    :goto_0
    const-string v0, ", "

    invoke-static {p1, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_show_silent_notifications"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-static {p1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f141562

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f14155f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ", Hide"

    goto :goto_2

    :cond_2
    const-string v0, ""

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    const-string p1, "OFF"

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->getMetricsCategory()I

    const/16 v0, 0x1153

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "U4470"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    iget-boolean v0, p1, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mJustPPP:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mFromSetupWizard:Z

    if-nez v0, :cond_4

    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getFmmDialogIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception occurs when excuting fmmIntent : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockScreenNotificationSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$3;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
