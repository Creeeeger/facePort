.class public Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "SmartForwardingActivity.java"


# instance fields
.field final service:Lcom/google/common/util/concurrent/ListeningExecutorService;


# direct methods
.method public static synthetic $r8$lambda$EaQmLA9DNfB9g6mk4hj-WGYzGIY(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;->lambda$onError$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    .line 52
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;->service:Lcom/google/common/util/concurrent/ListeningExecutorService;

    return-void
.end method

.method private static synthetic lambda$onError$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 165
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public disableSmartForwarding()V
    .locals 6

    .line 129
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 130
    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 132
    invoke-static {p0, v1, v0}, Lcom/android/settings/sim/smartForwarding/SmartForwardingUtils;->getAllSlotCallWaitingStatus(Landroid/content/Context;Landroid/telephony/SubscriptionManager;Landroid/telephony/TelephonyManager;)[Z

    move-result-object v2

    .line 133
    invoke-static {p0, v1, v0}, Lcom/android/settings/sim/smartForwarding/SmartForwardingUtils;->getAllSlotCallForwardingStatus(Landroid/content/Context;Landroid/telephony/SubscriptionManager;Landroid/telephony/TelephonyManager;)[Landroid/telephony/CallForwardingInfo;

    move-result-object v3

    .line 136
    iget-object v4, p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;->service:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v5, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;

    invoke-direct {v5, v0, v2, v3}, Lcom/android/settings/sim/smartForwarding/DisableSmartForwardingTask;-><init>(Landroid/telephony/TelephonyManager;[Z[Landroid/telephony/CallForwardingInfo;)V

    invoke-interface {v4, v5}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    .line 138
    new-instance v3, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$2;-><init>(Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;Landroid/telephony/SubscriptionManager;Landroid/telephony/TelephonyManager;)V

    .line 148
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 138
    invoke-static {v2, v3, p0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public enableSmartForwarding([Ljava/lang/String;)V
    .locals 3

    .line 80
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 81
    sget v1, Lcom/android/settings/R$string;->smart_forwarding_ongoing_title:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 83
    sget v1, Lcom/android/settings/R$string;->smart_forwarding_ongoing_text:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 85
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 88
    iget-object v1, p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;->service:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v2, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 89
    invoke-interface {v1, v2}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 90
    new-instance v1, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$1;-><init>(Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;Landroid/app/ProgressDialog;)V

    .line 125
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 90
    invoke-static {p1, v1, p0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget p1, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Toolbar;

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, v0}, Landroid/widget/Toolbar;->setVisibility(I)V

    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    sget p1, Lcom/android/settings/R$id;->content_frame:I

    new-instance v0, Lcom/android/settings/sim/smartForwarding/SmartForwardingFragment;

    invoke-direct {v0}, Lcom/android/settings/sim/smartForwarding/SmartForwardingFragment;-><init>()V

    .line 69
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 75
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onError(Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;)V
    .locals 1

    .line 153
    invoke-virtual {p1}, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;->getReason()Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    move-result-object p1

    sget-object v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;->SIM_NOT_ACTIVE:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult$FailedReason;

    if-ne p1, v0, :cond_0

    .line 154
    sget p1, Lcom/android/settings/R$string;->smart_forwarding_failed_not_activated_text:I

    goto :goto_0

    .line 156
    :cond_0
    sget p1, Lcom/android/settings/R$string;->smart_forwarding_failed_text:I

    .line 160
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/android/settings/R$string;->smart_forwarding_failed_title:I

    .line 161
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 162
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->smart_forwarding_missing_alert_dialog_text:I

    new-instance v0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$$ExternalSyntheticLambda0;-><init>()V

    .line 163
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 166
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 167
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
