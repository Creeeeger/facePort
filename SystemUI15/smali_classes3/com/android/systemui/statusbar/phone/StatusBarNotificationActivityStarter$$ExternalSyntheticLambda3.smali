.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public final synthetic f$3:Landroid/app/PendingIntent;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/app/PendingIntent;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$2:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$3:Landroid/app/PendingIntent;

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$4:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$2:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$3:Landroid/app/PendingIntent;

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$4:Z

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda3;->f$5:Z

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLogger:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v9, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logHandleClickAfterPanelCollapsed$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logHandleClickAfterPanelCollapsed$2;

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v14, "NotifActivityStarter"

    const/4 v13, 0x0

    invoke-virtual {v15, v14, v8, v9, v13}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v8, v9, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v15, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    if-eqz v5, :cond_0

    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    if-nez v5, :cond_2

    :cond_1
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    iget-object v9, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v9, v8}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mStatusBarRemoteInputCallback:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v10

    invoke-virtual {v9, v8, v10, v1}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->removeHunAfterClick(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeController;->collapseOnMainThread()V

    goto/16 :goto_c

    :cond_2
    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    move-object v8, v13

    :goto_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    iget-object v12, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    if-nez v9, :cond_4

    invoke-virtual {v12, v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->isSpinning(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v10, "android.remoteInputDraft"

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    goto :goto_1

    :cond_4
    move-object v8, v13

    :goto_1
    sget-boolean v9, Lcom/android/systemui/Rune;->SYSUI_APPLOCK:Z

    if-eqz v9, :cond_7

    if-eqz v5, :cond_7

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    goto :goto_2

    :cond_5
    move-object v10, v13

    :goto_2
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v10

    :goto_3
    iget-object v11, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mContext:Landroid/content/Context;

    const-string v13, "activity"

    invoke-virtual {v11, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager;

    invoke-virtual {v11, v10}, Landroid/app/ActivityManager;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v12, v10}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->startAppLockCheckService(Ljava/lang/String;)V

    :cond_7
    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v10}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    move-result v16

    iget-object v13, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mMainThreadHandler:Landroid/os/Handler;

    if-eqz v16, :cond_a

    sget-object v3, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    sget-object v4, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logExpandingBubble$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logExpandingBubble$2;

    const/4 v8, 0x0

    invoke-virtual {v15, v14, v3, v4, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v3

    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v4

    move-object v8, v3

    check-cast v8, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v4, v8, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v15, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->removeHunAfterClick(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    iget-object v2, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBubblesManagerOptional:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mBubblesManagerOptional:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wmshell/BubblesManager;

    invoke-virtual {v2, v7}, Lcom/android/systemui/wmshell/BubblesManager;->notifToBubbleEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/wm/shell/bubbles/BubbleEntry;

    move-result-object v3

    iget-object v2, v2, Lcom/android/systemui/wmshell/BubblesManager;->mBubbles:Lcom/android/wm/shell/bubbles/Bubbles;

    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object v4, v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v4, v4, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v8, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda4;

    const/4 v9, 0x1

    invoke-direct {v8, v2, v3, v9}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/BubbleEntry;I)V

    check-cast v4, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v4, v8}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeController;->collapseShade()V

    goto :goto_4

    :cond_9
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda4;

    const/4 v2, 0x1

    invoke-direct {v0, v6, v7, v2}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_4
    move-object v14, v1

    move/from16 v17, v5

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    goto/16 :goto_b

    :cond_a
    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    sget-object v10, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logStartNotificationIntent$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logStartNotificationIntent$2;

    const/4 v11, 0x0

    invoke-virtual {v15, v14, v0, v10, v11}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v0

    check-cast v11, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v10, v11, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v15, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    if-eqz v9, :cond_c

    if-eqz v5, :cond_c

    const-string v0, "LAUNCH_FROM_NOTIFICATION"

    if-eqz v8, :cond_b

    const/4 v11, 0x1

    :try_start_1
    invoke-virtual {v8, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_6

    :catch_1
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    move-object/from16 v25, v15

    const/4 v15, 0x0

    :goto_5
    move-object/from16 v26, v14

    move-object v14, v1

    move-object/from16 v1, v26

    goto/16 :goto_9

    :cond_b
    const/4 v11, 0x1

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v8, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_7

    :cond_c
    const/4 v11, 0x1

    :goto_6
    move-object/from16 v17, v8

    :goto_7
    new-instance v18, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;

    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationAnimationProvider:Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v10, 0x0

    :try_start_2
    invoke-virtual {v0, v2, v10}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;->getAnimatorController(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/Runnable;)Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;

    move-result-object v9

    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeAnimationInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;

    iget-object v8, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mShadeController:Lcom/android/systemui/shade/ShadeController;
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_7

    move-object/from16 p0, v1

    :try_start_3
    iget-object v1, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move/from16 v19, v4

    iget-object v4, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_6

    move-object/from16 v20, v14

    :try_start_4
    iget v14, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mDisplayId:I
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v21, v8

    move-object/from16 v8, v18

    move-object/from16 v22, v10

    move-object v10, v0

    move-object/from16 v11, v21

    move-object/from16 v23, v12

    move-object v12, v1

    move-object/from16 v24, v13

    move-object/from16 v1, v22

    move-object v13, v4

    move-object/from16 v4, v20

    move-object/from16 v25, v15

    move v15, v5

    :try_start_5
    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/statusbar/phone/StatusBarTransitionAnimatorController;-><init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/shade/domain/interactor/ShadeAnimationInteractor;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/CommandQueue;IZ)V

    iget-object v8, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mActivityTransitionAnimator:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda10;
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v0, v13

    move-object/from16 v14, p0

    move-object v15, v1

    move-object v1, v6

    move-object v12, v4

    move/from16 v10, v19

    move-object/from16 v4, v17

    move/from16 v17, v5

    move-object v5, v7

    :try_start_6
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/app/PendingIntent;Landroid/content/Intent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    :try_end_6
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_6 .. :try_end_6} :catch_3

    const/4 v0, 0x0

    move-object/from16 v9, v18

    move-object v1, v12

    move v12, v0

    :try_start_7
    invoke-virtual/range {v8 .. v13}, Lcom/android/systemui/animation/ActivityTransitionAnimator;->startPendingIntentWithAnimation(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZLjava/lang/String;ZLcom/android/systemui/animation/ActivityTransitionAnimator$PendingIntentStarter;)V
    :try_end_7
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v1, v12

    goto :goto_9

    :catch_4
    move-exception v0

    move-object/from16 v14, p0

    move-object v15, v1

    move-object v1, v4

    move/from16 v17, v5

    goto :goto_9

    :catch_5
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v17, v5

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    move-object/from16 v25, v15

    move-object/from16 v1, v20

    :goto_8
    move-object v15, v10

    goto :goto_9

    :catch_6
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    move-object v1, v14

    move-object/from16 v25, v15

    move-object/from16 v14, p0

    goto :goto_8

    :catch_7
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    move-object/from16 v25, v15

    move-object v15, v10

    goto/16 :goto_5

    :goto_9
    sget-object v2, Lcom/android/systemui/log/core/LogLevel;->WARNING:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logSendingIntentFailed$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarterLogger$logSendingIntentFailed$2;

    move-object/from16 v4, v25

    invoke-virtual {v4, v1, v2, v3, v15}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v0, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :goto_a
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isOngoingAcitivty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mContext:Landroid/content/Context;

    const-string v1, "QPOA0010"

    invoke-static {v0, v1, v7}, Lcom/android/systemui/util/NotificationSAUtil;->sendOALog(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_d
    :goto_b
    if-nez v17, :cond_e

    if-eqz v16, :cond_f

    :cond_e
    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    :cond_f
    iget-object v0, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationVisibilityProviderImpl;->obtain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    if-nez v16, :cond_11

    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_10

    move-object/from16 v1, v23

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputListener:Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;

    if-eqz v1, :cond_11

    invoke-virtual {v1, v14}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;->isNotificationKeptForRemoteInputHistory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    iget-object v1, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mOnUserInteractionCallback:Lcom/android/systemui/statusbar/notification/row/OnUserInteractionCallback;

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v7, v2}, Lcom/android/systemui/statusbar/notification/collection/inflation/OnUserInteractionCallbackImpl;->registerFutureDismissal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda6;

    const/4 v3, 0x0

    invoke-direct {v2, v6, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;Lcom/android/systemui/statusbar/notification/collection/NotifCollection$FutureDismissal;I)V

    move-object/from16 v1, v24

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->shouldAutoCancel(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "QPNE0005"

    invoke-static {v1, v7}, Lcom/android/systemui/util/NotificationSAUtil;->sendCancelLog(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_11
    iget-object v1, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    invoke-virtual {v1, v14, v0}, Lcom/android/systemui/statusbar/NotificationClickNotifier;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V

    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;->mIsCollapsingToShowActivityOverLockscreen:Z

    :goto_c
    return-void
.end method
