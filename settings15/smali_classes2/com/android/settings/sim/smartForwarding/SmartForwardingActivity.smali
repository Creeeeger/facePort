.class public Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public final service:Lcom/google/common/util/concurrent/ListeningExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;->service:Lcom/google/common/util/concurrent/ListeningExecutorService;

    return-void
.end method


# virtual methods
.method public final enableSmartForwarding([Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f142ca7

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const v1, 0x7f142ca6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v1, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;->service:Lcom/google/common/util/concurrent/ListeningExecutorService;

    check-cast p1, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;

    invoke-virtual {p1, v1}, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v1, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity$1;-><init>(Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance v0, Lcom/google/common/util/concurrent/Futures$CallbackListener;

    invoke-direct {v0, p1, v1}, Lcom/google/common/util/concurrent/Futures$CallbackListener;-><init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/FutureCallback;)V

    invoke-interface {p1, v0, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/android/settings/network/SubscriptionUtil;->REGEX_DISPLAY_NAME_SUFFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05004c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/settings/sim/smartForwarding/SmartForwardingActivity;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Not support on device without SIM."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0a0068

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Toolbar;->setVisibility(I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    invoke-static {p0, p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling$$ExternalSyntheticOutline0;->m(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/FragmentManagerImpl;)Landroidx/fragment/app/BackStackRecord;

    move-result-object p0

    new-instance p1, Lcom/android/settings/sim/smartForwarding/SmartForwardingFragment;

    invoke-direct {p1}, Lcom/android/settings/sim/smartForwarding/SmartForwardingFragment;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7f0a041c

    invoke-virtual {p0, v2, p1, v1}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    return-void
.end method
