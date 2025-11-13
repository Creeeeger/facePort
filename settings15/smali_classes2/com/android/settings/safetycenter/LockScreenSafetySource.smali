.class public abstract Lcom/android/settings/safetycenter/LockScreenSafetySource;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static setSafetySourceData(Landroid/content/Context;Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;Landroid/safetycenter/SafetyEvent;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->get()Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p0}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->isEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/UserManager;->isProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    iget-object v3, v1, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    const-string v4, "AndroidLockScreen"

    const/4 v5, 0x0

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->get()Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v4, v5, v2}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->setSafetySourceData(Landroid/content/Context;Ljava/lang/String;Landroid/safetycenter/SafetySourceData;Landroid/safetycenter/SafetyEvent;)V

    return-void

    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->getQuietModeDialogIntent()Landroid/content/Intent;

    move-result-object v7

    const/4 v8, 0x1

    const/16 v9, 0x77d

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    new-instance v7, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v10, v1, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v10, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v7, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v10, v11, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput v9, v11, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput v8, v11, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTransitionType:I

    invoke-virtual {v7}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v7

    :goto_0
    const/high16 v10, 0x4000000

    invoke-static {v0, v8, v7, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iget-object v11, v1, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v12, v1, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mUserId:I

    invoke-virtual {v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v11

    const/16 v13, 0x64

    if-eqz v11, :cond_4

    new-instance v11, Landroid/safetycenter/SafetySourceStatus$IconAction;

    new-instance v14, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v15, v1, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v15, Lcom/android/settings/security/screenlock/ScreenLockSettings;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    iget-object v5, v14, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v15, v5, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput v9, v5, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v14}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v5

    const/4 v9, 0x2

    invoke-static {v0, v9, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v11, v13, v5}, Landroid/safetycenter/SafetySourceStatus$IconAction;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_1
    iget-object v5, v1, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mContext:Landroid/content/Context;

    const-string v9, "device_policy"

    invoke-virtual {v5, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    if-eqz v6, :cond_5

    iget-object v6, v6, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v5, v6, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v3

    const/high16 v5, 0x80000

    if-ne v3, v5, :cond_5

    move v3, v8

    goto :goto_2

    :cond_5
    move v3, v9

    :goto_2
    xor-int/2addr v3, v8

    iget-object v5, v1, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v12}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    const/16 v6, 0xc8

    if-eqz v3, :cond_7

    if-eqz v5, :cond_6

    move v8, v6

    goto :goto_3

    :cond_6
    const/16 v8, 0x12c

    goto :goto_3

    :cond_7
    move v8, v13

    :goto_3
    new-instance v10, Landroid/safetycenter/SafetySourceStatus$Builder;

    const v12, 0x7f142819

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v3, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/android/settings/security/ScreenLockPreferenceDetailsUtils;->getSummary(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_8
    const v1, 0x7f140d12

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-direct {v10, v12, v1, v8}, Landroid/safetycenter/SafetySourceStatus$Builder;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    if-eqz v3, :cond_9

    move-object v1, v7

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v10, v1}, Landroid/safetycenter/SafetySourceStatus$Builder;->setPendingIntent(Landroid/app/PendingIntent;)Landroid/safetycenter/SafetySourceStatus$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/safetycenter/SafetySourceStatus$Builder;->setEnabled(Z)Landroid/safetycenter/SafetySourceStatus$Builder;

    move-result-object v1

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v1, v11}, Landroid/safetycenter/SafetySourceStatus$Builder;->setIconAction(Landroid/safetycenter/SafetySourceStatus$IconAction;)Landroid/safetycenter/SafetySourceStatus$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/safetycenter/SafetySourceStatus$Builder;->build()Landroid/safetycenter/SafetySourceStatus;

    move-result-object v1

    new-instance v8, Landroid/safetycenter/SafetySourceData$Builder;

    invoke-direct {v8}, Landroid/safetycenter/SafetySourceData$Builder;-><init>()V

    invoke-virtual {v8, v1}, Landroid/safetycenter/SafetySourceData$Builder;->setStatus(Landroid/safetycenter/SafetySourceStatus;)Landroid/safetycenter/SafetySourceData$Builder;

    move-result-object v1

    if-eqz v3, :cond_b

    if-nez v5, :cond_b

    new-instance v3, Landroid/safetycenter/SafetySourceIssue$Action$Builder;

    const v5, 0x7f141a44

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "SetScreenLockAction"

    invoke-direct {v3, v8, v5, v7}, Landroid/safetycenter/SafetySourceIssue$Action$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->build()Landroid/safetycenter/SafetySourceIssue$Action;

    move-result-object v3

    new-instance v5, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;

    const v7, 0x7f141a46

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f141a45

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;->build()Landroid/safetycenter/SafetySourceIssue$Notification;

    move-result-object v5

    new-instance v7, Landroid/safetycenter/SafetySourceIssue$Builder;

    const v8, 0x7f141a48

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const v8, 0x7f141a47

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v15, "NoScreenLockIssue"

    const/16 v18, 0x12c

    const-string v19, "NoScreenLockIssueType"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Landroid/safetycenter/SafetySourceIssue$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;)V

    invoke-virtual {v7, v13}, Landroid/safetycenter/SafetySourceIssue$Builder;->setIssueCategory(I)Landroid/safetycenter/SafetySourceIssue$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/safetycenter/SafetySourceIssue$Builder;->addAction(Landroid/safetycenter/SafetySourceIssue$Action;)Landroid/safetycenter/SafetySourceIssue$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/safetycenter/SafetySourceIssue$Builder;->setIssueActionability(I)Landroid/safetycenter/SafetySourceIssue$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/safetycenter/SafetySourceIssue$Builder;->setCustomNotification(Landroid/safetycenter/SafetySourceIssue$Notification;)Landroid/safetycenter/SafetySourceIssue$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/safetycenter/SafetySourceIssue$Builder;->setNotificationBehavior(I)Landroid/safetycenter/SafetySourceIssue$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/safetycenter/SafetySourceIssue$Builder;->build()Landroid/safetycenter/SafetySourceIssue;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/safetycenter/SafetySourceData$Builder;->addIssue(Landroid/safetycenter/SafetySourceIssue;)Landroid/safetycenter/SafetySourceData$Builder;

    :cond_b
    invoke-virtual {v1}, Landroid/safetycenter/SafetySourceData$Builder;->build()Landroid/safetycenter/SafetySourceData;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->get()Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v4, v1, v2}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->setSafetySourceData(Landroid/content/Context;Ljava/lang/String;Landroid/safetycenter/SafetySourceData;Landroid/safetycenter/SafetyEvent;)V

    return-void
.end method
