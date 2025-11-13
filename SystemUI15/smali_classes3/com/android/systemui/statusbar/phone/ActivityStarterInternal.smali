.class public interface abstract Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static synthetic executeRunnableDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZZI)V
    .locals 8

    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x4

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_0
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, p4

    :goto_1
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_3

    move v5, v0

    goto :goto_2

    :cond_3
    move v5, p5

    :goto_2
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_4

    move v6, v0

    goto :goto_3

    :cond_4
    move v6, p6

    :goto_3
    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZZLjava/lang/String;)V

    return-void
.end method

.method public static startActivityDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Landroid/content/Intent;ZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Ljava/lang/String;ZLandroid/os/UserHandle;I)V
    .locals 14

    move-object v0, p1

    move/from16 v1, p2

    move/from16 v2, p10

    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move/from16 v3, p3

    :goto_0
    and-int/lit8 v5, v2, 0x8

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    move-object v5, v6

    goto :goto_1

    :cond_1
    move-object/from16 v5, p4

    :goto_1
    and-int/lit8 v7, v2, 0x10

    if-eqz v7, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    move/from16 v7, p5

    :goto_2
    and-int/lit8 v8, v2, 0x20

    if-eqz v8, :cond_3

    move-object v8, v6

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v9, v2, 0x40

    if-eqz v9, :cond_4

    move-object v9, v6

    goto :goto_4

    :cond_4
    move-object/from16 v9, p7

    :goto_4
    and-int/lit16 v10, v2, 0x80

    if-eqz v10, :cond_5

    move v10, v4

    goto :goto_5

    :cond_5
    move/from16 v10, p8

    :goto_5
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    move-object/from16 v6, p9

    :goto_6
    move-object v2, p0

    check-cast v2, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    if-nez v6, :cond_7

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->getActivityUserHandle(Landroid/content/Intent;)Landroid/os/UserHandle;

    move-result-object v6

    :cond_7
    if-eqz v3, :cond_8

    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_8

    :cond_8
    iget-object v3, v2, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->lockScreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v3, v3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    iget-object v11, v2, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->activityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    invoke-virtual {v11, v3, p1}, Lcom/android/systemui/ActivityIntentHelper;->wouldLaunchResolverActivity(ILandroid/content/Intent;)Z

    move-result v3

    const/4 v11, 0x1

    invoke-virtual {v2, v8, v1, v11}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->wrapAnimationControllerForShadeOrStatusBar(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZZ)Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    move-result-object v8

    if-eqz v1, :cond_9

    if-nez v8, :cond_9

    move v1, v11

    goto :goto_7

    :cond_9
    move v1, v4

    :goto_7
    new-instance v12, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;

    const/4 v13, 0x0

    move-object/from16 p2, v12

    move-object/from16 p3, v2

    move-object/from16 p4, p1

    move/from16 p5, v7

    move-object/from16 p6, v8

    move/from16 p7, v13

    move-object/from16 p8, v5

    move/from16 p9, v10

    move-object/from16 p10, v6

    invoke-direct/range {p2 .. p10}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$runnable$1;-><init>(Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;Landroid/content/Intent;ILcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZLcom/android/systemui/plugins/ActivityStarter$Callback;ZLandroid/os/UserHandle;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$cancelRunnable$1;

    invoke-direct {v0, v5}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startActivityDismissingKeyguard$cancelRunnable$1;-><init>(Lcom/android/systemui/plugins/ActivityStarter$Callback;)V

    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v6, v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v6, :cond_a

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v5, :cond_a

    move v4, v11

    :cond_a
    xor-int/2addr v4, v11

    move-object p0, v2

    move-object p1, v12

    move-object/from16 p2, v0

    move/from16 p3, v1

    move/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v13

    move-object/from16 p7, v9

    invoke-virtual/range {p0 .. p7}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZZLjava/lang/String;)V

    :goto_8
    return-void
.end method

.method public static startPendingIntentDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterInternal;Landroid/app/PendingIntent;ZLjava/lang/Runnable;Landroid/view/View;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZZLandroid/content/Intent;Landroid/os/Bundle;I)V
    .locals 17

    move-object/from16 v4, p1

    move/from16 v10, p2

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object/from16 v7, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object/from16 v1, p4

    :goto_1
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_2

    move-object v3, v2

    goto :goto_2

    :cond_2
    move-object/from16 v3, p5

    :goto_2
    and-int/lit8 v5, v0, 0x20

    const/4 v11, 0x0

    if-eqz v5, :cond_3

    move v5, v11

    goto :goto_3

    :cond_3
    move/from16 v5, p6

    :goto_3
    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_4

    move v6, v11

    goto :goto_4

    :cond_4
    move/from16 v6, p7

    :goto_4
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_5

    move-object v8, v2

    goto :goto_5

    :cond_5
    move-object/from16 v8, p8

    :goto_5
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    move-object v9, v2

    goto :goto_6

    :cond_6
    move-object/from16 v9, p9

    :goto_6
    move-object/from16 v12, p0

    check-cast v12, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_8

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->getCentralSurfaces()Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationAnimationProvider:Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;->getAnimatorController(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/Runnable;)Lcom/android/systemui/statusbar/notification/NotificationTransitionAnimatorController;

    move-result-object v3

    goto :goto_7

    :cond_7
    move-object v3, v2

    :cond_8
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    const/4 v1, 0x1

    iget-object v13, v12, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->lockScreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v14, v12, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->activityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    if-eqz v0, :cond_9

    move-object v0, v13

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v14, v0, v4}, Lcom/android/systemui/ActivityIntentHelper;->getPendingTargetActivityInfo(ILandroid/app/PendingIntent;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_9

    move v15, v1

    goto :goto_8

    :cond_9
    move v15, v11

    :goto_8
    if-eqz v5, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez v6, :cond_a

    check-cast v13, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    iget v0, v13, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->mCurrentUserId:I

    invoke-virtual {v14, v0, v4}, Lcom/android/systemui/ActivityIntentHelper;->wouldPendingShowOverLockscreen(ILandroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    move v13, v1

    goto :goto_9

    :cond_b
    move v13, v11

    :goto_9
    if-nez v15, :cond_c

    if-eqz v3, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->isActivity()Z

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    invoke-virtual {v12, v3, v10, v0}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->wrapAnimationControllerForShadeOrStatusBar(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZZ)Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    move-result-object v0

    if-eqz v13, :cond_d

    if-eqz v0, :cond_e

    new-instance v2, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$wrapAnimationControllerForLockscreen$1$1;

    invoke-direct {v2, v0, v12, v10}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$wrapAnimationControllerForLockscreen$1$1;-><init>(Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;Z)V

    goto :goto_a

    :cond_d
    move-object v2, v0

    :cond_e
    :goto_a
    new-instance v14, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$runnable$1;

    const/16 v16, 0x0

    move-object v0, v14

    move-object v1, v12

    move/from16 v3, v16

    move-object/from16 v4, p1

    move v5, v13

    move/from16 v6, p2

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$runnable$1;-><init>(Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;ZLandroid/app/PendingIntent;ZZLjava/lang/Runnable;Landroid/content/Intent;Landroid/os/Bundle;)V

    iget-object v0, v12, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    if-nez v13, :cond_f

    new-instance v1, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$1;

    move-object/from16 p3, v1

    move-object/from16 p4, v12

    move-object/from16 p5, v14

    move/from16 p6, p2

    move/from16 p7, v15

    move/from16 p8, v16

    invoke-direct/range {p3 .. p8}, Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl$startPendingIntentDismissingKeyguard$1;-><init>(Lcom/android/systemui/statusbar/phone/LegacyActivityStarterInternalImpl;Ljava/lang/Runnable;ZZZ)V

    int-to-long v2, v11

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    goto :goto_b

    :cond_f
    int-to-long v1, v11

    invoke-interface {v0, v14, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    :goto_b
    return-void
.end method
