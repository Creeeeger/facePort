.class Lcom/android/systemui/GuestResumeSessionReceiver$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/GuestResumeSessionReceiver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/GuestResumeSessionReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/GuestResumeSessionReceiver$1;->this$0:Lcom/android/systemui/GuestResumeSessionReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 19

    move/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/systemui/GuestResumeSessionReceiver$1;->this$0:Lcom/android/systemui/GuestResumeSessionReceiver;

    iget-object v2, v1, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->cancel()V

    iput-object v3, v1, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v2, v1, Lcom/android/systemui/GuestResumeSessionReceiver;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    iget-object v4, v1, Lcom/android/systemui/GuestResumeSessionReceiver;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string/jumbo v5, "systemui.guest_has_logged_in"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    invoke-interface {v4, v5, v8, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putIntForUser(Ljava/lang/String;II)Z

    move v7, v8

    goto :goto_0

    :cond_2
    if-ne v7, v8, :cond_3

    const/4 v7, 0x2

    invoke-interface {v4, v5, v7, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putIntForUser(Ljava/lang/String;II)Z

    :cond_3
    :goto_0
    if-gt v7, v8, :cond_4

    move v4, v8

    goto :goto_1

    :cond_4
    move v4, v6

    :goto_1
    iget-object v5, v1, Lcom/android/systemui/GuestResumeSessionReceiver;->mGuestSessionNotification:Lcom/android/systemui/GuestSessionNotification;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v9

    if-nez v9, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v5, Lcom/android/systemui/GuestSessionNotification;->mContext:Landroid/content/Context;

    const v10, 0x7f130730

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    iget-object v9, v5, Lcom/android/systemui/GuestSessionNotification;->mContext:Landroid/content/Context;

    const v10, 0x7f130731

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_7
    iget-object v9, v5, Lcom/android/systemui/GuestSessionNotification;->mContext:Landroid/content/Context;

    const v10, 0x7f130732

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_2
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.GUEST_EXIT"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v14, Landroid/content/Intent;

    const-string v11, "android.settings.USER_SETTINGS"

    invoke-direct {v14, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Lcom/android/systemui/GuestSessionNotification;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/high16 v13, 0x4000000

    invoke-static {v11, v6, v10, v13, v15}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    iget-object v12, v5, Lcom/android/systemui/GuestSessionNotification;->mContext:Landroid/content/Context;

    iget v11, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v17

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/high16 v18, 0x14000000

    move v3, v13

    move v13, v11

    move-object v11, v15

    move/from16 v15, v18

    invoke-static/range {v12 .. v17}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    new-instance v13, Landroid/app/Notification$Builder;

    iget-object v14, v5, Lcom/android/systemui/GuestSessionNotification;->mContext:Landroid/content/Context;

    sget-object v15, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v14, 0x7f0807f1

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v13

    iget-object v14, v5, Lcom/android/systemui/GuestSessionNotification;->mContext:Landroid/content/Context;

    const v15, 0x7f130733

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    const v12, 0x7f080b2a

    if-nez v4, :cond_8

    new-instance v4, Landroid/content/Intent;

    const-string v13, "android.intent.action.GUEST_RESET"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v13, v5, Lcom/android/systemui/GuestSessionNotification;->mContext:Landroid/content/Context;

    invoke-static {v13, v6, v4, v3, v11}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, v5, Lcom/android/systemui/GuestSessionNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f13073a

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v12, v4, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_8
    iget-object v3, v5, Lcom/android/systemui/GuestSessionNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f130723

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v12, v3, v10}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, v5, Lcom/android/systemui/GuestSessionNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f13072f

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "android.substName"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v3, v5, Lcom/android/systemui/GuestSessionNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/16 v5, 0x46

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5, v4, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :goto_3
    if-le v7, v8, :cond_9

    iget-object v2, v1, Lcom/android/systemui/GuestResumeSessionReceiver;->mResetSessionDialogFactory:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogFactory;

    invoke-virtual {v2, v0}, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogFactory;->create(I)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/GuestResumeSessionReceiver;->mNewSessionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_9
    return-void
.end method
