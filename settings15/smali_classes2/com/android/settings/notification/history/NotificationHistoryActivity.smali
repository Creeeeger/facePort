.class public Lcom/android/settings/notification/history/NotificationHistoryActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

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


# instance fields
.field public mCountdownFuture:Lcom/google/common/util/concurrent/ListenableFuture;

.field public mCountdownLatch:Ljava/util/concurrent/CountDownLatch;

.field public mDismissView:Landroid/view/ViewGroup;

.field public mHistoryEmpty:Landroid/view/ViewGroup;

.field public mHistoryOff:Landroid/view/ViewGroup;

.field public mHistoryOn:Landroid/view/ViewGroup;

.field public final mListener:Lcom/android/settings/notification/history/NotificationHistoryActivity$1;

.field public mLoadingContainer:Landroid/view/View;

.field public mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

.field public mNm:Landroid/app/INotificationManager;

.field public final mOnHistoryLoaderListener:Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda0;

.field public final mOnSwitchBarClickListener:Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda1;

.field public mPm:Landroid/content/pm/PackageManager;

.field public mSnoozeView:Landroid/view/ViewGroup;

.field public mSwitchBar:Lcom/samsung/android/settings/widget/SecMainSwitchBar;

.field public mTodayAppCount:I

.field public mTodayView:Landroid/view/ViewGroup;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance v0, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;)V

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mOnHistoryLoaderListener:Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;)V

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mOnSwitchBarClickListener:Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity$1;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;)V

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mListener:Lcom/android/settings/notification/history/NotificationHistoryActivity$1;

    return-void
.end method


# virtual methods
.method public final measureContentFrame()V
    .locals 6

    invoke-static {p0}, Lcom/android/settings/Utils;->getContentFrameWidthRatio(Landroid/content/Context;)F

    move-result v0

    new-instance v1, Ljava/math/BigDecimal;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%.3f"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/math/BigDecimal;

    const-string v3, "1.0"

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/math/BigDecimal;

    const-string v4, "2.0"

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    const v2, 0x7f0a0421

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0a041b

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f0a041c

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "measureContentFrame : "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NotifHistory"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->measureContentFrame()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f141aba

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f0d0925

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0a012a

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayView:Landroid/view/ViewGroup;

    const p1, 0x7f0a0e9b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSnoozeView:Landroid/view/ViewGroup;

    const p1, 0x7f0a0c4d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mDismissView:Landroid/view/ViewGroup;

    const p1, 0x7f0a0770

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOff:Landroid/view/ViewGroup;

    const p1, 0x7f0a0773

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOn:Landroid/view/ViewGroup;

    const p1, 0x7f0a0774

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    const p1, 0x7f0a0f99

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecMainSwitchBar;

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/samsung/android/settings/widget/SecMainSwitchBar;

    const p1, 0x7f0a08de

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mLoadingContainer:Landroid/view/View;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060738

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    new-instance p1, Lcom/android/settings/widget/LoadingViewController;

    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mLoadingContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOn:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-direct {p1, v1, v3, v4}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    const p1, 0x7f0a0d17

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    const p1, 0x7f0a0068

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    const p1, 0x7f0a0102

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    const v0, 0x7f0a038f

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    new-instance v0, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->measureContentFrame()V

    return-void
.end method

.method public final onPause()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mListener:Lcom/android/settings/notification/history/NotificationHistoryActivity$1;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NotifHistory"

    const-string v2, "Cannot unregister listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mCountdownFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_CLOSE:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    check-cast v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public final onPositiveClick()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_history_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_OFF:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    check-cast v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    const-string v0, "NotifHistory"

    const-string v1, "onSwitchChange history to false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mLoadingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOn:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOff:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/samsung/android/settings/widget/SecMainSwitchBar;

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/SeslSwitchBar;->setChecked(Z)V

    return-void
.end method

.method public final onResume()V
    .locals 5

    const-string v0, "NotifHistory"

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mPm:Landroid/content/pm/PackageManager;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUm:Landroid/os/UserManager;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mCountdownLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v1, Lcom/android/settings/notification/history/HistoryLoader;

    new-instance v2, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v2}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/notification/history/HistoryLoader;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/content/pm/PackageManager;)V

    new-instance v2, Lcom/android/settings/notification/history/HistoryLoader$$ExternalSyntheticLambda0;

    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mOnHistoryLoaderListener:Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v3}, Lcom/android/settings/notification/history/HistoryLoader$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/history/HistoryLoader;Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda0;)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    const-string v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mNm:Landroid/app/INotificationManager;

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mListener:Lcom/android/settings/notification/history/NotificationHistoryActivity$1;

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, p0, v2, v3}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Cannot register listener"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/samsung/android/settings/widget/SecMainSwitchBar;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const v3, 0x7f142e1f

    const v4, 0x7f142e1e

    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/widget/SeslSwitchBar;->setSwitchBarText(II)V

    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/samsung/android/settings/widget/SecMainSwitchBar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    :try_start_1
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/samsung/android/settings/widget/SecMainSwitchBar;

    const v3, 0x7f0a0e08

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mOnSwitchBarClickListener:Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/samsung/android/settings/widget/SecMainSwitchBar;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "notification_history_enabled"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    goto :goto_2

    :cond_0
    move v4, v2

    :goto_2
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/SeslSwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/samsung/android/settings/widget/SecMainSwitchBar;

    iget-object v0, v0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOff:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOn:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOn:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOff:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mTodayView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :goto_3
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryEmpty:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    new-instance v0, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/history/NotificationHistoryActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mCountdownFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mSwitchBar:Lcom/samsung/android/settings/widget/SecMainSwitchBar;

    iget-object v0, v0, Landroidx/appcompat/widget/SeslSwitchBar;->mSwitch:Landroidx/appcompat/widget/SeslToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mHistoryOn:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {v0, v2, v2, v2}, Lcom/android/settings/widget/LoadingViewController;->handleLoadingContainer(ZZZ)V

    :cond_3
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;->NOTIFICATION_HISTORY_OPEN:Lcom/android/settings/notification/history/NotificationHistoryActivity$NotificationHistoryEvent;

    check-cast p0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    const p0, 0x8cca

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "NSTE0402"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSupportNavigateUp()Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onSupportNavigateUp()Z

    move-result p0

    return p0
.end method
