.class public Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;
.super Landroid/app/Activity;
.source "MaintenanceModeIntroActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver;
    }
.end annotation


# static fields
.field private static final blacklist DUMP_CHECK_DELAY:J = 0x3e8L

.field private static final blacklist DUMP_CHECK_INITIAL_DELAY:J = 0x2710L

.field private static final blacklist DUMP_CHECK_TIMEOUT:J = 0x493e0L

.field private static final blacklist TAG:Ljava/lang/String; = "MaintenanceMode"


# instance fields
.field private final blacklist mButtonExecutor:Ljava/util/concurrent/ExecutorService;

.field private blacklist mCloudBackupIntroDescription:Ljava/lang/String;

.field private final blacklist mCloudBackupReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mCloudBackupRetentionPeriod:I

.field private blacklist mCloudBackupStatus:Ljava/lang/String;

.field private blacklist mCloudBackupTimerTask:Ljava/util/TimerTask;

.field private blacklist mColudBackupMenu:Landroid/view/View;

.field private blacklist mColudBackupMenuDivider:Landroid/view/View;

.field private blacklist mColudBackupMenuSubTextView:Landroid/widget/TextView;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDialogView:Landroid/view/View;

.field private blacklist mDumpEndTime:J

.field private blacklist mDumpView:Landroid/view/View;

.field private blacklist mExternalStorageBackupMenu:Landroid/view/View;

.field private blacklist mIsCloudBackupSupported:Z

.field private blacklist mIsFold:Z

.field private blacklist mIsTablet:Z

.field private final blacklist mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

.field private blacklist mResources:Landroid/content/res/Resources;

.field private blacklist mRootView:Landroid/view/View;

.field private final blacklist mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private final blacklist mTimer:Ljava/util/Timer;

.field private blacklist mTurnOnButton:Landroid/widget/Button;

.field private blacklist mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private blacklist mWaitingView:Landroid/view/View;

.field private blacklist mWm:Landroid/view/WindowManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$-z0SgpgVoNQcl8DY7ENod5_grLg(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$showDialogToNotifyLowOnStorage$13(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$0hlOUUmeo1Z3HuC5njI6aigB2UQ(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->updateCloudBackupMenuSubText()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$23hL0WrsYONbWrjSBk7oiWRNts4(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$checkPendingDump$31()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$2LpT7v0fNCYiXF9dKRtTKd0PE5g(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$setContentView$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3Z9GH6bESjlto96HeorU2V5td7A(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$showDialogToConfirmRestart$22()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3vquLB4IiWIRoS8mR0KJxm-DrBk(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$showDialogToReconfirmCancelingBackup$20(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6DmB-XNDzw3wcAEdx0BzOCDF-cA(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$showDialogToConfirmRestart$23()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7PA22bUm9reSZT74YRYE-p3Oboo(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$showDialogToConfirmRestart$25()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$AQWWXUcRzTZDm7qF1jzAcbX2tu0(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$setContentView$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$DGHu-quxfxcUfgvzAuZa6Zpc1iE(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$triggerDump$28()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EFl89-czD660jSNldy8AYIFWs68(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$showDialogToReconfirmCancelingBackup$14()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Kw7RnLDysY1Q8hEITZe2rGkumWM(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$setContentView$6()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LOq2U6tINRcEfexKPyoWsCpPzt8(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$checkPendingDump$29()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$O2tcY6_uObnFh4Bw-67FbZpI6x0(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$checkPendingDump$30()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PYnhhcqRAG5AXqpmX9PX_Jui7XU(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$checkAndUpdateCloudBackupMenu$10()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RtbavTCBhE_5CDB8H7de0FKqXTc(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$setContentView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$X6D3wM33O5JdYJ8id2Ye84VMbg0(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$showDialogToReconfirmCancelingBackup$16(ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ctDRfqbnXYjQiub6qAsxUfz9NlY(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$showDialogToConfirmRestart$24(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jvXFCBGQDCZPnKyeFVq-wwYuAs4(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$setContentView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kBWe7zSzTi7i0PF1rDH5yoOvyAI(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$showDialogToReconfirmCancelingBackup$18(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lbpu-MwDjSWXOHkYoHp5Y_hQaso(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$setContentView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$n4XdR3km8m_amklmu3WwEJovAUI(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;Landroid/widget/CheckedTextView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$showDialogToConfirmRestart$27(Landroid/widget/CheckedTextView;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$o8wWVScw8zBnBmIb2U5UZuhtIk8(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$showDialogToReconfirmCancelingBackup$15()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ov_rzYOZn4zrDeiPECx0FvtmKJg(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$setContentView$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$q0_uV1Pr7jlhcMhwjzn7b7Mq_WM(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$showDialogToReconfirmCancelingBackup$19()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$q79HXuEF3MM9dRvJngzyKbbSRBQ(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$setContentView$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qDgQfSQt7YmMildEUUSqCdRRAkA(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$showDialogToConfirmRestart$26(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$x_SiMVSiHXvr-0kAdsJ2BMpuwu4(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$checkAndUpdateCloudBackupMenu$9()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xscOXwSzBZiK2p5EzBj7ML3g-UI(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$showDialogToReconfirmCancelingBackup$17()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zeOKXXer4NkGo0JARFCu4eqJB3c(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$showDialogToInformSecureLockIsNeeded$11(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zyDJC8mOTrPV9Qp4fKbh3jMq2uI(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->lambda$setContentView$7()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsCloudBackupSupported(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mIsCloudBackupSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSingleThreadExecutor(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateCloudBackupStatusFromProvider(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->updateCloudBackupStatusFromProvider()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateCloudBackupStatusFromReceiver(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->updateCloudBackupStatusFromReceiver(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mIsTablet:Z

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mIsFold:Z

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mIsCloudBackupSupported:Z

    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mCloudBackupRetentionPeriod:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mCloudBackupIntroDescription:Ljava/lang/String;

    const-string v1, "NONE"

    iput-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mCloudBackupStatus:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mButtonExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$CloudBackupReceiver-IA;)V

    iput-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mCloudBackupReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mTimer:Ljava/util/Timer;

    return-void
.end method

.method private blacklist adjustDialogLayout(Landroid/content/res/Configuration;)V
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mIsTablet:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mIsFold:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mDialogView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mDialogView:Landroid/view/View;

    const v1, 0x10203d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    nop

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mDialogView:Landroid/view/View;

    const v3, 0x10203d6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    const v5, 0x1050295

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    const v5, 0x1050292

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v6, v4, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v5, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    const v6, 0x105028e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    const v5, 0x1050294

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    const v5, 0x1050291

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v6, v4, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v5, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    const v6, 0x105028d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist checkAndUpdateCloudBackupMenu()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda32;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private blacklist checkPendingDump()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->isDumpRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->isDumpTimeout()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda27;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda28;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private blacklist convertActionToStatusForCloudBackup(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_NOT_FINISHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_CANCELED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v0, "NONE"

    return-object v0

    :pswitch_0
    const-string v0, "BACKUP_NON_FINISHED"

    return-object v0

    :pswitch_1
    const-string v0, "BACKUP_COMPLETED"

    return-object v0

    :pswitch_2
    const-string v0, "BACKUP_RUNNING"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x15d05067 -> :sswitch_3
        0x2cc33ed3 -> :sswitch_2
        0x3432a41d -> :sswitch_1
        0x5e23d14c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist enterMaintenanceMode()Landroid/content/pm/UserInfo;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isSecureLockSet(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->checkRequiredConditions(Landroid/content/Context;Z)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x104079e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.os.usertype.full.MAINTENANCE_MODE"

    const/16 v4, 0x400

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/UserManager;->createUser(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "MaintenanceMode"

    const-string v3, "Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method private blacklist init()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mRootView:Landroid/view/View;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mWm:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->registerCloudBackupReceiver()V

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->checkAndUpdateCloudBackupMenu()V

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->prepareWaitingView()V

    return-void
.end method

.method private blacklist isDumpRunning()Z
    .locals 2

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

    iget-wide v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mDumpEndTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-string v2, "MaintenanceMode"

    const-string v3, "Dumpstate wait timed out"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private synthetic blacklist lambda$checkAndUpdateCloudBackupMenu$10()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->updateCloudBackupStatusFromProvider()V

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->checkCloudBackupSupport(Landroid/content/Context;)Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils$CloudInfo;

    move-result-object v0

    iget-boolean v1, v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils$CloudInfo;->isSupported:Z

    iput-boolean v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mIsCloudBackupSupported:Z

    iget v1, v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils$CloudInfo;->retentionPeriod:I

    iput v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mCloudBackupRetentionPeriod:I

    iget-object v1, v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils$CloudInfo;->introDescription:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mCloudBackupIntroDescription:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda16;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$checkAndUpdateCloudBackupMenu$9()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->updateCloudBackupMenuSubText()V

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->updateCloudBackupMenuVisibility()V

    return-void
.end method

.method private synthetic blacklist lambda$checkPendingDump$29()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->checkPendingDump()V

    return-void
.end method

.method private synthetic blacklist lambda$checkPendingDump$30()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isLowOnStorage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->showDialogToNotifyLowOnStorage()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mTurnOnButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$checkPendingDump$31()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->enterMaintenanceMode()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mDumpView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda25;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$setContentView$0()V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->startCloudActivity(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic blacklist lambda$setContentView$1()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const-string v1, "7083"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->sendLoggingDataToSA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$setContentView$2(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mButtonExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda12;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic blacklist lambda$setContentView$3()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const-string v1, "7074"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->sendLoggingDataToSA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$setContentView$4(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->startSmartSwitchActivity(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda22;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic blacklist lambda$setContentView$5(Ljava/lang/String;)V
    .locals 2

    const-string v0, "NOT_IN_PROGRESS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->showDialogToConfirmRestart()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->showDialogToReconfirmCancelingBackup(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mTurnOnButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$setContentView$6()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getStatusOfBackupInProgress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda26;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$setContentView$7()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const-string v1, "7066"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->sendLoggingDataToSA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$setContentView$8(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isSecureLockSet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->showDialogToInformSecureLockIsNeeded()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isLowOnStorage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->showDialogToNotifyLowOnStorage()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mTurnOnButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mButtonExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda30;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda31;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic blacklist lambda$showDialogToConfirmRestart$21(Landroid/widget/CheckedTextView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->toggle()V

    return-void
.end method

.method private synthetic blacklist lambda$showDialogToConfirmRestart$22()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isLowOnStorage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->showDialogToNotifyLowOnStorage()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mTurnOnButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$showDialogToConfirmRestart$23()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->enterMaintenanceMode()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mWaitingView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda21;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$showDialogToConfirmRestart$24(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    const-string v2, "7070"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->sendLoggingDataToSA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$showDialogToConfirmRestart$25()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const-string v1, "7071"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->sendLoggingDataToSA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$showDialogToConfirmRestart$26(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mTurnOnButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mIsTablet:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->setWaitingViewRotation()V

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->setUserConsentAboutCreatingLog(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mWaitingView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mDumpView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->triggerDump()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic blacklist lambda$showDialogToConfirmRestart$27(Landroid/widget/CheckedTextView;Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isSecureLockSet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->showDialogToInformSecureLockIsNeeded()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda17;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;Z)V

    invoke-static {p0, v1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->confirmSecureLock(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$showDialogToInformSecureLockIsNeeded$11(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->startActivityToSetSecureLock(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic blacklist lambda$showDialogToInformSecureLockIsNeeded$12(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private synthetic blacklist lambda$showDialogToNotifyLowOnStorage$13(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->startMyFilesActivity(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic blacklist lambda$showDialogToReconfirmCancelingBackup$14()V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->startCloudActivity(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic blacklist lambda$showDialogToReconfirmCancelingBackup$15()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const-string v1, "7068"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->sendLoggingDataToSA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$showDialogToReconfirmCancelingBackup$16(ZLandroid/content/DialogInterface;I)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mButtonExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->showDialogToConfirmRestart()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic blacklist lambda$showDialogToReconfirmCancelingBackup$17()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const-string v1, "7069"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->sendLoggingDataToSA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$showDialogToReconfirmCancelingBackup$18(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda29;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic blacklist lambda$showDialogToReconfirmCancelingBackup$19()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const-string v1, "7069"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->sendLoggingDataToSA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$showDialogToReconfirmCancelingBackup$20(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda14;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic blacklist lambda$triggerDump$28()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->checkPendingDump()V

    return-void
.end method

.method private blacklist prepareWaitingView()V
    .locals 9

    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    const v6, 0x20100

    const/4 v7, -0x3

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x7e8

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v8, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x10901e1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mWaitingView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mWaitingView:Landroid/view/View;

    const v4, 0x10203e5

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mWaitingView:Landroid/view/View;

    const v4, 0x10203e6

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    iget-boolean v6, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mIsTablet:Z

    if-eqz v6, :cond_0

    const v6, 0x10407b7

    goto :goto_0

    :cond_0
    const v6, 0x10407b6

    :goto_0
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const v7, 0x1050288

    invoke-static {v6, v7}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;I)F

    move-result v6

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mDumpView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mDumpView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    const v6, 0x10407b3

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    iget-boolean v6, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mIsTablet:Z

    if-eqz v6, :cond_1

    const v6, 0x10407b5

    goto :goto_1

    :cond_1
    const v6, 0x10407b4

    :goto_1
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;I)F

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-boolean v4, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mIsTablet:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    const v6, 0x105027c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mWaitingView:Landroid/view/View;

    const v7, 0x10203e4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4, v1, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v8, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mDumpView:Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4, v1, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method private blacklist registerCloudBackupReceiver()V
    .locals 7

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_NOT_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mCloudBackupReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v4, "com.samsung.android.permission.ACCESS_MAINTENANCE_MODE"

    move-object v1, p0

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method private blacklist setContentView(Landroid/content/res/Configuration;)V
    .locals 9

    iget-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    iget-boolean v3, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mIsTablet:Z

    iget-boolean v4, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mIsFold:Z

    const v6, 0x109002d

    const v7, 0x10203d4

    const v5, 0x109002c

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->configureLayout(Landroid/app/Activity;Landroid/content/res/Resources;Landroid/content/res/Configuration;ZZIII)V

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mIsTablet:Z

    if-eqz v1, :cond_1

    const v1, 0x10203da

    invoke-virtual {p0, v1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x10502a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    const v2, 0x10203dc

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    const v4, 0x104079c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x10203d5

    invoke-virtual {p0, v4}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    const v6, 0x104078a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x10203db

    invoke-virtual {p0, v6}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    const v8, 0x1040798

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v1, 0x10203cd

    invoke-virtual {p0, v1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mColudBackupMenu:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mColudBackupMenu:Landroid/view/View;

    const v2, 0x1080b1b

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mColudBackupMenu:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x10203ce

    invoke-virtual {p0, v1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const v3, 0x1050298

    invoke-static {v2, v3}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;I)F

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const v2, 0x10203cf

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mColudBackupMenuSubTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mColudBackupMenuSubTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const v6, 0x105029d

    invoke-static {v5, v6}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;I)F

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const v2, 0x10203d0

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mColudBackupMenuDivider:Landroid/view/View;

    const v2, 0x10203d1

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mExternalStorageBackupMenu:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mExternalStorageBackupMenu:Landroid/view/View;

    const v5, 0x1080b19

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mExternalStorageBackupMenu:Landroid/view/View;

    new-instance v5, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x10203d2

    invoke-virtual {p0, v2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;I)F

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const v3, 0x10203d3

    invoke-virtual {p0, v3}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->updateCloudBackupMenuSubText()V

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->updateCloudBackupMenuVisibility()V

    const v5, 0x10203dd

    invoke-virtual {p0, v5}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mTurnOnButton:Landroid/widget/Button;

    iget-boolean v5, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mIsTablet:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mTurnOnButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    const v7, 0x105027a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setWidth(I)V

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mTurnOnButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const v7, 0x1050283

    invoke-static {v6, v7}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;I)F

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v4, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mTurnOnButton:Landroid/widget/Button;

    new-instance v5, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private blacklist setWaitingViewRotation()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x9

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mViewWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    nop

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist showDialogToConfirmRestart()V
    .locals 8

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mDialogView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->adjustDialogLayout(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mDialogView:Landroid/view/View;

    const v1, 0x10203d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda10;-><init>(Landroid/widget/CheckedTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const v2, 0x1050284

    const v3, 0x3f8ccccd    # 1.1f

    invoke-static {v1, v2, v3}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;IF)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/CheckedTextView;->setTextSize(IF)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mDialogView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;Landroid/widget/CheckedTextView;)V

    const v4, 0x1040784

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    iget-object v4, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mDialogView:Landroid/view/View;

    const v5, 0x10203d9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    iget-boolean v7, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mIsTablet:Z

    if-eqz v7, :cond_0

    const v7, 0x1040790

    goto :goto_0

    :cond_0
    const v7, 0x104078e

    :goto_0
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    iget-boolean v7, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mIsTablet:Z

    if-eqz v7, :cond_1

    const v7, 0x1040792

    goto :goto_1

    :cond_1
    const v7, 0x1040791

    :goto_1
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const v7, 0x1050288

    invoke-static {v6, v7}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;I)F

    move-result v6

    invoke-virtual {v4, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private blacklist showDialogToInformSecureLockIsNeeded()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x104078f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    const v2, 0x104078c

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda9;-><init>()V

    const v2, 0x1040782

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private blacklist showDialogToNotifyLowOnStorage()V
    .locals 4

    const-string v0, "MaintenanceMode"

    const-string v1, "Low on storage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040796

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mIsTablet:Z

    if-eqz v1, :cond_0

    const v1, 0x1040795

    goto :goto_0

    :cond_0
    const v1, 0x1040794

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    const v2, 0x1040793

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private blacklist showDialogToReconfirmCancelingBackup(Ljava/lang/String;)V
    .locals 7

    const v0, 0x10407ad

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "BACKUP_RUNNING"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "BACKUP_NON_FINISHED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "RESTORE_RUNNING"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const v0, 0x10407b0

    const/4 v1, 0x1

    goto :goto_2

    :pswitch_1
    const v0, 0x10407ae

    const/4 v1, 0x1

    goto :goto_2

    :pswitch_2
    const v0, 0x10407af

    const/4 v1, 0x1

    nop

    :cond_1
    :goto_2
    move v2, v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda18;

    invoke-direct {v4, p0, v2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;Z)V

    const v5, 0x1040783

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda19;

    invoke-direct {v4, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda19;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    const v5, 0x1040782

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda20;

    invoke-direct {v4, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda20;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x50

    invoke-virtual {v5, v6}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

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

    const-string v0, "bugreport.mode"

    const-string v1, "light_mode"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ctl.start"

    const-string v1, "bugreportm"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mDumpEndTime:J

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda24;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private blacklist updateCloudBackupMenuSubText()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mColudBackupMenuSubTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mCloudBackupStatus:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "BACKUP_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "BACKUP_RUNNING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "BACKUP_NON_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mCloudBackupIntroDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mColudBackupMenuSubTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mCloudBackupIntroDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mColudBackupMenuSubTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x104077d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mColudBackupMenuSubTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x104077e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mColudBackupMenuSubTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x104077f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mColudBackupMenuSubTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    iget v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mCloudBackupRetentionPeriod:I

    iget v3, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mCloudBackupRetentionPeriod:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x1150009

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2c16aedf -> :sswitch_2
        -0xd7f2fde -> :sswitch_1
        0x4ed9fee -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist updateCloudBackupMenuVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mColudBackupMenu:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mColudBackupMenuDivider:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mExternalStorageBackupMenu:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mIsCloudBackupSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mColudBackupMenu:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mColudBackupMenuDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mExternalStorageBackupMenu:Landroid/view/View;

    const v1, 0x1080b1a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mColudBackupMenu:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mColudBackupMenuDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mExternalStorageBackupMenu:Landroid/view/View;

    const v1, 0x1080b19

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist updateCloudBackupStatusFromProvider()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getCloudBackupStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mCloudBackupStatus:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda23;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist updateCloudBackupStatusFromReceiver(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->convertActionToStatusForCloudBackup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mCloudBackupStatus:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$$ExternalSyntheticLambda23;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->setContentView(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->adjustDialogLayout(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->checkRequiredConditions(Landroid/content/Context;Z)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->finish()V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mIsTablet:Z

    invoke-static {}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isFold()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mIsFold:Z

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->setContentView(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->init()V

    return-void
.end method

.method protected whitelist onDestroy()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mCloudBackupReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mButtonExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mLoggingExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public whitelist onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected whitelist onPause()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mCloudBackupTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mCloudBackupTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected whitelist onResume()V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->checkRequiredConditions(Landroid/content/Context;Z)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->finish()V

    const/4 v0, 0x1

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->checkAndUpdateCloudBackupMenu()V

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity$1;-><init>(Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;)V

    iput-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mCloudBackupTimerTask:Ljava/util/TimerTask;

    iget-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mTimer:Ljava/util/Timer;

    iget-object v3, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;->mCloudBackupTimerTask:Ljava/util/TimerTask;

    const-wide/16 v4, 0x7530

    const-wide/16 v6, 0x7530

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
