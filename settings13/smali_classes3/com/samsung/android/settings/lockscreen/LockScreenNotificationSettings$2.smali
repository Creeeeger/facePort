.class Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$2;
.super Ljava/lang/Object;
.source "LockScreenNotificationSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->addBottomButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 376
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->-$$Nest$mgetLockscreenNotificationsEnabled(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "ON"

    .line 379
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->lockscreen_notification_view_style_event_logging:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->access$000(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x2

    const-string v4, "lockscreen_minimizing_notification"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const-string v2, ", "

    if-ltz v1, :cond_0

    .line 382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 384
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 385
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->-$$Nest$misShownSilentNotifications(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->lock_screen_notifs_show_all_event_logging:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 388
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->lock_screen_notifs_show_alerting_event_logging:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 390
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->-$$Nest$mgetLockscreenAllowPrivateNotifications(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, ", Hide"

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    const-string p1, "OFF"

    .line 392
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->getMetricsCategory()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1176

    .line 393
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->-$$Nest$fgetmJustPPP(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 396
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->-$$Nest$fgetmFromSetupWizard(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;)Z

    move-result p1

    if-nez p1, :cond_4

    :try_start_0
    const-string p1, "Lock"

    .line 398
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getFmmDialogIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 400
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception occurs when excuting fmmIntent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LockScreenNotificationSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
