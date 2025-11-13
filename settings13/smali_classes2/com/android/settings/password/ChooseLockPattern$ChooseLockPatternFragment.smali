.class public Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ChooseLockPattern.java"

# interfaces
.implements Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;,
        Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;,
        Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    }
.end annotation


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mAnimatePattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomBar:Landroid/widget/LinearLayout;

.field private mChallengeFace:J

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field protected mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

.field private mDefaultHeaderColorList:Landroid/content/res/ColorStateList;

.field private mEventDetail:I

.field private mFooterLeftButton:Landroid/widget/TextView;

.field private mFooterRightButton:Landroid/widget/TextView;

.field protected mFooterText:Landroid/widget/TextView;

.field private mForAppLockBackupKey:Z

.field protected mForBiometrics:Z

.field protected mForFace:Z

.field protected mForFingerprint:Z

.field private mForPrivateModeBackupKey:Z

.field private mFromAppLock:Z

.field private mFromPersonalPage:Z

.field private mFromScreenLockBio:Z

.field private mFromSettingsBio:Z

.field private mFromSetupWizard:Z

.field protected mHeaderText:Landroid/widget/TextView;

.field private mHelpText:Landroid/widget/TextView;

.field private mIsApplyingSetupTheme:Z

.field private mIsApplyingTabletGui:Z

.field private mIsFromKnoxTwoStep:Z

.field protected mIsManagedProfile:Z

.field private mIsUnlockRecovery:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mMenu:Landroid/view/Menu;

.field private mMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

.field private mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private mPwdChangeEnforceStatus:I

.field private mRequestGatekeeperPassword:Z

.field private mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

.field mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSecondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

.field protected mSkipOrClearButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field protected mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmClearPatternRunnable(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultHeaderColorList(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mDefaultHeaderColorList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFooterLeftButton(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFooterRightButton(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMenu(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/view/Menu;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mMenu:Landroid/view/Menu;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestGatekeeperPassword(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mRequestGatekeeperPassword:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUiStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 4

    .line 409
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, 0x0

    .line 446
    iput v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mPwdChangeEnforceStatus:I

    .line 454
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mIsUnlockRecovery:Z

    const/4 v1, 0x1

    .line 455
    iput v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mEventDetail:I

    const-wide/16 v2, 0x0

    .line 457
    iput-wide v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChallengeFace:J

    .line 467
    new-instance v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$1;-><init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/android/internal/widget/LockPatternView$Cell;

    .line 486
    invoke-static {v0, v0}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v3

    aput-object v3, v2, v0

    .line 487
    invoke-static {v0, v1}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    aput-object v0, v2, v1

    .line 488
    invoke-static {v1, v1}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 489
    invoke-static {v3, v1}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v2, v1

    .line 485
    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    .line 581
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$2;-><init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 764
    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 766
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$3;-><init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private finishWhenMultiwindowMode(Z)V
    .locals 2

    .line 1128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->lock_screen_doesnt_support_multi_window_text:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 3

    .line 1470
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1471
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveForSECFeature()V
    .locals 3

    .line 1272
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 1277
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromPersonalPage:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForPrivateModeBackupKey:Z

    if-eqz v0, :cond_2

    .line 1278
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 1281
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private startSaveAndFinish()V
    .locals 10

    .line 1475
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    const-string p0, "ChooseLockPattern"

    const-string/jumbo v0, "startSaveAndFinish with an existing SaveAndFinishWorker."

    .line 1476
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1480
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 1482
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    invoke-direct {v0}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;-><init>()V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    .line 1483
    invoke-virtual {v0, p0}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    .line 1485
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    const-string/jumbo v2, "save_and_finish_worker"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 1486
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 1487
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 1489
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "extra_require_password"

    .line 1490
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string/jumbo v1, "unification_profile_id"

    .line 1492
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "unification_profile_credential"

    .line 1494
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockscreenCredential;

    .line 1495
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    const/16 v4, -0x2710

    .line 1496
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1495
    invoke-virtual {v3, v0, v2}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->setProfileToUnify(ILcom/android/internal/widget/LockscreenCredential;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 1499
    invoke-virtual {v2}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_1

    .line 1493
    :try_start_1
    invoke-virtual {v2}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0

    .line 1501
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v6, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mRequestGatekeeperPassword:Z

    iget-object v7, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    iget-object v8, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    iget v9, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZLcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)V

    const/16 v0, 0x1b

    const/16 v1, 0x115b

    .line 1504
    iget p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mEventDetail:I

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method


# virtual methods
.method public createOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .line 550
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportActionBarButton(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget v0, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->text:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 552
    invoke-interface {p1, v2, v3, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 553
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 554
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v4, v4, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget-boolean v4, v4, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 555
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget v0, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 556
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 557
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v2, v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget-boolean v2, v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 558
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mMenu:Landroid/view/Menu;

    :cond_0
    return v1
.end method

.method protected getChooseLockHintSettingsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    .line 1191
    iget p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    invoke-static {p1, p0}, Lcom/samsung/android/settings/lockscreen/ChooseLockHintSettings;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1d

    return p0
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    .line 1186
    iget p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    invoke-static {p1, p0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public handleLeftButton()V
    .locals 4

    .line 1195
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v1, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 1196
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_0

    .line 1197
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 1198
    iput-object v3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    .line 1201
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$integer;->lockscreen_choose_lock_pattern_retry:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 1203
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 1204
    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_1

    .line 1207
    :cond_1
    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v1, v2, :cond_4

    .line 1208
    iget v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mPwdChangeEnforceStatus:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    .line 1209
    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_2

    .line 1210
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 1211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1213
    :cond_2
    iput-object v3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    .line 1214
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 1215
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    :goto_0
    return-void

    .line 1219
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$integer;->lockscreen_notification_redaction_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 1220
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    .line 1224
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left footer button pressed, but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t make sense"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleRightButton()V
    .locals 5

    .line 1230
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v1, v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v3, " when button is "

    const-string v4, "expected ui stage "

    if-ne v1, v2, :cond_1

    .line 1231
    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 1236
    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto/16 :goto_1

    .line 1232
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1237
    :cond_1
    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v1, v2, :cond_5

    .line 1238
    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_4

    .line 1243
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromPersonalPage:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForPrivateModeBackupKey:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromAppLock:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForAppLockBackupKey:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1249
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->startSaveAndFinish()V

    .line 1251
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p0}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    return-void

    .line 1244
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->saveForSECFeature()V

    return-void

    .line 1239
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1259
    :cond_5
    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v1, v2, :cond_7

    .line 1260
    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_6

    .line 1264
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 1265
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 1266
    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_1

    .line 1261
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 495
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 499
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 500
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "password"

    .line 502
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 506
    :goto_0
    sget-object p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    :goto_1
    return-void
.end method

.method public onChosenLockSaveFinished(ZLandroid/content/Intent;)V
    .locals 6

    .line 1511
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromSetupWizard:Z

    if-nez v0, :cond_0

    .line 1513
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v2}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isFmmUnlockAllowed(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1514
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getFmmService(Lcom/android/internal/widget/LockscreenCredential;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1516
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1520
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooseLockPattern"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1526
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mIsFromKnoxTwoStep:Z

    if-nez v0, :cond_1

    .line 1527
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 1529
    :cond_1
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p2, :cond_2

    .line 1530
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    :cond_2
    const/4 p2, 0x0

    if-nez p1, :cond_3

    .line 1534
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForPrivateModeBackupKey:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForAppLockBackupKey:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForFingerprint:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForFace:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mIsFromKnoxTwoStep:Z

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, p2

    .line 1536
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getChooseLockHintSettingsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "justPPP"

    const-string v4, "fromSetupWizard"

    if-eqz v2, :cond_5

    const-string/jumbo v5, "set_redaction"

    .line 1538
    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1539
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromSetupWizard:Z

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1540
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForFace:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForFingerprint:Z

    if-nez v0, :cond_4

    .line 1541
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1543
    :cond_4
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_7

    .line 1545
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1547
    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromSetupWizard:Z

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1548
    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForFace:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForFingerprint:Z

    if-nez v2, :cond_6

    .line 1549
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1551
    :cond_6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_7
    :goto_2
    if-nez p1, :cond_8

    .line 1563
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mIsFromKnoxTwoStep:Z

    if-eqz p1, :cond_8

    .line 1564
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v0, "trust"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/trust/TrustManager;

    .line 1565
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 1568
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 786
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 787
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/password/ChooseLockPattern;

    if-eqz p1, :cond_7

    .line 790
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 792
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    .line 793
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mIsManagedProfile:Z

    .line 795
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v0, "for_cred_req_boot"

    const/4 v1, 0x0

    .line 797
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 799
    new-instance v3, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    invoke-direct {v3}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;-><init>()V

    .line 800
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "extra_require_password"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string/jumbo v0, "password"

    .line 802
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/internal/widget/LockscreenCredential;

    .line 804
    invoke-virtual {v3, v2}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->setBlocking(Z)V

    .line 805
    invoke-virtual {v3, p0}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    .line 806
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v6, 0x0

    iget v9, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    move-object v7, v8

    invoke-virtual/range {v3 .. v9}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZLcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)V

    :cond_0
    const-string v0, "for_fingerprint"

    .line 809
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForFingerprint:Z

    const-string v0, "for_face"

    .line 811
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForFace:Z

    const-string v0, "for_biometrics"

    .line 813
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForBiometrics:Z

    .line 817
    new-instance v0, Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    invoke-direct {v0, v3, v4, p1}, Lcom/android/settings/password/LockTypePolicy;-><init>(Landroid/content/Context;ILandroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    const-string v0, "from_personal"

    .line 819
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromPersonalPage:Z

    const-string v0, "from_applock"

    .line 820
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromAppLock:Z

    const-string/jumbo v0, "screen_lock_bio"

    .line 821
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromScreenLockBio:Z

    const-string/jumbo v0, "settings_bio"

    .line 822
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromSettingsBio:Z

    const-string v0, "fromSetupWizard"

    .line 823
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromSetupWizard:Z

    const-string v0, "forPrivateBackupKey"

    .line 824
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForPrivateModeBackupKey:Z

    const-string v0, "forAppLockBackupKey"

    .line 825
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForAppLockBackupKey:Z

    .line 827
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingTabletGUI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mIsApplyingTabletGui:Z

    .line 828
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isApplyingSetupTheme(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mIsApplyingSetupTheme:Z

    .line 830
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mAlarmManager:Landroid/app/AlarmManager;

    .line 833
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v5, "isChangeRequested"

    invoke-static {v0, v4, v5, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 836
    iput v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mPwdChangeEnforceStatus:I

    .line 839
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "fmm_unlock_recovery"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mIsUnlockRecovery:Z

    .line 841
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromSettingsBio:Z

    const/4 v2, 0x2

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromScreenLockBio:Z

    if-eqz v0, :cond_4

    .line 842
    :cond_3
    iput v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mEventDetail:I

    .line 844
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromSetupWizard:Z

    if-nez v0, :cond_5

    .line 845
    iget v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mEventDetail:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mEventDetail:I

    .line 847
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 850
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isWorkDeviceOrProfile()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 851
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 855
    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->initializeStreamCipher()J

    move-result-wide v2

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate - StreamCipher initialized with handle("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ChooseLockPattern.SDP"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "is_knox_two_step"

    .line 859
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mIsFromKnoxTwoStep:Z

    return-void

    .line 788
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Fragment contained in wrong activity"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 928
    iget-boolean p3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mIsApplyingTabletGui:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 929
    sget p0, Lcom/android/settings/R$layout;->sec_choose_lock_pattern_tablet:I

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 930
    :cond_0
    iget-boolean p3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromSetupWizard:Z

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mIsApplyingSetupTheme:Z

    if-eqz p3, :cond_1

    .line 931
    sget p3, Lcom/android/settings/R$layout;->sec_setup_choose_lock_pattern:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    .line 933
    const-class p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p2

    check-cast p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 934
    new-instance p3, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 935
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p3, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->lockpattern_retry_button_text:I

    .line 936
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(Ljava/lang/String;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p3

    new-instance v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)V

    .line 937
    invoke-virtual {p3, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p3

    .line 938
    invoke-virtual {p3, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p3

    sget v0, Lcom/android/settings/R$style;->SudGlifButton_Secondary:I

    .line 939
    invoke-virtual {p3, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p3

    .line 940
    invoke-virtual {p3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p3

    .line 934
    invoke-virtual {p2, p3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 942
    new-instance p3, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 943
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->lockpassword_continue_label:I

    .line 944
    invoke-virtual {p3, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p3

    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)V

    .line 945
    invoke-virtual {p3, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p3

    const/4 v0, 0x5

    .line 946
    invoke-virtual {p3, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p3

    sget v0, Lcom/android/settings/R$style;->SudGlifButton_Primary:I

    .line 947
    invoke-virtual {p3, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p3

    .line 948
    invoke-virtual {p3}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p3

    .line 942
    invoke-virtual {p2, p3}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 950
    invoke-virtual {p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getButtonContainer()Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_lock_suw_background_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 951
    invoke-virtual {p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSecondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 952
    invoke-virtual {p2}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 953
    iput-object p2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    return-object p1

    .line 956
    :cond_1
    sget p0, Lcom/android/settings/R$layout;->sec_choose_lock_pattern:I

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 1168
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onDestroy()V

    .line 1169
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_0

    .line 1170
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    const/4 v0, 0x0

    .line 1172
    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 1177
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1178
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 1179
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onKeyBackPressedListener()Z
    .locals 0

    .line 513
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->isAsyncTaskRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 1116
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    if-eqz p1, :cond_1

    .line 1117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1119
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->finishWhenMultiwindowMode(Z)V

    return-void

    :cond_0
    const-string p0, "ChooseLockPattern"

    const-string p1, "If knox user or Dex stand alone mode, enable multi window"

    .line 1122
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 0

    .line 1290
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->handleRightButton()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 1152
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    .line 1153
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1154
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    const-string/jumbo v2, "screen_lock_force_destroy"

    .line 1159
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1134
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 1137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v0}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1138
    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->finishWhenMultiwindowMode(Z)V

    return-void

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 1144
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1145
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 1146
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1308
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1310
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string/jumbo v1, "uiStage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1311
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz v0, :cond_0

    const-string v1, "chosenPattern"

    .line 1312
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1315
    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    if-eqz p0, :cond_1

    .line 1316
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->duplicate()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    const-string v0, "currentPattern"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method protected onSkipOrClearButtonClick(Landroid/view/View;)V
    .locals 0

    .line 1286
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->handleLeftButton()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .line 963
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 964
    sget v0, Lcom/android/settings/R$id;->headerText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    .line 965
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mDefaultHeaderColorList:Landroid/content/res/ColorStateList;

    .line 966
    sget v0, Lcom/android/settings/R$id;->lockPattern:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 967
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 970
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 972
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setFadePattern(Z)V

    .line 974
    sget v0, Lcom/android/settings/R$id;->footerText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    .line 978
    sget v0, Lcom/android/settings/R$id;->topLayout:I

    .line 979
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 981
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 983
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "confirm_credentials"

    const/4 v3, 0x1

    .line 984
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 985
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez p2, :cond_0

    const-string/jumbo v4, "password"

    .line 989
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    :cond_0
    const-string/jumbo v4, "request_gk_pw_handle"

    .line 995
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mRequestGatekeeperPassword:Z

    .line 1000
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v4}, Lcom/android/settings/password/LockTypePolicy;->isEnterpriseUser()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez p2, :cond_1

    const-string v4, "is_knox_password_secured"

    .line 1002
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1004
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onViewCreated - Password secured for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ChooseLockPattern.SDP"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    .line 1007
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 1008
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->getCipherPublicHandle()J

    move-result-wide v4

    .line 1007
    invoke-static {v2, v4, v5}, Lcom/samsung/android/settings/knox/KnoxUtils;->restoreCipherPassword(Lcom/android/internal/widget/LockscreenCredential;J)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 1014
    :cond_1
    sget v2, Lcom/android/settings/R$id;->bottom_bar:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mBottomBar:Landroid/widget/LinearLayout;

    .line 1016
    sget v2, Lcom/android/settings/R$id;->choose_lock_pattern_main_view:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mMainView:Landroid/widget/LinearLayout;

    .line 1018
    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromSetupWizard:Z

    const/16 v4, 0x8

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mIsApplyingSetupTheme:Z

    if-eqz v2, :cond_2

    .line 1019
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1023
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportActionBarButton(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1024
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1027
    :cond_3
    sget v2, Lcom/android/settings/R$id;->footerLeftButton:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    .line 1028
    sget v2, Lcom/android/settings/R$id;->footerRightButton:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    .line 1030
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    new-instance v4, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1031
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    new-instance v4, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1033
    iget v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    const/16 v4, -0x2710

    if-eq v2, v4, :cond_4

    .line 1034
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iget v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v1

    .line 1035
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    move v4, v3

    goto :goto_1

    :cond_5
    move v4, v1

    .line 1037
    :goto_1
    sget v5, Lcom/android/settings/R$id;->helpText:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHelpText:Landroid/widget/TextView;

    .line 1038
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHelpText:Landroid/widget/TextView;

    invoke-static {p1, v5}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 1039
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHelpText:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    .line 1040
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/security/SecurityUtils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    if-nez v4, :cond_6

    .line 1041
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromAppLock:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromPersonalPage:Z

    if-nez p1, :cond_7

    if-nez v2, :cond_7

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    .line 1043
    invoke-virtual {p1}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1044
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1045
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v4, Lcom/android/settings/R$string;->sec_chooselock_warning_text_pattern:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getColorAdjustmentType(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isColorBlindSwitchEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1047
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1050
    :cond_7
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mIsUnlockRecovery:Z

    if-eqz p1, :cond_8

    .line 1051
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHelpText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1056
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/SettingsActivity;

    if-eqz p1, :cond_b

    .line 1057
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 1058
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v2}, Lcom/android/settings/password/LockTypePolicy;->isKnoxId()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForFingerprint:Z

    if-nez v2, :cond_b

    .line 1059
    sget v2, Lcom/android/settings/R$string;->sec_knox_pattern_title:I

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    invoke-static {v5, v6}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1060
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockTypePolicy:Lcom/android/settings/password/LockTypePolicy;

    invoke-virtual {v2}, Lcom/android/settings/password/LockTypePolicy;->isSecureFolderUser()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1061
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isSecBrandAsGalaxy()Z

    move-result v1

    if-eqz v1, :cond_9

    sget v1, Lcom/android/settings/R$string;->sec_sf_set_pattern_header_jpn:I

    goto :goto_2

    :cond_9
    sget v1, Lcom/android/settings/R$string;->sec_sf_set_pattern_header:I

    :goto_2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1063
    :cond_a
    invoke-virtual {p1, v1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1068
    :cond_b
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromSetupWizard:Z

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mIsApplyingTabletGui:Z

    if-nez p1, :cond_c

    .line 1069
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mMainView:Landroid/widget/LinearLayout;

    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 1070
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    :cond_c
    if-nez p2, :cond_10

    .line 1075
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromPersonalPage:Z

    if-nez p1, :cond_f

    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForPrivateModeBackupKey:Z

    if-nez p1, :cond_f

    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mForAppLockBackupKey:Z

    if-nez p1, :cond_f

    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromAppLock:Z

    if-eqz p1, :cond_d

    goto :goto_3

    :cond_d
    if-eqz v0, :cond_e

    .line 1081
    sget-object p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 1083
    new-instance p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 1084
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/16 p2, 0x37

    .line 1085
    invoke-virtual {p1, p2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->unlock_set_unlock_launch_picker_title:I

    .line 1086
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 1087
    invoke-virtual {p1, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mRequestGatekeeperPassword:Z

    .line 1088
    invoke-virtual {p1, p2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    .line 1089
    invoke-virtual {p1, p2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 1090
    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p1

    if-nez p1, :cond_11

    .line 1093
    sget-object p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_4

    .line 1096
    :cond_e
    sget-object p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_4

    .line 1076
    :cond_f
    :goto_3
    sget-object p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_4

    :cond_10
    const-string p1, "chosenPattern"

    .line 1101
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Lcom/android/internal/widget/LockscreenCredential;

    const-string p1, "currentPattern"

    .line 1102
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/LockscreenCredential;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 1104
    invoke-static {}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->values()[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object p1

    const-string/jumbo v0, "uiStage"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 1107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string/jumbo p2, "save_and_finish_worker"

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;

    :cond_11
    :goto_4
    return-void
.end method

.method public selectOptionItem(Landroid/view/MenuItem;)Z
    .locals 2

    .line 564
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportActionBarButton(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 567
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 569
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->handleRightButton()V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 571
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->handleLeftButton()V

    :cond_2
    :goto_0
    return v1
.end method

.method public setEnableNextButtonImage(Z)V
    .locals 2

    .line 543
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromSetupWizard:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mIsApplyingSetupTheme:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    .line 546
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButtonView()Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->sswl_bottom_primary_button_text_color:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setRightButtonEnabled(Z)V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 522
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 523
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 525
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->setEnableNextButtonImage(Z)V

    return-void
.end method

.method protected setRightButtonText(I)V
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 534
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 535
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 537
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromSetupWizard:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mIsApplyingSetupTheme:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected updateFooterLeftButton(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 5

    .line 1438
    iget-object v0, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSkipOrClearButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    goto :goto_0

    .line 1442
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1443
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget v1, v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1444
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget-boolean v1, v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1452
    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1453
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v4, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget v4, v4, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1454
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget-boolean v1, v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1457
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromSetupWizard:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mIsApplyingSetupTheme:Z

    if-eqz v0, :cond_3

    .line 1458
    iget-object p1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne p1, v0, :cond_2

    .line 1459
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSecondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0, v3}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    goto :goto_1

    .line 1461
    :cond_2
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mSecondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 8

    .line 1327
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isVzwDemoMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1328
    sget-object p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 1332
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 1336
    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1

    .line 1337
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    .line 1338
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v7, 0x4

    .line 1340
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 1338
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1337
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1342
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFromAppLock:Z

    if-eqz v1, :cond_2

    .line 1343
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    sget v4, Lcom/android/settings/R$string;->lockpattern_recording_intro_header:I

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1345
    :cond_2
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget v4, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1381
    :goto_0
    iget v1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    .line 1382
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1384
    :cond_3
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1387
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateFooterLeftButton(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 1389
    iget-object v1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget v1, v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->text:I

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonText(I)V

    .line 1390
    iget-object v1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget-boolean v1, v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    .line 1393
    iget-boolean v1, p1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    if-eqz v1, :cond_4

    .line 1394
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto :goto_2

    .line 1396
    :cond_4
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    .line 1401
    :goto_2
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 1404
    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$1;->$SwitchMap$com$android$settings$password$ChooseLockPattern$ChooseLockPatternFragment$Stage:[I

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v3, :cond_9

    const/4 v4, 0x2

    if-eq v1, v4, :cond_8

    const/4 v4, 0x3

    if-eq v1, v4, :cond_7

    const/4 v4, 0x5

    if-eq v1, v4, :cond_6

    const/4 v4, 0x6

    if-eq v1, v4, :cond_5

    goto :goto_4

    .line 1422
    :cond_5
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 1423
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_3

    .line 1419
    :cond_6
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 1412
    :cond_7
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 1413
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    :goto_3
    move v2, v3

    goto :goto_4

    .line 1409
    :cond_8
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    goto :goto_4

    .line 1406
    :cond_9
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    :goto_4
    if-ne v0, p1, :cond_a

    if-eqz v2, :cond_b

    .line 1433
    :cond_a
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method
