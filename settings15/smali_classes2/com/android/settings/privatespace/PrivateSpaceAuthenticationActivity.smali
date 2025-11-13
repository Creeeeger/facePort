.class public Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public mPrivateSpaceMaintainer:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

.field public final mSetDeviceLock:Landroidx/activity/result/ActivityResultRegistry$2;

.field public final mVerifyDeviceLock:Landroidx/activity/result/ActivityResultRegistry$2;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>(I)V

    new-instance v1, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$2;

    iput-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->mSetDeviceLock:Landroidx/activity/result/ActivityResultRegistry$2;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>(I)V

    new-instance v1, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    check-cast v0, Landroidx/activity/result/ActivityResultRegistry$2;

    iput-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->mVerifyDeviceLock:Landroidx/activity/result/ActivityResultRegistry$2;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f1417d0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {p0, v0, v1}, Lcom/android/settings/activityembedding/EmbeddedDeepLinkUtils;->tryStartMultiPaneDeepLink(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->trySetDynamicColor(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->getInstance(Landroid/content/Context;)Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->mPrivateSpaceMaintainer:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    iget-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_4

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    :cond_4
    iget-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->mPrivateSpaceMaintainer:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    invoke-virtual {p1}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->doesPrivateSpaceExist()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, p0}, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->unlockAndLaunchPrivateSpaceSettings(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_5
    iget-object p1, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->mPrivateSpaceMaintainer:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->doesPrivateSpaceExist()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v2, p1, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v2, p1, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v1, v1, v2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_6
    :try_start_1
    iget-object v0, p1, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1, v1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    :goto_1
    if-eqz v0, :cond_8

    invoke-static {}, Landroid/multiuser/Flags;->usePrivateSpaceIconInBiometricPrompt()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "custom_logo_res_id"

    const v1, 0x1080bae

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "custom_logo_description"

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040c3e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    iget-object p0, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->mVerifyDeviceLock:Landroidx/activity/result/ActivityResultRegistry$2;

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultRegistry$2;->launch(Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    const-string p1, "PrivateSpaceAuthCheck"

    const-string v0, "verifyCredentialIntent is null even though device lock is set"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :goto_2
    monitor-exit p1

    throw p0

    :cond_9
    const-string p1, "PrivateSpaceAuthCheck"

    const-string v0, "Show prompt to set device lock before using private space feature"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/multiuser/Flags;->showSetScreenLockDialog()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/android/internal/app/SetScreenLockDialogActivity;->createBaseIntent(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_a
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1505f3

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f141a37

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const v0, 0x7f141a36

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    new-instance v0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;I)V

    const v1, 0x7f141a34

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;I)V

    const v1, 0x7f141a35

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;)V

    iget-object p0, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_b
    :goto_3
    return-void

    :cond_c
    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onLockAuthentication(Landroid/content/Context;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->mPrivateSpaceMaintainer:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    invoke-virtual {v0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->doesPrivateSpaceExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->unlockAndLaunchPrivateSpaceSettings(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/privatespace/PrivateSpaceSetupActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public setPrivateSpaceMaintainer(Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity$Injector;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->getInstance(Landroid/content/Context;)Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->mPrivateSpaceMaintainer:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    return-void
.end method

.method public final unlockAndLaunchPrivateSpaceSettings(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/privatespace/PrivateSpaceDashboardFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTransitionType:I

    const/16 v3, 0x7f8

    iput v3, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iget-object v2, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->mPrivateSpaceMaintainer:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    invoke-virtual {v2}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->isPrivateSpaceLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;->mPrivateSpaceMaintainer:Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "extra_show_private_space_unlocked"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {p1, v4, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    monitor-enter v3

    :try_start_0
    iget-object v0, v3, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v1, v3, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v4, v0, p1}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;Landroid/content/IntentSender;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v3

    goto :goto_2

    :goto_1
    monitor-exit v3

    throw p0

    :cond_1
    const-string p1, "PrivateSpaceAuthCheck"

    const-string v1, "Launch private space settings"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
