.class public final Lcom/android/settings/password/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mActivity:Landroid/app/Activity;

.field public final mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field public final mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

.field public final mForFace:Z

.field public final mForFingerPrint:Z

.field public final mFragment:Landroidx/fragment/app/Fragment;

.field public final mKnoxWorkProfileSecurity:Z

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mUnlockRecovery:Z


# direct methods
.method public constructor <init>(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForFingerPrint:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForFace:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mUnlockRecovery:Z

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    iput-object p2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroidx/fragment/app/Fragment;

    iput-object p4, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    new-instance p3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p3, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Fingerprint"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    iput-boolean p4, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForFingerPrint:Z

    :cond_0
    const-string p3, "Face"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    iput-boolean p4, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForFace:Z

    :cond_1
    iget-boolean p2, p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUnlockRecovery:Z

    iput-boolean p2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mUnlockRecovery:Z

    iget-boolean p1, p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mKnoxWorkProfileSecurity:Z

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mKnoxWorkProfileSecurity:Z

    return-void
.end method


# virtual methods
.method public final launch()Z
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    iget v2, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    iget-object v3, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mHeader:Ljava/lang/CharSequence;

    iget-object v6, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mDescription:Ljava/lang/CharSequence;

    iget-boolean v7, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    iget-boolean v8, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mExternal:Z

    iget-boolean v9, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mForceVerifyPath:Z

    iget v10, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    iget-object v11, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mAlternateButton:Ljava/lang/CharSequence;

    iget-object v12, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mCheckBoxLabel:Ljava/lang/CharSequence;

    iget-boolean v13, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRemoteLockscreenValidation:Z

    iget-object v14, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRemoteLockscreenValidationSession:Landroid/app/RemoteLockscreenValidationSession;

    iget-object v15, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRemoteLockscreenValidationServiceComponent:Landroid/content/ComponentName;

    iget-boolean v5, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mAllowAnyUserId:Z

    move-object/from16 v16, v15

    iget-boolean v15, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mForegroundOnly:Z

    move/from16 v17, v15

    iget-boolean v15, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestGatekeeperPasswordHandle:Z

    move/from16 v18, v15

    iget-boolean v15, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestWriteRepairModePassword:Z

    iget-boolean v1, v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mTaskOverlay:Z

    const-class v19, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    const-class v20, Lcom/android/settings/password/ConfirmLockPassword;

    move/from16 v21, v1

    iget-object v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const/16 v22, 0x0

    move/from16 v23, v15

    const-string v15, "ChooseLockSettingsHelper"

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Landroid/app/RemoteLockscreenValidationSession;->getLockType()I

    move-result v24

    move-object/from16 v25, v14

    move/from16 v26, v24

    move/from16 v24, v5

    move/from16 v5, v26

    goto/16 :goto_1

    :cond_0
    move/from16 v24, v5

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v5

    move-object/from16 v25, v14

    iget-object v14, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v14, v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v5

    const/high16 v14, 0x10000

    if-eq v5, v14, :cond_4

    const/high16 v14, 0x20000

    if-eq v5, v14, :cond_3

    const/high16 v14, 0x30000

    if-eq v5, v14, :cond_3

    const/high16 v14, 0x40000

    if-eq v5, v14, :cond_2

    const/high16 v14, 0x50000

    if-eq v5, v14, :cond_2

    const/high16 v14, 0x60000

    if-eq v5, v14, :cond_2

    const/high16 v14, 0x70000

    if-eq v5, v14, :cond_1

    const/high16 v14, 0x80000

    if-eq v5, v14, :cond_2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v14, "Cannot determine appropriate activity class for password quality %d"

    invoke-static {v14, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    goto :goto_0

    :cond_4
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    :goto_0
    invoke-virtual {v5}, Ljava/util/Optional;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v5

    goto/16 :goto_8

    :cond_5
    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_1
    if-eqz v5, :cond_d

    const/4 v14, 0x1

    if-eq v5, v14, :cond_d

    const/4 v14, 0x2

    if-eq v5, v14, :cond_9

    const/4 v14, 0x3

    if-eq v5, v14, :cond_6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v14, "Cannot determine appropriate activity class for lock type %d"

    invoke-static {v14, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v5

    goto :goto_8

    :cond_6
    if-nez v7, :cond_8

    if-eqz v9, :cond_7

    goto :goto_2

    :cond_7
    const-class v5, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword;

    goto :goto_3

    :cond_8
    :goto_2
    const-class v5, Lcom/samsung/android/settings/knox/ConfirmUCMLockPassword$InternalActivity;

    :goto_3
    invoke-static {v5}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    goto :goto_8

    :cond_9
    if-nez v7, :cond_c

    if-eqz v9, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_b

    const-class v5, Lcom/android/settings/password/ConfirmLockPattern$KnoxWorkChallengeActivity;

    goto :goto_5

    :cond_b
    const-class v5, Lcom/android/settings/password/ConfirmLockPattern;

    goto :goto_5

    :cond_c
    :goto_4
    const-class v5, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    :goto_5
    invoke-static {v5}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    goto :goto_8

    :cond_d
    if-nez v7, :cond_10

    if-eqz v9, :cond_e

    goto :goto_6

    :cond_e
    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_f

    const-class v5, Lcom/android/settings/password/ConfirmLockPassword$KnoxWorkChallengeActivity;

    goto :goto_7

    :cond_f
    move-object/from16 v5, v20

    goto :goto_7

    :cond_10
    :goto_6
    move-object/from16 v5, v19

    :goto_7
    invoke-static {v5}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    :goto_8
    invoke-virtual {v5}, Ljava/util/Optional;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->appliedPasswordPolicy(I)Z

    move-result v1

    if-eqz v1, :cond_15

    if-nez v7, :cond_15

    if-nez v7, :cond_12

    if-eqz v9, :cond_11

    goto :goto_9

    :cond_11
    move-object/from16 v5, v20

    goto :goto_a

    :cond_12
    :goto_9
    move-object/from16 v5, v19

    :goto_a
    move-object/from16 v0, p0

    move/from16 v19, v21

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move/from16 v15, v24

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v11

    move-object v11, v12

    move v12, v13

    move-object/from16 v13, v25

    const/16 v20, 0x1

    move-object/from16 v14, v16

    move/from16 v21, v20

    move/from16 v20, v23

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v20

    invoke-virtual/range {v0 .. v19}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZILjava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/app/RemoteLockscreenValidationSession;Landroid/content/ComponentName;ZZZZZ)V

    goto :goto_b

    :cond_13
    move/from16 v19, v21

    move/from16 v20, v23

    move/from16 v15, v24

    const/16 v21, 0x1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v14

    invoke-static {v14}, Lcom/samsung/android/settings/knox/UCMUtils;->getKeyguardStorageForUser(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_14

    const-string v0, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object v4, v1

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v14

    move-object v10, v11

    move-object v11, v12

    move v12, v13

    move-object/from16 v13, v25

    move-object/from16 v14, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v20

    invoke-virtual/range {v0 .. v19}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZILjava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/app/RemoteLockscreenValidationSession;Landroid/content/ComponentName;ZZZZZ)V

    :goto_b
    move/from16 v22, v21

    goto :goto_c

    :cond_14
    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Class;

    move-object/from16 v0, p0

    move v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move-object v10, v11

    move-object v11, v12

    move v12, v13

    move-object/from16 v13, v25

    move-object/from16 v14, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v20

    invoke-virtual/range {v0 .. v19}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZILjava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/app/RemoteLockscreenValidationSession;Landroid/content/ComponentName;ZZZZZ)V

    goto :goto_b

    :cond_15
    :goto_c
    return v22
.end method

.method public final launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZILjava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/app/RemoteLockscreenValidationSession;Landroid/content/ComponentName;ZZZZZ)V
    .locals 11

    move-object v0, p0

    move v1, p1

    move/from16 v2, p7

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.settings.ConfirmCredentials.title"

    move-object v5, p2

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v4, "com.android.settings.ConfirmCredentials.header"

    move-object v5, p3

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v4, "com.android.settings.ConfirmCredentials.details"

    move-object v5, p4

    invoke-virtual {v3, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v4, "com.android.settings.ConfirmCredentials.darkTheme"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "com.android.settings.ConfirmCredentials.showCancelButton"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "com.android.settings.ConfirmCredentials.showWhenLocked"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "com.android.settings.ConfirmCredentials.useFadeAnimation"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "com.android.settings.ConfirmCredentials.isRemoteLockscreenValidation"

    move/from16 v6, p12

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "return_credentials"

    move/from16 v6, p6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "force_verify"

    move/from16 v6, p8

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "android.intent.extra.USER_ID"

    move/from16 v6, p9

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    move-object/from16 v6, p10

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v4, "android.app.extra.CHECKBOX_LABEL"

    move-object/from16 v6, p11

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v4, "android.app.extra.REMOTE_LOCKSCREEN_VALIDATION_SESSION"

    move-object/from16 v6, p13

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.COMPONENT_NAME"

    move-object/from16 v6, p14

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "foreground_only"

    move/from16 v6, p16

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "allow_any_user"

    move/from16 v6, p15

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "request_gk_pw_handle"

    move/from16 v6, p17

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "request_write_repair_mode_pw"

    move/from16 v6, p18

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v4, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForFingerPrint:Z

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    const-string v4, "for_fingerprint"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    iget-boolean v4, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForFace:Z

    if-eqz v4, :cond_1

    const-string v4, "for_face"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    iget-boolean v4, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mUnlockRecovery:Z

    if-eqz v4, :cond_2

    const-string v4, "unlock_recovery"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    const-string v4, "from_knox_work_profile_security"

    iget-boolean v7, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mKnoxWorkProfileSecurity:Z

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "com.android.settings"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "page_transition_type"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    iget-object v7, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    :goto_0
    invoke-static {v8, v3}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    const-string v9, "theme"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    if-nez p19, :cond_5

    const/4 v9, 0x0

    goto :goto_1

    :cond_5
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v9

    invoke-virtual {v4}, Landroid/app/Activity;->getTaskId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    invoke-virtual {v9, v6, v6}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    :goto_1
    iget-object v0, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v2, :cond_f

    const/high16 v1, 0x2000000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/IntentSender;

    if-eqz v2, :cond_6

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_6
    const-string v1, "android.intent.extra.TASK_ID"

    const/4 v9, -0x1

    invoke-virtual {v8, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v9, :cond_7

    invoke-virtual {v3, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_7
    if-nez v2, :cond_8

    if-eq v10, v9, :cond_9

    :cond_8
    const/high16 v1, 0x800000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_9
    const-string v1, "knox.container.proxy.EXTRA_SHOW_WHEN_LOCKED"

    invoke-virtual {v8, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "fromPwdNotification"

    invoke-virtual {v8, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "knox.container.proxy.EXTRA_TASK_ID"

    invoke-virtual {v8, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v3}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    const/4 v0, 0x5

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    if-ne v1, v0, :cond_b

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v7, v3, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_b
    invoke-virtual {v7, v3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_c
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v3, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v9, :cond_d

    invoke-virtual {v2, v1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    invoke-virtual {v2, v6, v6}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    :cond_d
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    if-ne v1, v0, :cond_e

    invoke-virtual {v2, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    :cond_e
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual {v0, v3}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_2

    :cond_10
    if-eqz v7, :cond_11

    invoke-virtual {v7, v3, p1, v9}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_2

    :cond_11
    invoke-virtual {v4, v3, p1, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :goto_2
    return-void
.end method
