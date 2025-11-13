.class public Lcom/android/internal/app/MaintenanceModeIntroActivity;
.super Landroid/app/Activity;
.source "MaintenanceModeIntroActivity.java"


# static fields
.field private static final blacklist ACTION_MYFILES_RUN_STORAGE_ANALYSIS:Ljava/lang/String; = "com.sec.android.app.myfiles.RUN_STORAGE_ANALYSIS"

.field private static final blacklist DUMP_CHECK_DELAY:J = 0x3e8L

.field private static final blacklist DUMP_CHECK_INITIAL_DELAY:J = 0x2710L

.field private static final blacklist DUMP_CHECK_TIMEOUT:J = 0x493e0L

.field private static final blacklist TAG:Ljava/lang/String; = "MaintenanceMode"


# instance fields
.field private final blacklist mButtonExecutor:Ljava/util/concurrent/ExecutorService;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDialogView:Landroid/view/View;

.field private blacklist mDumpEndTime:J

.field private blacklist mDumpView:Landroid/view/View;

.field private blacklist mIsFold:Z

.field private blacklist mIsTablet:Z

.field private final blacklist mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

.field private blacklist mPreCheckedDataForCloudBackup:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRootView:Landroid/view/View;

.field private final blacklist mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private blacklist mTurnOnButton:Landroid/widget/Button;

.field private blacklist mUm:Landroid/os/UserManager;

.field private blacklist mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private blacklist mWaitingView:Landroid/view/View;

.field private blacklist mWm:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmButtonExecutor(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mButtonExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDumpView(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mDumpView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsTablet(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mIsTablet:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLoggingExecutor(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTurnOnButton(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mTurnOnButton:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUm(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/os/UserManager;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mUm:Landroid/os/UserManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewWindowParams(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWaitingView(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mWaitingView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWm(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mWm:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$menterMaintenanceMode(Lcom/android/internal/app/MaintenanceModeIntroActivity;)Landroid/content/pm/UserInfo;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->enterMaintenanceMode()Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mshowDialogToConfirmRestart(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->showDialogToConfirmRestart()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshowDialogToNotifyLowOnStorage(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->showDialogToNotifyLowOnStorage()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshowDialogToReconfirmCancelingBackup(Lcom/android/internal/app/MaintenanceModeIntroActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->showDialogToReconfirmCancelingBackup(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtriggerDump(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->triggerDump()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mIsTablet:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mIsFold:Z

    .line 64
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 65
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

    .line 66
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mButtonExecutor:Ljava/util/concurrent/ExecutorService;

    .line 67
    new-instance v1, Landroid/util/Pair;

    .line 68
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mPreCheckedDataForCloudBackup:Landroid/util/Pair;

    .line 67
    return-void
.end method

.method private blacklist adjustDialogLayout(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 510
    iget-boolean v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mIsTablet:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mIsFold:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mDialogView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 516
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 518
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mDialogView:Landroid/view/View;

    const v2, 0x10203d4

    .line 519
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 520
    .local v1, "dialogScrollView":Landroid/widget/ScrollView;
    nop

    .line 521
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 522
    .local v2, "dialogScrollViewLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v3, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mDialogView:Landroid/view/View;

    const v4, 0x10203d2

    .line 523
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 524
    .local v3, "checkBoxLayout":Landroid/view/View;
    iget-object v4, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mDialogView:Landroid/view/View;

    const v5, 0x10203d1

    .line 525
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 526
    .local v4, "dialogButtonLayout":Landroid/view/View;
    nop

    .line 527
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 529
    .local v5, "dialogButtonLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-ne v6, v7, :cond_1

    .line 530
    const v6, 0x1050216

    .line 531
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 532
    const v6, 0x1050214

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 534
    .local v6, "checkBoxPadding":I
    invoke-virtual {v3, v8, v6, v8, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 535
    const v7, 0x1050210

    .line 536
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 537
    const v7, 0x105020e

    .line 538
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 539
    .end local v6    # "checkBoxPadding":I
    goto :goto_0

    .line 540
    :cond_1
    const v6, 0x1050215

    .line 541
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 542
    const v6, 0x1050213

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 544
    .restart local v6    # "checkBoxPadding":I
    invoke-virtual {v3, v8, v6, v8, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 545
    const v7, 0x105020f

    .line 546
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 547
    const v7, 0x105020d

    .line 548
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 551
    .end local v6    # "checkBoxPadding":I
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    .end local v0    # "r":Landroid/content/res/Resources;
    .end local v1    # "dialogScrollView":Landroid/widget/ScrollView;
    .end local v2    # "dialogScrollViewLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3    # "checkBoxLayout":Landroid/view/View;
    .end local v4    # "dialogButtonLayout":Landroid/view/View;
    .end local v5    # "dialogButtonLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    return-void

    .line 513
    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist checkPendingDump()V
    .locals 4

    .line 566
    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->isDumpRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->isDumpTimeout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 570
    return-void

    .line 572
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 583
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 584
    return-void
.end method

.method private blacklist enterMaintenanceMode()Landroid/content/pm/UserInfo;
    .locals 4

    .line 601
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeUtils;->isSecureLockSet(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 602
    return-object v1

    .line 606
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 607
    .local v0, "um":Landroid/os/UserManager;
    iget-object v2, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040706

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x80400

    invoke-virtual {v0, v2, v3}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 609
    .end local v0    # "um":Landroid/os/UserManager;
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MaintenanceMode"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method private blacklist init()V
    .locals 10

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mRootView:Landroid/view/View;

    .line 250
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mUm:Landroid/os/UserManager;

    .line 251
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 253
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 258
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mWm:Landroid/view/WindowManager;

    .line 259
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x7e8

    const v8, 0x20100

    const/4 v9, -0x3

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 266
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 267
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 268
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 269
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 270
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 272
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x10901d9

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mWaitingView:Landroid/view/View;

    .line 274
    const v3, 0x10203e3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 275
    .local v1, "waitingTextView":Landroid/widget/TextView;
    iget-boolean v3, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mIsTablet:Z

    if-eqz v3, :cond_0

    .line 276
    const v3, 0x1040718

    goto :goto_0

    .line 277
    :cond_0
    const v3, 0x1040717

    .line 275
    :goto_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "waitingTextViewMessage":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v5, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    .line 280
    const v6, 0x105020a

    invoke-static {v5, v6}, Lcom/android/internal/app/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;I)F

    move-result v5

    .line 279
    invoke-virtual {v1, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 282
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x10901d8

    invoke-virtual {v5, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mDumpView:Landroid/view/View;

    .line 284
    const v5, 0x10203e1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 285
    .local v4, "dumpTextView":Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x1040714

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 287
    iget-boolean v7, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mIsTablet:Z

    if-eqz v7, :cond_1

    .line 288
    const v7, 0x1040716

    goto :goto_1

    .line 289
    :cond_1
    const v7, 0x1040715

    .line 287
    :goto_1
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 290
    .local v5, "dumpTextViewMessage":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v7, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    .line 292
    invoke-static {v7, v6}, Lcom/android/internal/app/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;I)F

    move-result v6

    .line 291
    invoke-virtual {v4, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 294
    iget-boolean v6, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mIsTablet:Z

    if-eqz v6, :cond_2

    .line 295
    const v6, 0x1050202

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 297
    .local v6, "padding":I
    iget-object v7, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mWaitingView:Landroid/view/View;

    const v8, 0x10203e2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 299
    .local v7, "waitingViewContainer":Landroid/view/View;
    invoke-virtual {v7, v6, v2, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 300
    iget-object v8, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mDumpView:Landroid/view/View;

    const v9, 0x10203e0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 302
    .local v8, "dumpViewContainer":Landroid/view/View;
    invoke-virtual {v8, v6, v2, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 304
    .end local v6    # "padding":I
    .end local v7    # "waitingViewContainer":Landroid/view/View;
    .end local v8    # "dumpViewContainer":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private blacklist isDumpRunning()Z
    .locals 2

    .line 587
    const-string v0, "dumpstate.is_running"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private blacklist isDumpTimeout()Z
    .locals 4

    .line 591
    iget-wide v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mDumpEndTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 592
    .local v0, "remainingTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 593
    const-string v2, "MaintenanceMode"

    const-string v3, "Dumpstate wait timed out"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v2, 0x1

    return v2

    .line 596
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method static synthetic blacklist lambda$showDialogToConfirmRestart$12(Landroid/widget/CheckedTextView;Landroid/view/View;)V
    .locals 0
    .param p0, "checkedTextView"    # Landroid/widget/CheckedTextView;
    .param p1, "v"    # Landroid/view/View;

    .line 443
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->toggle()V

    return-void
.end method

.method private blacklist setContentView(Landroid/content/res/Configuration;)V
    .locals 10
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 110
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    .local v0, "r":Landroid/content/res/Resources;
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 113
    .local v1, "isLandscape":Z
    :goto_0
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->isPopOver()Z

    move-result v3

    .line 114
    .local v3, "isPopOver":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPopOver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MaintenanceMode"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-boolean v4, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mIsTablet:Z

    const v5, 0x10203cf

    const v6, 0x109002b

    if-eqz v4, :cond_4

    .line 117
    invoke-virtual {p0, v6}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->setContentView(I)V

    .line 118
    invoke-virtual {p0, v5}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 119
    .local v4, "container":Landroid/view/View;
    const/4 v5, 0x0

    .line 120
    .local v5, "padding":I
    if-eqz v3, :cond_1

    .line 121
    if-eqz v1, :cond_3

    .line 122
    const v6, 0x1050204

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_1

    .line 126
    :cond_1
    if-eqz v1, :cond_2

    .line 127
    const v6, 0x1050203

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_1

    .line 130
    :cond_2
    const v6, 0x1050202

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 134
    :cond_3
    :goto_1
    invoke-virtual {v4, v5, v2, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 135
    .end local v4    # "container":Landroid/view/View;
    .end local v5    # "padding":I
    goto :goto_3

    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mIsFold:Z

    const v7, 0x109002c

    const/16 v8, 0x400

    if-eqz v4, :cond_9

    .line 136
    iget v4, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v9, 0x5

    if-ne v4, v9, :cond_6

    .line 137
    if-eqz v1, :cond_5

    .line 138
    invoke-virtual {p0, v7}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->setContentView(I)V

    .line 139
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->addFlags(I)V

    goto :goto_3

    .line 141
    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->setContentView(I)V

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_3

    .line 145
    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->setContentView(I)V

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 147
    invoke-virtual {p0, v5}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 148
    .restart local v4    # "container":Landroid/view/View;
    const/4 v5, 0x0

    .line 149
    .restart local v5    # "padding":I
    if-nez v3, :cond_8

    .line 150
    if-eqz v1, :cond_7

    .line 151
    const v6, 0x1050201

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_2

    .line 154
    :cond_7
    const v6, 0x1050200

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 158
    :cond_8
    :goto_2
    invoke-virtual {v4, v5, v2, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 159
    .end local v4    # "container":Landroid/view/View;
    .end local v5    # "padding":I
    goto :goto_3

    .line 161
    :cond_9
    if-eqz v1, :cond_a

    .line 162
    invoke-virtual {p0, v7}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->setContentView(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->addFlags(I)V

    goto :goto_3

    .line 165
    :cond_a
    invoke-virtual {p0, v6}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->setContentView(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->clearFlags(I)V

    .line 170
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const v6, 0x1060223

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 172
    iget-boolean v4, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mIsTablet:Z

    if-eqz v4, :cond_b

    .line 173
    const v4, 0x10203d6

    invoke-virtual {p0, v4}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 174
    .local v4, "imageView":Landroid/widget/ImageView;
    const v5, 0x1050221

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 178
    .end local v4    # "imageView":Landroid/widget/ImageView;
    :cond_b
    const v4, 0x10203d8

    invoke-virtual {p0, v4}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 179
    .local v4, "introTextView":Landroid/widget/TextView;
    iget-boolean v5, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mIsTablet:Z

    if-eqz v5, :cond_c

    .line 180
    const v5, 0x1040704

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 182
    :cond_c
    const v5, 0x1040703

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 185
    :goto_4
    const v5, 0x10203d7

    .line 186
    invoke-virtual {p0, v5}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 187
    .local v5, "introRecommendationTextView":Landroid/widget/TextView;
    iget-boolean v6, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mIsTablet:Z

    if-eqz v6, :cond_d

    .line 188
    const v6, 0x1040702

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 191
    :cond_d
    const v6, 0x1040701

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 195
    :goto_5
    const v6, 0x10203d9

    invoke-virtual {p0, v6}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mTurnOnButton:Landroid/widget/Button;

    .line 196
    iget-boolean v7, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mIsTablet:Z

    if-eqz v7, :cond_e

    .line 197
    const v7, 0x10501ff

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setWidth(I)V

    .line 200
    :cond_e
    iget-object v6, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mTurnOnButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const v8, 0x1050206

    .line 201
    invoke-static {v7, v8}, Lcom/android/internal/app/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;I)F

    move-result v7

    .line 200
    invoke-virtual {v6, v2, v7}, Landroid/widget/Button;->setTextSize(IF)V

    .line 202
    iget-object v6, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mTurnOnButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/internal/app/MaintenanceModeIntroActivity$1;

    invoke-direct {v7, p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$1;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    const v6, 0x10203cd

    invoke-virtual {p0, v6}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 228
    .local v6, "backupMenu":Landroid/view/View;
    const v7, 0x1080a1c

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 229
    new-instance v7, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda11;

    invoke-direct {v7, p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    const v7, 0x10203ce

    invoke-virtual {p0, v7}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 244
    .local v7, "backupMenuMainTextView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const v9, 0x1050219

    .line 245
    invoke-static {v8, v9}, Lcom/android/internal/app/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;I)F

    move-result v8

    .line 244
    invoke-virtual {v7, v2, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 246
    return-void
.end method

.method private blacklist showDialogToConfirmRestart()V
    .locals 10

    .line 419
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090082

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mDialogView:Landroid/view/View;

    .line 420
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->adjustDialogLayout(Landroid/content/res/Configuration;)V

    .line 422
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mDialogView:Landroid/view/View;

    .line 423
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 424
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 425
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 427
    iget-object v2, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 429
    .local v2, "r":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mDialogView:Landroid/view/View;

    const v4, 0x10203d5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 430
    .local v3, "dialogTextView":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    iget-boolean v5, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mIsTablet:Z

    if-eqz v5, :cond_0

    .line 432
    const v5, 0x10406fa

    goto :goto_0

    .line 433
    :cond_0
    const v5, 0x10406f9

    .line 431
    :goto_0
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 435
    iget-boolean v5, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mIsTablet:Z

    if-eqz v5, :cond_1

    .line 436
    const v5, 0x10406fc

    goto :goto_1

    .line 437
    :cond_1
    const v5, 0x10406fb

    .line 435
    :goto_1
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 438
    .local v4, "textViewMessage":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v5, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const v6, 0x105020a

    .line 440
    invoke-static {v5, v6}, Lcom/android/internal/app/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;I)F

    move-result v5

    .line 439
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 442
    iget-object v5, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mDialogView:Landroid/view/View;

    const v7, 0x10203d3

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckedTextView;

    .line 443
    .local v5, "checkedTextView":Landroid/widget/CheckedTextView;
    new-instance v7, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda9;

    invoke-direct {v7, v5}, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda9;-><init>(Landroid/widget/CheckedTextView;)V

    invoke-virtual {v5, v7}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object v7, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const v8, 0x1050207

    const v9, 0x3f8ccccd    # 1.1f

    .line 445
    invoke-static {v7, v8, v9}, Lcom/android/internal/app/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;IF)F

    move-result v7

    .line 444
    invoke-virtual {v5, v6, v7}, Landroid/widget/CheckedTextView;->setTextSize(IF)V

    .line 447
    iget-object v7, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mDialogView:Landroid/view/View;

    const v8, 0x10203d0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 448
    .local v7, "dialogButton":Landroid/widget/Button;
    iget-object v8, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const v9, 0x1050206

    .line 449
    invoke-static {v8, v9}, Lcom/android/internal/app/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;I)F

    move-result v8

    .line 448
    invoke-virtual {v7, v6, v8}, Landroid/widget/Button;->setTextSize(IF)V

    .line 450
    new-instance v6, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;

    invoke-direct {v6, p0, v5, v1}, Lcom/android/internal/app/MaintenanceModeIntroActivity$2;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;Landroid/widget/CheckedTextView;Landroid/app/AlertDialog;)V

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 507
    return-void
.end method

.method private blacklist showDialogToNotifyLowOnStorage()V
    .locals 4

    .line 344
    const-string v0, "MaintenanceMode"

    const-string v1, "Low on storage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 346
    const v1, 0x1040700

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 347
    iget-boolean v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mIsTablet:Z

    if-eqz v1, :cond_0

    .line 348
    const v1, 0x10406ff

    goto :goto_0

    .line 349
    :cond_0
    const v1, 0x10406fe

    .line 347
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x10406fd

    new-instance v2, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V

    .line 350
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 358
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 359
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    .line 360
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 361
    return-void
.end method

.method private blacklist showDialogToReconfirmCancelingBackup(Ljava/lang/String;)V
    .locals 7
    .param p1, "backupStatus"    # Ljava/lang/String;

    .line 364
    const v0, 0x1040710

    .line 365
    .local v0, "messageResId":I
    const/4 v1, 0x0

    .line 366
    .local v1, "isCloudBackupInProgress":Z
    if-eqz p1, :cond_1

    .line 367
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v3, "BACKUP_RUNNING"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "BACKUP_NON_FINISHED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "RESTORE_RUNNING"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 379
    :pswitch_0
    const v0, 0x1040713

    .line 381
    const/4 v1, 0x1

    goto :goto_1

    .line 374
    :pswitch_1
    const v0, 0x1040711

    .line 376
    const/4 v1, 0x1

    .line 377
    goto :goto_1

    .line 369
    :pswitch_2
    const v0, 0x1040712

    .line 371
    const/4 v1, 0x1

    .line 385
    :cond_1
    :goto_1
    move v2, v1

    .line 387
    .local v2, "needToLaunchCloudApp":Z
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 388
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10406f5

    new-instance v5, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda13;

    invoke-direct {v5, p0, v2}, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda13;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;Z)V

    .line 389
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10406f4

    new-instance v5, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda14;

    invoke-direct {v5, p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda14;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V

    .line 403
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda15;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V

    .line 407
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 413
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 414
    .local v4, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x50

    invoke-virtual {v5, v6}, Landroid/view/Window;->setGravity(I)V

    .line 415
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 416
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3fd5a732 -> :sswitch_2
        -0x2c16aedf -> :sswitch_1
        -0xd7f2fde -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist triggerDump()V
    .locals 4

    .line 557
    const-string v0, "bugreport.mode"

    const-string/jumbo v1, "light_mode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v0, "ctl.start"

    const-string v1, "bugreportm"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mDumpEndTime:J

    .line 560
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 563
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$checkPendingDump$14$com-android-internal-app-MaintenanceModeIntroActivity()V
    .locals 0

    .line 568
    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->checkPendingDump()V

    .line 569
    return-void
.end method

.method synthetic blacklist lambda$checkPendingDump$15$com-android-internal-app-MaintenanceModeIntroActivity()V
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mUm:Landroid/os/UserManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLowOnStorageForMaintenanceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->showDialogToNotifyLowOnStorage()V

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mTurnOnButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 581
    return-void
.end method

.method synthetic blacklist lambda$checkPendingDump$16$com-android-internal-app-MaintenanceModeIntroActivity()V
    .locals 3

    .line 573
    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->enterMaintenanceMode()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 574
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    .line 575
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mDumpView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 576
    new-instance v1, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda16;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 583
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$init$2$com-android-internal-app-MaintenanceModeIntroActivity()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    .line 255
    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeUtils;->checkWhetherCloudBackupIsSupported(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mPreCheckedDataForCloudBackup:Landroid/util/Pair;

    .line 256
    return-void
.end method

.method synthetic blacklist lambda$onResume$3$com-android-internal-app-MaintenanceModeIntroActivity()V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    .line 324
    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeUtils;->checkWhetherCloudBackupIsSupported(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mPreCheckedDataForCloudBackup:Landroid/util/Pair;

    .line 325
    return-void
.end method

.method synthetic blacklist lambda$setContentView$0$com-android-internal-app-MaintenanceModeIntroActivity()V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const-string v1, "7067"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/MaintenanceModeUtils;->sendLoggingDataToSA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic blacklist lambda$setContentView$1$com-android-internal-app-MaintenanceModeIntroActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 231
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/app/MaintenanceModeBackupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "IS_CLOUD_BACKUP_SUPPORTED"

    iget-object v2, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mPreCheckedDataForCloudBackup:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 234
    const-string v1, "CLOUD_BACKUP_EXPIRY_DATE"

    iget-object v2, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mPreCheckedDataForCloudBackup:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->startActivity(Landroid/content/Intent;)V

    .line 237
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$showDialogToNotifyLowOnStorage$4$com-android-internal-app-MaintenanceModeIntroActivity(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 352
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.myfiles.RUN_STORAGE_ANALYSIS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$showDialogToReconfirmCancelingBackup$10$com-android-internal-app-MaintenanceModeIntroActivity()V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const-string v1, "7069"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/MaintenanceModeUtils;->sendLoggingDataToSA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic blacklist lambda$showDialogToReconfirmCancelingBackup$11$com-android-internal-app-MaintenanceModeIntroActivity(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 410
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda12;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 412
    return-void
.end method

.method synthetic blacklist lambda$showDialogToReconfirmCancelingBackup$5$com-android-internal-app-MaintenanceModeIntroActivity()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    .line 393
    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeUtils;->getCloudBackupStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "cloudBackupStatus":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/internal/app/MaintenanceModeUtils;->startCloudActivityAsBackupStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method synthetic blacklist lambda$showDialogToReconfirmCancelingBackup$6$com-android-internal-app-MaintenanceModeIntroActivity()V
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const-string v1, "7068"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/MaintenanceModeUtils;->sendLoggingDataToSA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic blacklist lambda$showDialogToReconfirmCancelingBackup$7$com-android-internal-app-MaintenanceModeIntroActivity(ZLandroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "needToLaunchCloudApp"    # Z
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 390
    if-eqz p1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mButtonExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 398
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->showDialogToConfirmRestart()V

    .line 400
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 402
    return-void
.end method

.method synthetic blacklist lambda$showDialogToReconfirmCancelingBackup$8$com-android-internal-app-MaintenanceModeIntroActivity()V
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const-string v1, "7069"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/MaintenanceModeUtils;->sendLoggingDataToSA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic blacklist lambda$showDialogToReconfirmCancelingBackup$9$com-android-internal-app-MaintenanceModeIntroActivity(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 404
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 406
    return-void
.end method

.method synthetic blacklist lambda$triggerDump$13$com-android-internal-app-MaintenanceModeIntroActivity()V
    .locals 0

    .line 561
    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->checkPendingDump()V

    .line 562
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 338
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 339
    invoke-direct {p0, p1}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->setContentView(Landroid/content/res/Configuration;)V

    .line 340
    invoke-direct {p0, p1}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->adjustDialogLayout(Landroid/content/res/Configuration;)V

    .line 341
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    .line 80
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeUtils;->hasSystemFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->finish()V

    .line 82
    return-void

    .line 85
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->finish()V

    .line 87
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeUtils;->doesMaintenanceModeUserIdExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    const-string v0, "MaintenanceMode"

    const-string v1, "Cannot enable Maintenance mode."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->finish()V

    .line 93
    return-void

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeUtils;->isSecureLockSet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 97
    invoke-static {p0}, Lcom/android/internal/app/MaintenanceModeUtils;->startActivityToSetSecureLock(Landroid/content/Context;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->finish()V

    .line 99
    return-void

    .line 102
    :cond_3
    invoke-static {}, Lcom/android/internal/app/MaintenanceModeUtils;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mIsTablet:Z

    .line 103
    invoke-static {}, Lcom/android/internal/app/MaintenanceModeUtils;->isFold()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mIsFold:Z

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->setContentView(Landroid/content/res/Configuration;)V

    .line 106
    invoke-direct {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->init()V

    .line 107
    return-void
.end method

.method protected whitelist onDestroy()V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 331
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mButtonExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 332
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 333
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 334
    return-void
.end method

.method protected whitelist onResume()V
    .locals 3

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "isFinished":Z
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/app/MaintenanceModeUtils;->isSecureLockSet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    invoke-static {p0}, Lcom/android/internal/app/MaintenanceModeUtils;->startActivityToSetSecureLock(Landroid/content/Context;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->finish()V

    .line 312
    const/4 v0, 0x1

    goto :goto_0

    .line 313
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/internal/app/MaintenanceModeUtils;->hasSystemFeature(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity;->finish()V

    .line 315
    const/4 v0, 0x1

    .line 317
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 318
    if-eqz v0, :cond_2

    .line 319
    return-void

    .line 322
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeIntroActivity;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MaintenanceModeIntroActivity$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/app/MaintenanceModeIntroActivity;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 326
    return-void
.end method
