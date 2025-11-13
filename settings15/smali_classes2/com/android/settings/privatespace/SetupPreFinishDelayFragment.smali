.class public Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sHandler:Landroid/os/Handler;


# instance fields
.field public mActionProfileInaccessible:Z

.field public mActionProfileUnavailable:Z

.field public final mBroadcastReceiver:Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$1;

.field public final mRunnable:Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    new-instance v0, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$1;-><init>(Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;)V

    iput-object v0, p0, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;->mBroadcastReceiver:Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$1;

    new-instance v0, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;)V

    iput-object v0, p0, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;->mRunnable:Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x819

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0d055b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    new-instance p2, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$2;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    if-nez p3, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->getInstance(Landroid/content/Context;)Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->setPrivateSpaceAutoLockSetting(I)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->isPrivateProfileRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "PrivateSpaceMaintainer"

    const-string p3, "Calling requestQuietModeEnabled to enableQuietMode"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserManager:Landroid/os/UserManager;

    iget-object p3, p0, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p2, v0, p3}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    goto :goto_1

    :goto_0
    monitor-exit p0

    throw p1

    :cond_1
    :goto_1
    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    sget-object v0, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;->mRunnable:Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;->mBroadcastReceiver:Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$1;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    const-string v0, "android.intent.action.PROFILE_UNAVAILABLE"

    const-string v1, "android.intent.action.PROFILE_INACCESSIBLE"

    invoke-static {v0, v1}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;->mBroadcastReceiver:Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$1;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;->sHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;->mRunnable:Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$$ExternalSyntheticLambda0;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
