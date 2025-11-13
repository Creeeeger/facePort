.class public final Lcom/android/settings/password/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

.field private mForFace:Z

.field private mForFingerPrint:Z

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private mKnoxWorkProfileSecurity:Z

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mUnlockRecovery:Z


# direct methods
.method private constructor <init>(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForFingerPrint:Z

    .line 140
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForFace:Z

    .line 141
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mUnlockRecovery:Z

    .line 150
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 151
    iput-object p2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 152
    iput-object p3, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroidx/fragment/app/Fragment;

    .line 153
    new-instance p3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p3, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 155
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Fingerprint"

    .line 156
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 157
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForFingerPrint:Z

    :cond_0
    const-string p3, "Face"

    .line 159
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 160
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForFace:Z

    .line 162
    :cond_1
    iget-boolean p2, p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUnlockRecovery:Z

    iput-boolean p2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mUnlockRecovery:Z

    .line 166
    iget-boolean p1, p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mKnoxWorkProfileSecurity:Z

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mKnoxWorkProfileSecurity:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lcom/android/settings/password/ChooseLockSettingsHelper-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private copyInternalExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    .line 583
    invoke-static {p1, p2}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    const-string/jumbo p0, "theme"

    .line 584
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 586
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3

    const-string p0, "android.intent.extra.INTENT"

    .line 556
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const-string p0, "android.intent.extra.TASK_ID"

    const/4 v1, -0x1

    .line 560
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 562
    invoke-virtual {p2, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    if-nez v0, :cond_2

    if-eq v2, v1, :cond_3

    :cond_2
    const/high16 p0, 0x800000

    .line 569
    invoke-virtual {p2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p0, 0x40000000    # 2.0f

    .line 570
    invoke-virtual {p2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3
    const/4 p0, 0x1

    const-string v0, "knox.container.proxy.EXTRA_SHOW_WHEN_LOCKED"

    .line 574
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    .line 573
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p0, 0x0

    const-string v0, "fromPwdNotification"

    .line 576
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    .line 575
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "knox.container.proxy.EXTRA_TASK_ID"

    .line 578
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 577
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZILjava/lang/CharSequence;ZZZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "*>;ZZZI",
            "Ljava/lang/CharSequence;",
            "ZZZ)Z"
        }
    .end annotation

    .line 442
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings.ConfirmCredentials.title"

    .line 443
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p2, "com.android.settings.ConfirmCredentials.header"

    .line 444
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p2, "com.android.settings.ConfirmCredentials.details"

    .line 445
    invoke-virtual {v0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p2, "com.android.settings.ConfirmCredentials.darkTheme"

    const/4 p3, 0x0

    .line 447
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "com.android.settings.ConfirmCredentials.showCancelButton"

    .line 448
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "com.android.settings.ConfirmCredentials.showWhenLocked"

    .line 449
    invoke-virtual {v0, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "com.android.settings.ConfirmCredentials.useFadeAnimation"

    .line 450
    invoke-virtual {v0, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p2, "return_credentials"

    .line 451
    invoke-virtual {v0, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "force_verify"

    .line 452
    invoke-virtual {v0, p2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "android.intent.extra.USER_ID"

    .line 453
    invoke-virtual {v0, p2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    .line 454
    invoke-virtual {v0, p2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p2, "foreground_only"

    .line 455
    invoke-virtual {v0, p2, p12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "allow_any_user"

    .line 456
    invoke-virtual {v0, p2, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p2, "request_gk_pw_handle"

    .line 457
    invoke-virtual {v0, p2, p13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 461
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForFingerPrint:Z

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const-string p2, "for_fingerprint"

    .line 462
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 464
    :cond_0
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mForFace:Z

    if-ne p2, p3, :cond_1

    const-string p2, "for_face"

    .line 465
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 468
    :cond_1
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mUnlockRecovery:Z

    if-eqz p2, :cond_2

    const-string/jumbo p2, "unlock_recovery"

    .line 469
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 474
    :cond_2
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mKnoxWorkProfileSecurity:Z

    const-string p4, "from_knox_work_profile_security"

    invoke-virtual {v0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 478
    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p4, "com.android.settings"

    invoke-virtual {v0, p4, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "page_transition_type"

    .line 479
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 482
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    goto :goto_0

    .line 483
    :cond_3
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    .line 484
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->copyInternalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    if-eqz p7, :cond_a

    const/high16 p1, 0x2000000

    .line 486
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 487
    invoke-direct {p0, p2, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 488
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 p2, 0x5

    const/4 p4, 0x4

    const/4 p5, 0x3

    if-eqz p1, :cond_6

    .line 490
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p1

    if-eq p1, p5, :cond_5

    if-eq p1, p4, :cond_5

    if-ne p1, p2, :cond_4

    goto :goto_1

    .line 499
    :cond_4
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 495
    :cond_5
    :goto_1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    .line 496
    invoke-virtual {p2, p1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 497
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_2

    .line 507
    :cond_6
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    const-string p6, "knox.container.proxy.EXTRA_TASK_ID"

    const/4 p7, -0x1

    .line 508
    invoke-virtual {v0, p6, p7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p6

    if-eq p6, p7, :cond_7

    .line 510
    invoke-virtual {p1, p6}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 511
    invoke-virtual {p1, p3, p3}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 514
    :cond_7
    iget-object p6, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p6

    iget-object p6, p6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p6}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p6

    if-eq p6, p5, :cond_8

    if-eq p6, p4, :cond_8

    if-ne p6, p2, :cond_9

    .line 518
    :cond_8
    invoke-virtual {p1, p6}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 520
    :cond_9
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_2

    .line 527
    :cond_a
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_b

    .line 528
    invoke-virtual {p2, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 530
    :cond_b
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    return p3
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZILjava/lang/CharSequence;ZZZ)Z
    .locals 16

    move-object/from16 v14, p0

    .line 380
    iget-object v0, v14, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    move/from16 v15, p8

    invoke-virtual {v0, v15}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    .line 383
    iget-object v1, v14, Lcom/android/settings/password/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const/high16 v2, 0x10000

    if-eq v1, v2, :cond_8

    const/high16 v2, 0x20000

    if-eq v1, v2, :cond_4

    const/high16 v2, 0x30000

    if-eq v1, v2, :cond_4

    const/high16 v2, 0x40000

    if-eq v1, v2, :cond_4

    const/high16 v2, 0x50000

    if-eq v1, v2, :cond_4

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_4

    const/high16 v2, 0x70000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x80000

    if-eq v1, v2, :cond_4

    goto :goto_2

    .line 413
    :cond_0
    invoke-static/range {p8 .. p8}, Lcom/samsung/android/settings/ucm/UCMUtils;->getKeyguardStorageForUser(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 414
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "none"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p5, :cond_2

    if-eqz p7, :cond_1

    goto :goto_0

    .line 418
    :cond_1
    const-class v0, Lcom/android/settings/password/ConfirmUCMLockPassword;

    goto :goto_1

    .line 417
    :cond_2
    :goto_0
    const-class v0, Lcom/android/settings/password/ConfirmUCMLockPassword$InternalActivity;

    :goto_1
    move-object v5, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    .line 415
    invoke-direct/range {v0 .. v13}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZILjava/lang/CharSequence;ZZZ)Z

    move-result v0

    goto/16 :goto_7

    :cond_3
    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_4
    if-nez p5, :cond_7

    if-eqz p7, :cond_5

    goto :goto_3

    .line 405
    :cond_5
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 406
    const-class v0, Lcom/android/settings/password/ConfirmLockPassword$KnoxWorkChallengeActivity;

    goto :goto_4

    .line 407
    :cond_6
    const-class v0, Lcom/android/settings/password/ConfirmLockPassword;

    goto :goto_4

    .line 403
    :cond_7
    :goto_3
    const-class v0, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    :goto_4
    move-object v5, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    .line 401
    invoke-direct/range {v0 .. v13}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZILjava/lang/CharSequence;ZZZ)Z

    move-result v0

    goto :goto_7

    :cond_8
    if-nez p5, :cond_b

    if-eqz p7, :cond_9

    goto :goto_5

    .line 389
    :cond_9
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 390
    const-class v0, Lcom/android/settings/password/ConfirmLockPattern$KnoxWorkChallengeActivity;

    goto :goto_6

    .line 391
    :cond_a
    const-class v0, Lcom/android/settings/password/ConfirmLockPattern;

    goto :goto_6

    .line 387
    :cond_b
    :goto_5
    const-class v0, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    :goto_6
    move-object v5, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    .line 385
    invoke-direct/range {v0 .. v13}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZILjava/lang/CharSequence;ZZZ)Z

    move-result v0

    :goto_7
    if-nez v0, :cond_c

    .line 428
    invoke-static/range {p8 .. p8}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 429
    invoke-direct/range {p0 .. p12}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivityForAppliedPasswordPolicy(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZILjava/lang/CharSequence;ZZZ)Z

    move-result v0

    :cond_c
    return v0
.end method

.method private launchConfirmationActivityForAppliedPasswordPolicy(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZILjava/lang/CharSequence;ZZZ)Z
    .locals 14

    .line 543
    invoke-static/range {p8 .. p8}, Lcom/samsung/android/knox/SemPersonaManager;->appliedPasswordPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p5, :cond_2

    if-nez p5, :cond_1

    if-eqz p7, :cond_0

    goto :goto_0

    .line 547
    :cond_0
    const-class v0, Lcom/android/settings/password/ConfirmLockPassword;

    goto :goto_1

    .line 546
    :cond_1
    :goto_0
    const-class v0, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    :goto_1
    move-object v5, v0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    .line 544
    invoke-direct/range {v0 .. v13}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZILjava/lang/CharSequence;ZZZ)Z

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0
.end method


# virtual methods
.method public launch()Z
    .locals 14

    .line 368
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->-$$Nest$fgetmRequestCode(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)I

    move-result v2

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->-$$Nest$fgetmTitle(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->-$$Nest$fgetmHeader(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->-$$Nest$fgetmDescription(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->-$$Nest$fgetmReturnCredentials(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Z

    move-result v6

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->-$$Nest$fgetmExternal(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Z

    move-result v7

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->-$$Nest$fgetmForceVerifyPath(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Z

    move-result v8

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->-$$Nest$fgetmUserId(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)I

    move-result v9

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->-$$Nest$fgetmAlternateButton(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->-$$Nest$fgetmAllowAnyUserId(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Z

    move-result v11

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->-$$Nest$fgetmForegroundOnly(Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;)Z

    move-result v12

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mBuilder:Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    iget-boolean v13, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestGatekeeperPasswordHandle:Z

    move-object v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZILjava/lang/CharSequence;ZZZ)Z

    move-result p0

    return p0
.end method
