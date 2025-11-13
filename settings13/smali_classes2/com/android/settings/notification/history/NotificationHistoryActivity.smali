.class public Lcom/android/settings/notification/history/NotificationHistoryActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "NotificationHistoryActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/notification/NotificationHistoryWarningFragment$DialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;
    }
.end annotation


# static fields
.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field private static TAG:Ljava/lang/String; = "NotifHistory"


# instance fields
.field private mCountdownFuture:Ljava/util/concurrent/Future;

.field private mCountdownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mDismissView:Landroid/view/ViewGroup;

.field private mHistoryEmpty:Landroid/view/ViewGroup;

.field private mHistoryLoader:Lcom/android/settings/notification/history/HistoryLoader;

.field private mHistoryOff:Landroid/view/ViewGroup;

.field private mHistoryOn:Landroid/view/ViewGroup;

.field private final mListener:Landroid/service/notification/NotificationListenerService;

.field private mNm:Landroid/app/INotificationManager;

.field private mOnHistoryLoaderListener:Lcom/android/settings/notification/history/HistoryLoader$OnHistoryLoaderListener;

.field private final mOnSwitchBarClickListener:Landroid/view/View$OnClickListener;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSnoozeView:Landroid/view/ViewGroup;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTodayAppCount:I

.field private mTodayView:Landroid/view/ViewGroup;

.field private mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$-qAmMZg5kUoyyaOUBNGHXaB6z0o(Lcom/android/settings/notification/history/NotificationHistoryActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->lambda$new$2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JYasqwEs3fdH0JKHE5vdU6Sbi78(Lcom/android/settings/notification/history/NotificationHistoryActivity;Landroid/widget/TextView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->lambda$new$0(Landroid/widget/TextView;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NSJY3Io-UR_pFKS8SPmL-aXVaBg(Lcom/android/settings/notification/history/NotificationHistoryActivity;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->lambda$onCreate$4(Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vhqs4T7I7Qh-mZwxjqaNjsDe2hQ(Lcom/android/settings/notification/history/NotificationHistoryActivity;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->lambda$onCreate$3(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dtUWuYte04dLpChlvstTSfu0bys(Lcom/android/settings/notification/history/NotificationHistoryActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->lambda$onResume$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$rHieEwryQQjUM6fYpH_J1SsIOrc(Lcom/android/settings/notification/history/NotificationHistoryActivity;Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;Landroid/widget/ImageView;Landroid/view/animation/Animation;Lcom/android/settings/notification/history/NotificationHistoryAdapter;Landroid/view/animation/Animation;Landroid/view/View;Landroid/view/View;Lcom/android/settings/notification/history/NotificationHistoryPackage;ILandroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->lambda$new$1(Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;Landroid/widget/ImageView;Landroid/view/animation/Animation;Lcom/android/settings/notification/history/NotificationHistoryAdapter;Landroid/view/animation/Animation;Landroid/view/View;Landroid/view/View;Lcom/android/settings/notification/history/NotificationHistoryPackage;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vUh73OETGecwO2XQSSC52JoRYK4(Lcom/android/settings/notification/history/NotificationHistoryActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->lambda$onResume$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$vidhkTDFyLkvt5zXJEtaRPU05Sk(Lcom/android/settings/notification/history/NotificationHistoryActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->lambda$new$7(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCountdownLatch(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mCountdownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDismissView(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mDismissView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNm(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Landroid/app/INotificationManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mNm:Landroid/app/INotificationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPm(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSnoozeView(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSnoozeView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUiEventLogger(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUm(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Landroid/os/UserManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUm:Landroid/os/UserManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 469
    new-instance v0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;

    invoke-direct {v0}, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 116
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 163
    new-instance v0, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;)V

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mOnHistoryLoaderListener:Lcom/android/settings/notification/history/HistoryLoader$OnHistoryLoaderListener;

    .line 508
    new-instance v0, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;)V

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mOnSwitchBarClickListener:Landroid/view/View$OnClickListener;

    .line 562
    new-instance v0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;)V

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mListener:Landroid/service/notification/NotificationListenerService;

    return-void
.end method

.method private bindSwitch()V
    .locals 4

    .line 433
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    .line 435
    sget v1, Lcom/android/settings/R$string;->switch_on_text:I

    sget v2, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    .line 437
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    sget v1, Lcom/android/settings/R$id;->switch_background:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 442
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mOnSwitchBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :catch_0
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "notification_history_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 449
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->toggleViews(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/widget/TextView;Landroid/view/View;I)V
    .locals 6

    .line 223
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$plurals;->notification_history_count:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 225
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 223
    invoke-virtual {v0, v1, p3, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p3, :cond_0

    const/16 p1, 0x8

    .line 227
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget p2, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayAppCount:I

    sub-int/2addr p2, v2

    iput p2, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayAppCount:I

    if-gtz p2, :cond_0

    .line 231
    sget p2, Lcom/android/settings/R$id;->today_list:I

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;Landroid/widget/ImageView;Landroid/view/animation/Animation;Lcom/android/settings/notification/history/NotificationHistoryAdapter;Landroid/view/animation/Animation;Landroid/view/View;Landroid/view/View;Lcom/android/settings/notification/history/NotificationHistoryPackage;ILandroid/view/View;)V
    .locals 0

    .line 245
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 246
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 247
    invoke-virtual {p4}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->collapseWithAnimation()V

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 250
    invoke-virtual {p4}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->expandWithAnimation()V

    .line 253
    :goto_0
    invoke-virtual {p7}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 254
    sget p1, Lcom/android/settings/R$string;->condition_expand_hide:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 255
    :cond_1
    sget p1, Lcom/android/settings/R$string;->condition_expand_show:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 253
    :goto_1
    invoke-virtual {p6, p1}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    const p1, 0x8000

    .line 256
    invoke-virtual {p6, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 257
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p7}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 258
    sget-object p1, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_PACKAGE_HISTORY_OPEN:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    goto :goto_2

    .line 259
    :cond_2
    sget-object p1, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_PACKAGE_HISTORY_CLOSE:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    :goto_2
    iget p2, p8, Lcom/android/settings/notification/history/NotificationHistoryPackage;->uid:I

    iget-object p3, p8, Lcom/android/settings/notification/history/NotificationHistoryPackage;->pkgName:Ljava/lang/String;

    .line 257
    invoke-interface {p0, p1, p2, p3, p9}, Lcom/android/internal/logging/UiEventLogger;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/util/List;)V
    .locals 19

    move-object/from16 v11, p0

    .line 164
    sget v0, Lcom/android/settings/R$id;->today_list:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 165
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v12, 0x8

    if-eqz v1, :cond_0

    move v1, v12

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 164
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, v11, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mCountdownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 167
    iget-object v0, v11, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/settings/R$id;->apps:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 188
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v11, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayAppCount:I

    .line 189
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_4

    move-object/from16 v10, p1

    .line 190
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/settings/notification/history/NotificationHistoryPackage;

    .line 191
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->notification_history_app_layout:I

    const/4 v2, 0x0

    .line 192
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 194
    sget v0, Lcom/android/settings/R$id;->notification_list:I

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 195
    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 196
    sget v1, Lcom/android/settings/R$id;->app_header:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 197
    sget v1, Lcom/android/settings/R$id;->expand:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    .line 198
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 199
    sget v1, Lcom/android/settings/R$string;->condition_expand_hide:I

    invoke-virtual {v11, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 200
    :cond_1
    sget v1, Lcom/android/settings/R$string;->condition_expand_show:I

    invoke-virtual {v11, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    :goto_2
    invoke-virtual {v6, v1}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 203
    sget v1, Lcom/android/settings/R$id;->label:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 204
    iget-object v2, v9, Lcom/android/settings/notification/history/NotificationHistoryPackage;->label:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    iget-object v2, v9, Lcom/android/settings/notification/history/NotificationHistoryPackage;->pkgName:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v2, v11, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUm:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    iget v4, v9, Lcom/android/settings/notification/history/NotificationHistoryPackage;->uid:I

    .line 206
    invoke-static {v4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 205
    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 207
    sget v1, Lcom/android/settings/R$id;->icon:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 208
    iget-object v2, v9, Lcom/android/settings/notification/history/NotificationHistoryPackage;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    sget v1, Lcom/android/settings/R$id;->count:I

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 211
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$plurals;->notification_history_count:I

    iget-object v4, v9, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    .line 212
    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v4

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v13, v9, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    invoke-virtual {v13}, Ljava/util/TreeSet;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v17, 0x0

    aput-object v13, v12, v17

    .line 211
    invoke-virtual {v2, v3, v4, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    sget v2, Lcom/android/settings/R$id;->history_app_divider:I

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v3, v14, -0x1

    const/16 v12, 0x8

    if-ne v15, v3, :cond_3

    .line 216
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 220
    :cond_3
    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;

    .line 221
    new-instance v13, Lcom/android/settings/notification/history/NotificationHistoryAdapter;

    iget-object v0, v11, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mNm:Landroid/app/INotificationManager;

    new-instance v3, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, v11, v1, v8}, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;Landroid/widget/TextView;Landroid/view/View;)V

    iget-object v1, v11, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-direct {v13, v0, v2, v3, v1}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;-><init>(Landroid/app/INotificationManager;Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;Lcom/android/settings/notification/history/NotificationHistoryAdapter$OnItemDeletedListener;Lcom/android/internal/logging/UiEventLogger;)V

    .line 236
    invoke-virtual {v2, v13}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 237
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/history/NotificationHistoryAdapter;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v9, Lcom/android/settings/notification/history/NotificationHistoryPackage;->notifications:Ljava/util/TreeSet;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->onRebuildComplete(Ljava/util/List;)V

    .line 240
    sget v0, Lcom/android/settings/R$anim;->sec_arrow_expand_anim:I

    invoke-static {v11, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v16

    .line 241
    sget v0, Lcom/android/settings/R$anim;->sec_arrow_collapse_anim:I

    invoke-static {v11, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 243
    new-instance v3, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda7;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v12, v3

    move-object v3, v5

    move/from16 v18, v14

    move-object v14, v5

    move-object v5, v13

    move-object v13, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v7

    move-object v7, v13

    move-object v13, v8

    move-object/from16 v8, v16

    move v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;Lcom/android/settings/notification/history/NotificationHistoryRecyclerView;Landroid/widget/ImageView;Landroid/view/animation/Animation;Lcom/android/settings/notification/history/NotificationHistoryAdapter;Landroid/view/animation/Animation;Landroid/view/View;Landroid/view/View;Lcom/android/settings/notification/history/NotificationHistoryPackage;I)V

    invoke-virtual {v14, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v0, v11, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v18

    const/16 v12, 0x8

    goto/16 :goto_1

    :cond_4
    return-void
.end method

.method private synthetic lambda$new$7(Landroid/view/View;)V
    .locals 6

    const-string/jumbo p1, "notification_history_enabled"

    const/4 v0, 0x0

    .line 512
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    const/16 v4, 0x8

    if-eqz v3, :cond_1

    .line 517
    iget-object v5, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 518
    invoke-direct {p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->showWarningDialog()V

    goto :goto_4

    :cond_1
    xor-int/lit8 v5, v3, 0x1

    if-eq v1, v5, :cond_3

    .line 522
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 524
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    if-nez v3, :cond_2

    sget-object v1, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_ON:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    goto :goto_2

    .line 525
    :cond_2
    sget-object v1, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_OFF:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    .line 524
    :goto_2
    invoke-interface {p1, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 526
    sget-object p1, Lcom/android/settings/notification/history/NotificationHistoryActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSwitchChange history to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v5, v3, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_3
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOn:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez v3, :cond_4

    .line 531
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 532
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOff:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 534
    :cond_4
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOff:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 535
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 537
    :goto_3
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 538
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    xor-int/lit8 p1, v3, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :goto_4
    return-void
.end method

.method private synthetic lambda$onCreate$3(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$onCreate$4(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 4

    .line 293
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 294
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 295
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 296
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 297
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$dimen;->toolbar_height:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v2, v0

    .line 299
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 302
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr v2, p1

    int-to-double p1, v2

    const-wide v2, 0x3fde147ae147ae14L    # 0.47

    mul-double/2addr p1, v2

    double-to-int p1, p1

    .line 304
    :goto_0
    iget p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p2, p1, :cond_1

    .line 305
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 306
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    new-instance p2, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, v1}, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$onResume$5()V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$id;->today_list:I

    .line 396
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSnoozeView:Landroid/view/ViewGroup;

    .line 397
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mDismissView:Landroid/view/ViewGroup;

    .line 398
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOn:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 400
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onResume$6()V
    .locals 4

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mCountdownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 392
    sget-object v1, Lcom/android/settings/notification/history/NotificationHistoryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "timed out waiting for loading"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    :goto_0
    new-instance v0, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private measureContentFrame()V
    .locals 6

    .line 326
    invoke-static {p0}, Lcom/android/settings/Utils;->getContentFrameWidthRatio(Landroid/content/Context;)F

    move-result v0

    .line 327
    new-instance v1, Ljava/math/BigDecimal;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%.3f"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 329
    new-instance v2, Ljava/math/BigDecimal;

    const-string v3, "1.0"

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 330
    new-instance v3, Ljava/math/BigDecimal;

    const-string v4, "2.0"

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 332
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    .line 334
    sget v2, Lcom/android/settings/R$id;->content_start_pane:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 335
    sget v3, Lcom/android/settings/R$id;->content_end_pane:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 336
    sget v4, Lcom/android/settings/R$id;->content_frame:I

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 343
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 344
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 345
    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 346
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 351
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 352
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    sget-object p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "measureContentFrame : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private showWarningDialog()V
    .locals 2

    .line 543
    invoke-static {}, Lcom/samsung/android/settings/notification/NotificationHistoryWarningFragment;->newInstance()Lcom/samsung/android/settings/notification/NotificationHistoryWarningFragment;

    move-result-object v0

    .line 544
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string/jumbo v1, "warningDialog"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private toggleViews(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 455
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOff:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 456
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOn:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 458
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOn:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 459
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOff:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 460
    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 462
    :goto_0
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 359
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 360
    invoke-direct {p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->measureContentFrame()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 268
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 269
    sget p1, Lcom/android/settings/R$string;->notification_history:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 271
    sget p1, Lcom/android/settings/R$layout;->sec_notification_history:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 272
    sget p1, Lcom/android/settings/R$id;->apps:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayView:Landroid/view/ViewGroup;

    .line 273
    sget p1, Lcom/android/settings/R$id;->snoozed_list:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSnoozeView:Landroid/view/ViewGroup;

    .line 274
    sget p1, Lcom/android/settings/R$id;->recently_dismissed_list:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mDismissView:Landroid/view/ViewGroup;

    .line 275
    sget p1, Lcom/android/settings/R$id;->history_off:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOff:Landroid/view/ViewGroup;

    .line 276
    sget p1, Lcom/android/settings/R$id;->history_on:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOn:Landroid/view/ViewGroup;

    .line 277
    sget p1, Lcom/android/settings/R$id;->history_on_empty:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    .line 278
    sget p1, Lcom/android/settings/R$id;->switch_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SwitchBar;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 279
    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->getDivider()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 282
    sget p1, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 283
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 284
    sget p1, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x0

    .line 285
    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    .line 286
    sget v0, Lcom/android/settings/R$id;->collapsing_app_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 290
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 292
    new-instance v0, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 314
    invoke-direct {p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->measureContentFrame()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mCountdownFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 427
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 429
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 418
    sget-object v1, Lcom/android/settings/notification/history/NotificationHistoryActivity;->TAG:Ljava/lang/String;

    const-string v2, "Cannot unregister listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_CLOSE:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 421
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onPositiveClick()V
    .locals 3

    .line 549
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_history_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 551
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_OFF:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 552
    sget-object v0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSwitchChange history to false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOn:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOff:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 558
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 366
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 368
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 369
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUm:Landroid/os/UserManager;

    .line 371
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mCountdownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 373
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 374
    new-instance v0, Lcom/android/settings/notification/history/HistoryLoader;

    new-instance v1, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v1}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/notification/history/HistoryLoader;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryLoader:Lcom/android/settings/notification/history/HistoryLoader;

    .line 375
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mOnHistoryLoaderListener:Lcom/android/settings/notification/history/HistoryLoader$OnHistoryLoaderListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/history/HistoryLoader;->load(Lcom/android/settings/notification/history/HistoryLoader$OnHistoryLoaderListener;)V

    const-string/jumbo v0, "notification"

    .line 378
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 377
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mNm:Landroid/app/INotificationManager;

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mListener:Landroid/service/notification/NotificationListenerService;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 381
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 380
    invoke-virtual {v0, p0, v1, v2}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 383
    sget-object v1, Lcom/android/settings/notification/history/NotificationHistoryActivity;->TAG:Ljava/lang/String;

    const-string v2, "Cannot register listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->bindSwitch()V

    .line 388
    new-instance v0, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mCountdownFuture:Ljava/util/concurrent/Future;

    .line 405
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_OPEN:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    const p0, 0x8cc9

    .line 408
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "NSTE0402"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 0

    .line 634
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 635
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onSupportNavigateUp()Z

    move-result p0

    return p0
.end method
